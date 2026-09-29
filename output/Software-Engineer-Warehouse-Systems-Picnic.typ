// Software Engineer - Warehouse Systems — Picnic. Structure copied from template.typ.

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
  #text(size: 10.5pt)[Software Engineer · Warehouse Systems & Java Backend] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
Software Engineer with 2+ years building warehouse and backend systems in Java and Spring Boot:
automation and test coverage for 3 warehouse ITMs on a platform moving totes and pallets through
conveyor and loop-sorter flows, validated on Oracle and PostgreSQL at 90% loop-sorter efficiency.
Owns concept-to-production delivery.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Java, Python, Rust, C++, Bash, JavaScript \
*Backend & Messaging:* Spring Boot, REST APIs, Microservices, Apache Kafka, RabbitMQ, Maven, Gradle, Asynchronous Programming, OpenAPI, AsyncAPI, JWT \
*Data:* PostgreSQL, Oracle DB, MySQL, Databricks, data validation \
*Cloud & Platform:* Docker, Git, CI/CD, Kubernetes, AWS, Helm, Terraform, Vault, Datadog, Azure DevOps, Google Cloud, GNU/Linux \
*Testing:* Pact contract testing, Cucumber, Gherkin, black-box testing, Mock Server, SonarQube

// ------------------------------------------------------------ experience
#section("Experience")

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Removed the dedicated industrial PC from loop-sorter test emulation by writing a C++ and Rust PROFINET translation layer that runs on a VM, reaching 90% sorter efficiency on conveyor flows.],
  [Implemented Pact consumer/provider contract tests for Kafka and REST microservices across 3 warehouse ITMs, catching interface breaks before merge.],
  [Designed Cucumber and Gherkin black-box exception scenarios for 3 ITMs with Mock Server, validating payloads and DTOs against Oracle and PostgreSQL in Docker.],
  [Delivered 4 WPLAT tickets across Java and Spring Boot REST endpoints, a quality review of Kafka event documentation (OpenAPI, AsyncAPI), and a performance analysis with the platform team.],
  [Upgraded 3 platform BOMs from 2024.48.1 to 2025.2.0 across Spring Boot services, verifying local builds and black-box runs on Oracle and PostgreSQL and documenting release notes.],
))

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Automate Oracle HCM pre-run versus post-run diff analysis with Comparator, saving an estimated 80 person-days and cutting quarterly comparisons from sprints to hours.],
  [Build a 7-tool MCP AI service for Azure DevOps (pipeline status, changelogs, suggested code fixes) plus the internal platform other product teams run their agents on.],
  [Mentor 1 junior AI engineer and trained the full MGCC CorpTech organization on prompt engineering across 3 enablement topics.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
  [Benchmarked 4 video transports (WebRTC, TCP, UDP, Zenoh-DDS) on Google Cloud and shipped WebRTC middleware streaming NDI cameras at 720p/30 fps.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
