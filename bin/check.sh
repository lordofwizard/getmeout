#!/usr/bin/env bash
# Verifies every tailored resume in output/ has a PDF, fits the page limit, and is logged.
# Linux/macOS port of bin/check.ps1, which is kept for Windows.
# Used by the agent (last pipeline step) and by the Claude Code Stop hook.
# Exit 0 = ok, exit 2 = problems (listed on stderr; Claude feeds them back to the agent).

set -uo pipefail   # not -e: control flow here is exit-code driven, not error-driven

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname -- "$SCRIPT_DIR")"

# Claude Stop hook sends JSON on stdin; bail if we're already inside a hook retry.
if [[ ! -t 0 ]]; then
  raw="$(timeout 2 cat 2>/dev/null || true)"
  [[ "$raw" =~ \"stop_hook_active\"[[:space:]]*:[[:space:]]*true ]] && exit 0
fi

# applications.csv is UTF-8 with BOM and CRLF: strip both before matching.
# Rows written on Windows may hold output\<slug>.pdf, so the match accepts either separator.
csv="$ROOT/applications.csv"
logged=""
if [[ -f "$csv" ]]; then
  logged="$(sed '1s/^\xEF\xBB\xBF//' "$csv" | tr -d '\r')"
fi

problems=()
shopt -s nullglob
for typ in "$ROOT"/output/*.typ; do
  slug="$(basename -- "$typ" .typ)"
  if [[ "$slug" == "resume-generic" ]]; then continue; fi
  pdf="${typ%.typ}.pdf"
  if [[ ! -f "$pdf" ]]; then
    problems+=("$slug : no PDF, run: typst compile \"output/$slug.typ\"")
    continue
  fi
  if [[ "$pdf" -ot "$typ" ]]; then
    problems+=("$slug : PDF older than .typ, recompile")
  fi
  pages=""
  if command -v pdfinfo >/dev/null 2>&1; then
    pages="$(pdfinfo -- "$pdf" 2>/dev/null | awk '/^Pages:/{print $2; exit}')"
  fi
  if [[ -z "${pages:-}" ]]; then
    # regex fallback, mirrors check.ps1; fine for uncompressed typst output
    pages="$(grep -a -o -E '/Type[[:space:]]*/Page[^s]' -- "$pdf" | wc -l | tr -d ' ')"
  fi
  if (( ${pages:-0} > 2 )); then
    problems+=("$slug : $pages pages, cut bullets")
  fi
  if ! grep -qiE "(^|,)\"?output[\\\\/]${slug}\.pdf\"?(,|$)" <<<"$logged"; then
    problems+=("$slug : no row in applications.csv with resume=output/$slug.pdf")
  fi
done

if (( ${#problems[@]} > 0 )); then
  { echo "Resume check failed:"; printf ' - %s\n' "${problems[@]}"; } >&2
  exit 2
fi
echo "Resume check passed."
exit 0
