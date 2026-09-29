# MetLife

> Paste everything you did here. Raw is fine — the agent will shape it.
> One `###` block per deed. A deed is one accomplishment, not one task.

## Role

- **Title:** Associate Software Platform Engineer II
- **Team / org:** Corporate Technology
- **Dates:** <Dec 2025> – Present
- **Employment type:** Full-time
- **Stack:** Python, LangChain, LangGraph, Azure AI Foundry, C++, REST APIs, Claude Code, GitHub Copilot, PostgreSQL, Qt Framework, Salesforce, VS Code extensions, GNU/Linux, POSIX shell scripting, FDE, AI cost management
- **Domain:** <!-- insurance, claims, underwriting, actuarial, customer platform... --> AI Agentic Engineering, Marketing Technology, HR Technology. 
- **Scale signals:** CIO- and VP-level visibility, CorpTech-wide enablement, 300K+ USD

## Deeds

<!-- Template per deed — copy this block:

### <Short handle for the deed>

- **Context:** what was broken / what was needed and why anyone cared
- **Action:** what YOU did, specifically, with which tech
- **Metric:** the number. latency, cost, accuracy, throughput, hours saved,
  revenue, incidents avoided, adoption. If you have no number, estimate one you
  can defend out loud in an interview and mark it `~`.
- **Tech:** comma-separated, exact names (PyTorch, LangGraph, Azure OpenAI, ...)
- **Keywords:** phrases a recruiter/ATS might search that this deed proves
- **Interview story:** the 30-second version, including what went wrong

-->

### AI Engineering Cost & Usage Visibility Solution

- **Context:** Copilot adoption showed AI activity but not where tokens were spent, which engineering activities drove cost, or whether spend improved delivery.
- **Action:** Built a lightweight VS Code plugin that captured Copilot activity from VS Code and Copilot CLI, classified work across coding, testing, research, documentation, and troubleshooting, and connected prompts to engineers, teams, models, tokens, and cost.
- **Metric:** Covered 5 engineering work categories and exposed prompt-level, engineer-level, team-level, editor-level, and model-level reporting; received requests from multiple CorpTech leaders for a broader demo.
- **Tech:** VS Code extension, GitHub Copilot, Copilot CLI, AI cost management
- **Keywords:** AI engineering economics, prompt-level accountability, token consumption, usage analytics, cost visibility, model mix, engineering productivity
- **Interview story:** Identified a measurement gap in Copilot adoption and built a plugin that kept reporting inside the developer workflow instead of adding a separate reporting platform. The result gave leadership a practical view of where AI investment was going and where teams could optimize prompting, workflows, and model choice.

### Remember.AI meeting follow-through

- **Context:** Meeting outcomes and action items were difficult to carry forward consistently after discussions.
- **Action:** Built a Microsoft Teams chatbot and AI-powered agent that analyzed meeting transcripts, generated summaries and action items, and automatically sent the results to leaders and associates after meetings for the CFT Hackathon.
- **Metric:** Automated 2 recurring outputs—meeting summaries and action-item follow-through—after every meeting within 1 completed hackathon initiative.
- **Tech:** Microsoft Teams, AI agents, prompt engineering
- **Keywords:** meeting summarization, action-item tracking, workflow automation, AI agents, iterative validation
- **Interview story:** Focused the hackathon concept on the post-meeting execution gap, then connected summarization to follow-through instead of stopping at generated notes.

### LocalMCP and HexaMCP developer tooling

- **Context:** Developers needed a reliable way to understand MCP architecture and retrieve Azure DevOps delivery data from their development environment.
- **Action:** Built a local test MCP to study agentic workflows, then delivered HexaMCP as a 6-tool MCP server for pipeline status, Spring change logs, and other Azure DevOps operations.
- **Metric:** Progressed from 1 local MCP proof of concept to 1 developer MCP server with 6 operational tools.
- **Tech:** MCP, AI agents, Azure DevOps
- **Keywords:** Model Context Protocol, MCP server, agentic workflows, developer tooling, Azure DevOps, pipeline visibility
- **Interview story:** Started with the smallest executable MCP to understand the protocol, then turned that learning into a developer-facing toolset for common Azure DevOps questions.

### FixMyPipeline automated remediation

- **Context:** Developers could inspect pipeline problems but needed a faster path from diagnosis to a proposed fix within the IDE.
- **Action:** Extended HexaMCP with a 7th tool that detected pipeline issues, retrieved relevant Azure DevOps data, and suggested code fixes.
- **Metric:** Added 1 remediation tool to the existing 6-tool MCP, creating a 7-tool developer workflow for pipeline diagnosis and suggested fixes.
- **Tech:** MCP, AI agents, Azure DevOps
- **Keywords:** pipeline automation, incident remediation, Azure DevOps, developer productivity, code fixes, agentic tooling
- **Interview story:** Built on the existing MCP instead of creating a second integration, adding the smallest useful step from pipeline visibility toward guided remediation.

### MarTech Analytics Agent

- **Context:** Marketing Technology users needed conversational access to analytics backed by an Adobe Databricks instance.
- **Action:** Built a frontend and multi-agent system that used Databricks-backed business context to support basic queries and analytics workflows, working with Pradeep Kumar.
- **Metric:** Connected 1 multi-agent frontend to 1 Adobe Databricks business context and supported basic natural-language analytics flows.
- **Tech:** Multi-agent systems, AI agents, Databricks
- **Keywords:** conversational analytics, Databricks, business context, natural-language querying, agentic AI
- **Interview story:** Treated data grounding and business vocabulary as the core problem, then shaped the agent around reliable answers rather than generic chat.

### Oracle HCM Comparator

- **Context:** Quarterly comparison work for Oracle HCM data consumed sprint-level effort and delayed useful analysis.
- **Action:** Built and shipped Comparator_Enhanced with Lokesha, Sandeep, Suvarna, and the Oracle HCM team to automate pre-run versus post-run diff analysis and generate comparison reports.
- **Metric:** Reduced projected comparison effort by approximately 80 person-days and demonstrated the improved tool to Barnali and Darryl.
- **Tech:** Automation, Oracle HCM, data comparison
- **Keywords:** process automation, Oracle HCM, data validation, comparison automation, hours saved
- **Interview story:** Mapped the repeated comparison steps, automated the mechanical work, and shifted the effort from sprint planning and execution to an hours-scale workflow.

### Reinsurance Data Sentinel

- **Context:** The Reinsurance team needed a practical demonstration of AI engineering value before committing broader investment.
- **Action:** Built and showcased a small proof of concept with George, Bharti, Shashi, and the Reinsurance team, securing sponsorship for 2 AI engineering hires.
- **Metric:** Secured sponsorship for 2 AI engineering hires through 1 demonstrated POC.
- **Tech:** AI, automation, data validation, reconciliation, proof-of-concept development
- **Keywords:** reinsurance, AI engineering, proof of concept, sponsorship, business case, stakeholder alignment
- **Interview story:** Used a narrow, demonstrable POC to make the capability concrete for stakeholders and connect technical feasibility to an engineering hiring decision.

### METRO Growth & Co transition

- **Context:** METRO workflows and agents created by the Growth & Co. vendor needed to operate within the MetLife technology stack and be maintainable by the internal team.
- **Action:** Led local setup and workflow understanding, improved local development with WSL + dockerd, translated all Growth & Co agents to GitHub Copilot, built local SonarQube MCP tooling, and created a platform for MCP servers with John and Salim.
- **Metric:** Transitioned 1 vendor-built platform and its agent workflow set into the MetLife technology stack while creating 1 internal MCP platform.
- **Tech:** AI agents, MCP, GitHub Copilot, WSL, Docker, workflow orchestration, knowledge transfer
- **Keywords:** platform transition, vendor migration, workflow orchestration, knowledge transfer, internal enablement, agentic engineering
- **Interview story:** Took ownership of the gap between receiving an external tool and truly operating it internally, then made the workflows understandable and usable by the MetLife team.

### Local SonarQube Agent

- **Context:** METRO engineers needed a faster way to perform SonarQube-related checks locally without repeatedly switching tools or waiting for a remote workflow.
- **Action:** Built a local SonarQube analysis agent and Podmanized MCP workflow within the CorpTech METRO environment.
- **Metric:** Consolidated SonarQube operations into 1 local agent workflow and 1 containerized MCP implementation.
- **Tech:** AI agents, MCP, SonarQube, Podman
- **Keywords:** SonarQube, code quality, developer tooling, local automation, agentic workflow
- **Interview story:** Applied the same agentic workflow model to code quality operations, keeping the feedback loop close to the developer and the repository.

### CorpTech AI enablement

- **Context:** Engineers across CorpTech needed practical guidance on using AI and prompting techniques in day-to-day engineering work.
- **Action:** Taught an AI and prompt-engineering session for the full MGCC CorpTech organization as part of CBT, and delivered APEX sessions on file analytics and a correction agent.
- **Metric:** Delivered 3 enablement topics: AI and prompting techniques, file analytics, and correction-agent workflows.
- **Tech:** Prompt engineering, AI agents, file analytics, correction agents, GitHub Copilot
- **Keywords:** AI enablement, prompt engineering, developer productivity, file analytics, correction agents, CBT
- **Interview story:** Converted hands-on agent experience into reusable guidance, teaching both broad prompting practices and concrete APEX workflows.

### MyVoice AI Operationalization

- **Context:** MyVoice AI initiatives needed engineering input to move from AI concepts toward operational use.
- **Action:** Served as an AI SME with Jhair Williams, contributing to AI operationalization activities for MyVoice initiatives in CorpTech.
- **Metric:** Supported 1 AI operationalization workstream as the CorpTech AI SME.
- **Tech:** AI operationalization, AI agents, prompt engineering, stakeholder alignment
- **Keywords:** AI operationalization, AI SME, production readiness, governance, stakeholder alignment
- **Interview story:** Focused on the operational details needed beyond a successful demo, helping connect AI initiative design to how CorpTech teams would use and sustain it.

### AI engineering mentorship

- **Context:** A newly hired GG8 Junior AI Engineer needed practical support while joining the GT Early Careers program.
- **Action:** Mentored Simran Pathan through technical problem-solving, AI engineering practices, and context-setting within the team.
- **Metric:** Mentored 1 junior AI engineer through GT Early Careers.
- **Tech:** AI engineering, AI agents, prompt engineering, technical mentoring
- **Keywords:** mentorship, technical leadership, AI engineering, early careers, knowledge sharing
- **Interview story:** Used current project experience to shorten the learning curve for a junior engineer and make technical context easier to apply independently.

### Innovista Ideathon

- **Context:** MetLife needed contributors who could turn emerging AI ideas into clear, testable concepts.
- **Action:** Participated as a core member of the Innovista Ideathon, contributing AI engineering perspective and iterative validation.
- **Metric:** Contributed as 1 core member of 1 ideation program.
- **Tech:** AI agents, prompt engineering, structured execution, iterative validation
- **Keywords:** innovation, ideation, AI strategy, iterative validation, outcome orientation
- **Interview story:** Applied a bias for action to ideation by framing concepts around user value, validation loops, and feasible engineering paths.

## Recognition

- GTO Nomination Program Award — recognized for ownership, agility, and impact.
- GEM Award, MGCC level — recognized for exceptional April performance.
- Confirmed at MetLife after successfully completing probation.
- AI Engineering Cost & Usage Visibility Solution — received positive feedback from CorpTech leaders and requests to demo the plugin to a broader audience.

## Things I own / am the go-to for

- AI agents and agentic workflow design
- Prompt engineering and AI enablement
- AI engineering cost and usage visibility
- AI operationalization in CorpTech
- Translating ambiguous business needs into small, demonstrable proofs of concept
- Knowledge transfer for vendor-built workflows and internal platform adoption
