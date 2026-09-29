// AI Solutions Engineer — Mimacom (Stuttgart). Structure copied from template.typ.

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
  #text(size: 10.5pt)[AI Solutions Engineer · AI-Augmented Engineering & Agentic Tooling] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI Engineer with 2+ years building AI-augmented engineering workflows and agentic tooling in Java,
Spring Boot and Python: a 7-tool MCP AI service and internal platforms other product teams use,
ownership of prompt engineering and quality assurance for AI-generated output, and end-to-end
delivery that has saved an estimated 80 person-days of manual work.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Java, Python, Rust, C++, JavaScript, Bash \
*AI & AI-Augmented Engineering:* Generative AI Tools, Agentic Coding (GitHub Copilot, Copilot CLI), MCP, Prompt Engineering, Context Engineering, Human-AI Workflows, AI Output Quality Assurance, LLM Gateway, AI Agents, Multi-Agent Systems, RAG, LangChain, LangGraph, Model Fine-Tuning, Cost Optimization \
*Architecture & Backend:* Spring Boot, REST APIs, Microservices, Distributed Systems, System Design, React, Angular, Apache Kafka, Node.js, Elasticsearch, Liferay, JWT \
*Cloud, Data & DevOps:* CI/CD, Docker, Kubernetes, Azure, Google Cloud, AWS, Azure DevOps, Databricks, Git, Helm, Terraform, Vault, Datadog, GNU/Linux \
*Quality & Testing:* Automated Code Review, SonarQube, Pact contract testing, Cucumber, Gherkin, black-box testing, Mock Server, test automation

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Lead the migration of 1 vendor-built agent platform to GitHub Copilot and the MetLife stack, and build the internal MCP server platform other product teams run their agents on.],
  [Build a local SonarQube MCP agent plus a 7-tool MCP AI service for Azure DevOps that detects failing pipelines and proposes code fixes inside the IDE, keeping automated quality review in the developer loop.],
  [Train the full MGCC CorpTech organization on prompt engineering and deliver 3 enablement topics spanning AI and prompting, file analytics, and correction-agent workflows.],
  [Build a multi-agent analytics service grounded in an Adobe Databricks business context, wiring a conversational frontend to natural-language analytics over 1 production dataset.],
  [Automate Oracle HCM pre-run versus post-run diff analysis with Comparator, saving an estimated 80 person-days and cutting quarterly comparisons from sprints to hours.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before every merge.],
  [Delivered 4 WPLAT tickets across Java and Spring Boot REST endpoints, a quality review of Kafka event documentation (OpenAPI, AsyncAPI), and a performance analysis with the platform team.],
  [Evaluated 4 IO-emulation designs for the loop sorter, rejected the full IO-layer redesign as too slow to land, and shipped a thinner C++ and Rust PROFINET translation layer that removed a dedicated industrial PC and reached 90% sorter efficiency.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
  [Enabled internet teleoperation of ROS2 robots through 1 Google Cloud-hosted Zenoh router, replacing LAN-only control and bridging pub/sub across NAT.],
))

#job("Freelance Robotics Consultant", "Vector Robotics", "Feb 2025", (
  [Delivered 1 on-device depth perception stack in Rust and OpenCV on NVIDIA Jetson for a robotics client, published through a ROS2 Jazzy package and demoed live at IIT Bombay E-Summit.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
