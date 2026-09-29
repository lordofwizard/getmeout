// Junior AI Engineer – Industrial AI — Lindauer DORNIER (Lindau). Structure copied from template.typ.

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
  #text(size: 10.5pt)[Junior AI Engineer · Industrial AI, Python & MLOps] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI engineer with 2+ years building AI and data solutions in Python, with hands-on industrial
production exposure: PROFINET control software on warehouse machinery and real-time sensor and
telemetry work on robots. Ships LLM, API and MLOps tooling such as a 7-tool MCP AI service, and takes
AI work from data analysis through to a working prototype.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages & Data:* Python, SQL, Rust, C++, Bash \
*AI & ML:* LLMs, LLM APIs, MCP, AI Agents, Multi-Agent Systems, LangChain, LangGraph, RAG, Prompt Engineering, Model Fine-Tuning, MLOps, Databricks, model validation, experiment tracking, statistical analysis, time-series data, predictive modelling, anomaly detection, feature engineering \
*Industrial & Systems:* industrial production systems, machine and sensor data, PROFINET, industrial controls, real-time systems, ROS2, OpenCV, NVIDIA Jetson, embedded C++ \
*Platform & DevOps:* Docker, Kubernetes, Git, CI/CD, Azure, Azure DevOps, Google Cloud, AWS, REST APIs, FastAPI, Microservices, GNU/Linux, monitoring

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Build a 7-tool MCP AI service for Azure DevOps (pipeline status, changelogs, suggested code fixes) plus the internal MCP server platform other product teams run their agents on.],
  [Automate Oracle HCM pre-run versus post-run diff analysis with Comparator, saving an estimated 80 person-days and cutting quarterly comparisons from sprints to hours.],
  [Take ambiguous requirements to working proofs of concept under real constraints, including a Reinsurance data-validation and reconciliation POC that secured funding for 2 AI engineering hires.],
  [Train the full MGCC CorpTech organization on prompt engineering across 3 enablement topics and mentor 1 junior AI engineer, documenting hands-on agent experience into reusable guidance.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Removed the dedicated industrial PC from loop-sorter test emulation by writing a C++ and Rust PROFINET translation layer that runs on a VM, reaching 90% sorter efficiency against the real control pipeline.],
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before every merge.],
  [Ran a performance analysis with the platform team and closed 4 WPLAT tickets spanning REST endpoints and Kafka event documentation (OpenAPI, AsyncAPI).],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Wrote netpub, a ROS2 C++ publisher of live telemetry read over serial, reused across 3 robot platforms (Cepheus, Diadem, TTB-PRO-MAX).],
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
))

#job("Freelance Robotics Consultant", "Vector Robotics", "Feb 2025", (
  [Delivered 1 on-device depth perception stack for OAK-D cameras in Rust and OpenCV, optimized to run on NVIDIA Jetson edge hardware and published through a ROS2 Jazzy package.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
