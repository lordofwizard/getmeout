// AI Engineer — Allianz Global Investors (Frankfurt). Structure copied from template.typ.

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
  #text(size: 10.5pt)[AI Engineer · ML/AI Platform Enablement on Databricks & Azure] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI Engineer with 2+ years building AI platforms and enabling other teams to self-serve on them: an
internal MCP server platform used by product teams, a Databricks-grounded multi-agent analytics
service, and model-level Copilot cost visibility across 5 work categories. Builds in Python on Azure
with SQL across Oracle, PostgreSQL and Databricks.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Python, SQL, Rust, C++, Bash, JavaScript \
*AI & ML:* Azure AI Foundry, MCP, AI Agents, Multi-Agent Systems, LangChain, LangGraph, RAG, Prompt Engineering, Model Fine-Tuning, LLM Gateway, evaluations, monitoring, cost optimization \
*Data Platform & Engineering:* Databricks, SQL, Spark, PySpark, Terraform, PostgreSQL, Oracle DB, Apache Kafka, MySQL, data validation, data architecture, data engineering \
*Cloud & DevOps:* Azure, CI/CD, Docker, Kubernetes, Azure DevOps, Git, Google Cloud, AWS, Helm, Vault, Datadog, GNU/Linux

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Build the internal MCP server platform other product teams run their agents on, plus a 7-tool MCP AI service for Azure DevOps that surfaces pipeline status, change logs, and suggested code fixes.],
  [Build a multi-agent analytics service grounded in an Adobe Databricks business context, wiring a conversational frontend to natural-language analytics over 1 production dataset.],
  [Build a VS Code plugin that attributes GitHub Copilot tokens and cost to each prompt, engineer, team, and model across 5 engineering work categories, giving leadership model-level cost and usage visibility.],
  [Automate Oracle HCM pre-run versus post-run diff analysis with Comparator, saving an estimated 80 person-days and cutting quarterly comparisons from sprints to hours.],
  [Train the full MGCC CorpTech organization on prompt engineering across 3 enablement topics and mentor 1 junior AI engineer, turning hands-on agent experience into guidance other engineers self-serve from.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before every merge.],
  [Upgraded 3 platform BOMs from 2024.48.1 to 2025.2.0 across Spring Boot services, verifying local builds and black-box runs on Oracle and PostgreSQL and documenting release notes.],
  [Ran a performance analysis with the platform team and closed 4 WPLAT tickets spanning REST endpoints and Kafka event documentation (OpenAPI, AsyncAPI).],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
  [Benchmarked 4 video transports (WebRTC, TCP, UDP, Zenoh-DDS) on Google Cloud and shipped WebRTC middleware streaming NDI camera feeds at 1280x720/30 fps.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
