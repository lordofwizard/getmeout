// AI Platform Engineer — Hellmann. Structure copied from template.typ.
// Note: the posting carried no job title; derived from the AI Platform Team description.

#set page(margin: (x: 1.4cm, y: 1.1cm))
#set text(font: ("Calibri", "Carlito"), size: 10pt)
#set par(justify: false, leading: 0.55em)
#show heading: set text(size: 11pt, weight: "bold")

#let section(title) = {
  v(0.3em)
  heading(level: 2, upper(title))
  v(-0.4em)
  line(length: 100%, stroke: 0.5pt)
  v(0.05em)
}

#let job(role, org, dates, bullets) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", role + " — " + org),
    text(dates),
  )
  v(-0.3em)
  for b in bullets [ - #b ]
  v(0.15em)
}

// ---------------------------------------------------------------- header
#align(center)[
  #text(size: 17pt, weight: "bold")[Advait Pandharpurkar] \
  #v(-0.3em)
  #text(size: 10.5pt)[AI Platform Engineer · Production LLM Apps, MCP & Agent Platforms] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI platform engineer who takes LLM applications into production and builds the shared layer other teams
run on: an internal MCP server platform, a 7-tool MCP AI service, and prompt-level token and cost
telemetry across 5 work categories. Ships MCP and REST integrations in Python on Docker and Kubernetes,
and enables other teams - including non-engineers - to use agents safely.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Python, SQL, Rust, C++, Bash, JavaScript \
*AI & Agent Platform:* production LLM applications, MCP, agents, tool use, context engineering, prompt engineering, agent orchestration, LangChain, LangGraph, RAG, LLM gateway, cost optimization, Databricks, evaluations, observability, prompt and cost telemetry, Snowflake, guardrails, prompt injection defence \
*Data & Platform:* data engineering, data pipelines, SQL, PostgreSQL, Oracle DB, Apache Kafka, Databricks, Snowflake, data validation \
*Cloud & DevOps:* Docker, Kubernetes, Git, CI/CD, Azure, Azure DevOps, AWS, Google Cloud, FastAPI, REST APIs, Microservices, GNU/Linux, Terraform, Datadog \
*Security & Governance:* audit trails, secret management, machine identities for agents, JWT, SonarQube, code review, access control

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Build the internal MCP server platform other product teams run their agents on, plus a 7-tool MCP AI service for Azure DevOps that surfaces pipeline status, change logs, and suggested code fixes.],
  [Build a VS Code plugin that attributes GitHub Copilot tokens and cost to each prompt, engineer, team, and model across 5 engineering work categories, giving leadership prompt-level and model-level cost telemetry.],
  [Train the full MGCC CorpTech organization on prompt engineering across 3 enablement topics and mentor 1 junior AI engineer, documenting hands-on agent experience into reusable guidance.],
  [Take ambiguous requirements to working proofs of concept under real constraints, including a Reinsurance data-validation and reconciliation POC that secured funding for 2 AI engineering hires.],
  [Build a multi-agent analytics service grounded in an Adobe Databricks business context, wiring a conversational frontend to natural-language analytics over 1 production dataset.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before every merge.],
  [Upgraded 3 platform BOMs from 2024.48.1 to 2025.2.0 across Spring Boot services, verifying local builds and black-box runs on Oracle and PostgreSQL and documenting release notes.],
  [Evaluated 4 IO-emulation designs for the loop sorter, rejected the full IO-layer redesign as too slow to land, and shipped a thinner C++ and Rust PROFINET translation layer that removed a dedicated industrial PC and reached 90% sorter efficiency.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
  [Shipped 4 developer CLI tools for robot Wi-Fi switching and ROS networking over SSH, replacing manual per-robot setup with single-command configuration.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
