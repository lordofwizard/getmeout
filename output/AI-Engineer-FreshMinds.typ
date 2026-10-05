// AI Engineer — FreshMinds, Leiden. Structure copied from template.typ.

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
  #text(size: 10.5pt)[AI Engineer · Copilots, Chatbots, Agents & LLM Integration] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI engineer with 2+ years shipping LLM applications in Python: copilots, chatbots and agents integrated
into existing enterprise systems, plus retrieval-grounded analytics over production data. Builds in
short iterations from idea to working application - a 7-tool MCP AI service and internal agent platform
used across product teams - and owns integration and prompting end to end.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Python, SQL, Rust, C++, Bash, JavaScript \
*AI & LLM:* Azure AI Foundry (Azure OpenAI), LLMs, copilots, chatbots, AI Agents, Multi-Agent Systems, MCP, LangChain, LangGraph, Semantic Kernel, prompt engineering, context engineering, model fine-tuning, LLM gateway, cost optimization, RAG, embeddings, vector databases, chunking strategies \
*Data & Integrations:* REST APIs, FastAPI, Microservices, Apache Kafka, SQL, PostgreSQL, Oracle DB, Databricks, data pipelines, data validation \
*Cloud & Platform:* Azure, Google Cloud, AWS, Docker, Kubernetes, CI/CD, Git, OpenAPI, GNU/Linux, monitoring \
*Quality & Delivery:* rapid prototyping, test automation, Pact contract testing, Cucumber, SonarQube, code review, technical documentation

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Lead the migration of 1 vendor-built agent platform to GitHub Copilot and the MetLife stack, and build the internal MCP server platform other product teams run their agents on.],
  [Built a Microsoft Teams chatbot and AI agent that analysed meeting transcripts, generated summaries and action items, and sent results to leaders automatically after every meeting.],
  [Build a multi-agent analytics service grounded in an Adobe Databricks business context, wiring a conversational frontend to natural-language analytics over 1 production dataset.],
  [Take ambiguous requirements to working proofs of concept under real constraints, including a Reinsurance data-validation and reconciliation POC that secured funding for 2 AI engineering hires.],
  [Train the full MGCC CorpTech organization on prompt engineering across 3 enablement topics, turning hands-on agent experience into reusable guidance for other engineers.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before every merge.],
  [Removed the dedicated industrial PC from loop-sorter test emulation by writing a C++ and Rust PROFINET translation layer that runs on a VM, reaching 90% sorter efficiency against a live control pipeline.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
  [Benchmarked 4 video transports (WebRTC, TCP, UDP, Zenoh-DDS) on Google Cloud before choosing, then shipped WebRTC middleware streaming NDI camera feeds at 1280x720/30 fps.],
))

#job("Freelance Robotics Consultant", "Vector Robotics", "Feb 2025", (
  [Delivered 1 on-device depth perception stack for OAK-D cameras in Rust and OpenCV, owned end to end for a robotics client and published through a ROS2 Jazzy package.],
))

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
