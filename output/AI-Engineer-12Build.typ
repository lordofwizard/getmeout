// AI Engineer — 12Build. Structure copied from template.typ.

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
  #text(size: 10.5pt)[AI Engineer · LLMOps & Production GenAI Services] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI Engineer with 2+ years shipping production AI services and agentic systems in Python: an MCP AI
service used across product teams, a Databricks-grounded multi-agent analytics service, and
model-level token and cost observability across 5 engineering work categories. Sets the LLMOps
standards around prompt management, automated evaluations in CI/CD, and multi-model cost, and
takes full technical ownership from proof of concept to production.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*AI & LLMOps:* RAG, AI Agents, Multi-Agent Systems, MCP, Prompt Engineering, Prompt Management, LangChain, LangGraph, Multi-Model Routing, LLM Gateway, Fallback Mechanisms, Observability, Cost Optimization, AI Evaluations, Model Fine-Tuning, Vector Stores \
*Data & Analytics:* Databricks, MySQL, PySpark, Data Pipelines, PostgreSQL, Oracle DB, Apache Kafka \
*Cloud, Platform & CI/CD:* CI/CD, AWS, Docker, Kubernetes, FastAPI, REST APIs, Microservices, Azure DevOps, Azure AI Foundry, Google Cloud, GitHub Copilot, GNU/Linux \
*Languages:* Python, Rust, C++, Java, Bash, JavaScript

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Develop a 7-tool MCP AI service for Azure DevOps that surfaces pipeline status and change logs, detects failing pipelines, and proposes code fixes inside the IDE.],
  [Deploy a VS Code plugin that attributes GitHub Copilot tokens and cost to each prompt, engineer, team, and model across 5 engineering work categories, and is now requested as a corp-wide leadership demo.],
  [Build a multi-agent analytics service grounded in an Adobe Databricks business context, wiring a conversational frontend to natural-language analytics over 1 production dataset.],
  [Lead the migration of 1 vendor-built agent platform into the MetLife stack and build the internal MCP server platform product teams use, plus a local SonarQube MCP agent for code-quality checks.],
  [Mentor 1 junior AI engineer and trained the full MGCC CorpTech organization on prompt engineering, turning hands-on agent experience into 3 reusable enablement topics.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before merge.],
  [Replaced a dedicated industrial PC with a C++ and Rust PROFINET translation layer running on a VM, reaching 90% loop-sorter efficiency.],
  [Led a 12-person team to deliver a 3D warehouse simulation in Java (jMonkeyEngine), defining objectives, architecture, and the asset kit.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust and Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot across 2 compute platforms.],
  [Benchmarked 4 video transports (WebRTC, TCP, UDP, Zenoh-DDS) on Google Cloud and shipped WebRTC middleware streaming NDI cameras at 720p/30 fps.],
  [Enabled internet teleoperation of ROS2 robots through 1 Google Cloud-hosted Zenoh router, replacing LAN-only control.],
))

#job("Freelance Robotics Consultant", "Vector Robotics", "Feb 2025", (
  [Delivered 1 on-device depth perception stack in Rust and OpenCV on NVIDIA Jetson, published through a ROS2 Jazzy package and demoed live at IIT Bombay E-Summit.],
))

// -------------------------------------------------------------- projects
#section("Projects & Awards")
- *MCServer* — Rust toolkit to host Minecraft servers free on Google Cloud; 100+ GitHub stars, 3k+ downloads, 400-developer Discord community.
- *Kavach National Hackathon* — 1st Runner-up, led a team building a USB-deployable RAM dump acquisition tool.
- *Smart India Hackathon* — Runner-up, led a team building a BTRFS/XFS recovery tool granted by NTRO.

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
