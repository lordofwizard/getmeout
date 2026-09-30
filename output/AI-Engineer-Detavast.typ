// AI Engineer (12-month freelance) — Detavast, Utrecht. Structure copied from template.typ.

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
  #text(size: 10.5pt)[AI Engineer · Conversational AI, RAG & Production LLM Applications] \
  #v(-0.3em)
  #text(size: 9.5pt)[
    Pune, India · Open to relocation · +91 82759 93693 · #link("mailto:advait.low@gmail.com")[advait.low\@gmail.com] ·
    #link("https://linkedin.com/in/lordofwizard/")[linkedin.com/in/lordofwizard] ·
    #link("https://github.com/lordofwizard")[github.com/lordofwizard]
  ]
]

// --------------------------------------------------------------- summary
#section("Summary")
AI engineer with 2+ years building and deploying LLM applications in Python on Azure: a conversational
analytics service grounded in production data, a Teams chatbot turning meeting transcripts into action
items, and a 7-tool MCP AI service plus the agent platform other teams use. Owns technical trade-offs
end to end in a regulated financial-services environment.

// ---------------------------------------------------------------- skills
#section("Technical Skills")
*Languages:* Python, SQL, Rust, C++, Bash, JavaScript \
*AI & Conversational:* RAG, conversational AI, chatbots, LLM applications in production, AI Agents, Multi-Agent Systems, MCP, LangChain, LangGraph, prompt engineering, context engineering, evaluations, LLM gateway, cost optimization \
*Data & Retrieval:* embeddings, vector stores, chunking strategies, Databricks, SQL, PostgreSQL, Oracle DB, Apache Kafka, data pipelines \
*Cloud & Platform:* Azure, Azure AI Foundry, Azure DevOps, Docker, Kubernetes, CI/CD, Git, REST APIs, FastAPI, Microservices, Google Cloud, AWS, GNU/Linux, monitoring \
*Quality & Delivery:* Pact contract testing, Cucumber, test automation, SonarQube, code review, technical documentation

// ------------------------------------------------------------ experience
#section("Experience")

#job("Associate Software Platform Engineer II (AI Engineer)", "MetLife, Corporate Technology", "Dec 2025 – Present", (
  [Built a Microsoft Teams chatbot and AI agent that analysed meeting transcripts, generated summaries and action items, and sent results to leaders automatically after every meeting.],
  [Build a multi-agent analytics service grounded in an Adobe Databricks business context, wiring a conversational frontend to natural-language analytics over 1 production dataset.],
  [Delivered APEX sessions on file analytics and a correction agent, and trained the full MGCC CorpTech organization on prompt engineering across 3 enablement topics.],
  [Build the internal MCP server platform other product teams run their agents on, plus a 7-tool MCP AI service for Azure DevOps (pipeline status, changelogs, suggested code fixes).],
  [Take ambiguous requirements to working proofs of concept under real constraints, including a Reinsurance data-validation and reconciliation POC that secured funding for 2 AI engineering hires.],
))

#job("Software Developer Intern", "Vanderlande", "Aug 2024 – Mar 2025", (
  [Implemented Pact consumer/provider contract tests and Cucumber black-box suites for Kafka and REST microservices across 3 warehouse ITMs, validated on Oracle and PostgreSQL before every merge.],
  [Upgraded 3 platform BOMs from 2024.48.1 to 2025.2.0 across Spring Boot services, verifying local builds and black-box runs on Oracle and PostgreSQL and documenting release notes.],
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
