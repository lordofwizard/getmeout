// Generic resume — built from deeds/*.md, structure copied from template.typ.

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
  #text(size: 10.5pt)[Software Engineer · AI Agents & Systems] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard] ·
    #link("https://lordofwizard.com")[lordofwizard.com]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
Software engineer with 2+ years building AI agents, MCP developer tooling, and systems software across
insurance, warehouse automation, and robotics. Ships in Python, Rust, C++ and Java; turns ambiguous
business problems into working tools, from an 80 person-day automation win to a POC that secured 2 AI engineering hires.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Python, Rust, C++, Java, Bash, JavaScript \
*AI:* AI Agents, Multi-Agent Systems, MCP, LangChain, LangGraph, RAG, Prompt Engineering, Azure AI Foundry, GitHub Copilot \
*Backend & Infrastructure:* FastAPI, REST APIs, Spring Boot, Apache Kafka, Microservices, Docker, Kubernetes, Azure DevOps, GNU/Linux \
*Data & Testing:* PostgreSQL, Oracle DB, Databricks, Pact, Cucumber, SonarQube \
*Robotics & Real-time:* ROS2, Zenoh, WebRTC, OpenCV, PROFINET, UDP/TCP

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Build a VS Code plugin giving leadership AI cost and usage visibility, attributing Copilot tokens and cost to each prompt, engineer, team, and model across 5 work categories; directors requested a broader leadership demo.],
  [Automate Oracle HCM pre-run vs post-run diff analysis with Comparator, saving an estimated 80 person-days and cutting quarterly comparisons from sprints to hours.],
  [Built a Reinsurance data-validation and reconciliation POC that secured funding for 2 AI engineering hires.],
  [Delivered a 7-tool MCP server for Azure DevOps (pipeline status, changelogs) that detects failing pipelines and suggests code fixes inside the IDE.],
  [Lead migration of all vendor-built METRO agents to GitHub Copilot and the MetLife stack; built a local SonarQube MCP agent and an internal MCP server platform.],
  [Trained the full MGCC CorpTech org on prompt engineering; mentor 1 junior AI engineer. GTO Nomination Award and GEM Award (MGCC level).],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Removed the dedicated industrial PC from loop-sorter test emulation by writing a C++/Rust PROFINET translation layer that runs on a VM, reaching 90% sorter efficiency.],
  [Implemented Pact contract tests and Cucumber black-box suites for Kafka/REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL.],
  [Led a 12-person team to build a 3D warehouse simulation game in Java (jMonkeyEngine) for the W-PLAT hackathon.],
))

#job("Software Developer Intern", "RigBetel Labs", "Dec 2023 – Jul 2024", (
  [Built RoboNet, a Rust/Python robot networking suite (hotspot daemon, logs web server, FastAPI config API) now running on every RigBetel Labs robot.],
  [Benchmarked 4 video transports (WebRTC, TCP, UDP, Zenoh-DDS) and shipped WebRTC middleware streaming NDI cameras at 720p/30 fps.],
  [Enabled internet teleoperation of ROS2 robots via a Google Cloud Zenoh router, replacing LAN-only control.],
))

#job("Freelance Robotics Consultant", "Vector Robotics", "Feb 2025", (
  [Built an OAK-D depth perception stack in Rust and OpenCV on NVIDIA Jetson, publishing via ROS2 Jazzy; demoed live at IIT Bombay E-Summit.],
))

// -------------------------------------------------------------- projects
#section("Projects & Awards")
- *MCServer* — Rust toolkit to host Minecraft servers free on Google Cloud; 100+ GitHub stars, 3k+ downloads, 400-developer Discord community.
- *Kavach National Hackathon* — 1st Runner-up, led a team building a USB-deployable RAM dump acquisition tool.
- *Smart India Hackathon* — Runner-up, led a team building a BTRFS/XFS recovery tool granted by NTRO.

// ------------------------------------------------------------- education
#section("Education")
*Bachelor of Engineering, Computer Engineering* — Pune University #h(1fr) 2025
