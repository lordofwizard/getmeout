# Verifies every tailored resume in output\ has a PDF, fits the page limit, and is logged.
# Used by the agent (last pipeline step) and by the Claude Code Stop hook.
# Exit 0 = ok, exit 2 = problems (listed on stderr; Claude feeds them back to the agent).

$root = Split-Path -Parent $PSScriptRoot

# Claude Stop hook sends JSON on stdin; bail if we're already inside a hook retry.
if ([Console]::IsInputRedirected) {
    $raw = [Console]::In.ReadToEnd()
    if ($raw -match '"stop_hook_active"\s*:\s*true') { exit 0 }
}

$csvPath = Join-Path $root 'applications.csv'
$logged = @()
if (Test-Path $csvPath) { $logged = @(Import-Csv $csvPath | ForEach-Object { $_.resume }) }

$problems = @()
foreach ($typ in Get-ChildItem (Join-Path $root 'output') -Filter *.typ -ErrorAction SilentlyContinue) {
    $slug = $typ.BaseName
    if ($slug -eq 'resume-generic') { continue }
    $pdf = [IO.Path]::ChangeExtension($typ.FullName, '.pdf')
    if (-not (Test-Path $pdf)) { $problems += "$slug : no PDF, run .\bin\typst.exe compile `"output\$slug.typ`""; continue }
    if ((Get-Item $pdf).LastWriteTime -lt $typ.LastWriteTime) { $problems += "$slug : PDF older than .typ, recompile" }
    # ponytail: regex page count, fine for typst output; swap for a PDF lib if it ever miscounts
    $pages = ([regex]::Matches([IO.File]::ReadAllText($pdf, [Text.Encoding]::GetEncoding(28591)), '/Type\s*/Page[^s]')).Count
    if ($pages -gt 2) { $problems += "$slug : $pages pages, cut bullets" }
    if ($logged -notcontains "output\$slug.pdf") { $problems += "$slug : no row in applications.csv with resume=output\$slug.pdf" }
}

if ($problems.Count) {
    [Console]::Error.WriteLine("Resume check failed:`n - " + ($problems -join "`n - "))
    exit 2
}
Write-Output 'Resume check passed.'
exit 0
