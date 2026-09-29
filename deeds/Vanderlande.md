# Vanderlande

> One `###` block per deed. Source: Capacities notes ("My learnings at Vanderlande",
> "Work done by Advait", "Quality Assessment", "W-PLAT Hackathon Team", DCE pages) + user input.

## Role

- **Title:** Software Developer Intern
- **Team / org:** WPLAT (Warehouse Platform), later DCE (Team Aikyam)
- **Dates:** Aug 2024 – Mar 2025
- **Employment type:** Internship
- **Stack:** Java, Spring Boot, Apache Kafka, REST APIs, Pact, Cucumber, Gherkin, Gradle, Docker, Kubernetes, Oracle DB, PostgreSQL, SonarQube, OpenAPI, AsyncAPI, C++, Rust, PROFINET, UDP, jMonkeyEngine, Atlassian (Jira, Confluence)
- **Domain:** Warehouse automation, logistics, material handling, industrial controls (ITM microservices: Clearing Flow, Inspection, Direct Intake)
- **Scale signals:** Microservice platform of ITMs communicating over Kafka events and REST; led a 12-person hackathon team

## Deeds

### Loop-sorter test emulation without dedicated hardware

- **Context:** Loop-sorter testing emulation depended on a dedicated industrial PC (IPC) running the real controller pipeline.
- **Action:** Evaluated 4 IO-emulation approaches (UDP IO adaptor, IO-layer redesign, TCP IO emulation, UDP-based PROFINET) and wrote a translation-layer wrapper in C++ and Rust so the sorter emulation runs on a VM instead of a dedicated IPC.
- **Metric:** Reached 90% efficiency on the loop sorter while removing the dedicated IPC requirement for test emulation.
- **Tech:** C++, Rust, UDP, PROFINET, virtual machines, industrial controls
- **Keywords:** hardware emulation, controller IPC, PROFINET, translation layer, test infrastructure, systems programming
- **Interview story:** Compared four designs, rejected the full IO-layer redesign as too slow to land, and shipped a thin translation layer that let a VM stand in for the IPC.

### PACT contract tests between ITMs

- **Context:** ITM microservices communicating over Kafka events and REST needed verified contracts to avoid breaking each other.
- **Action:** Implemented Pact consumer/provider contract tests for the "CreateClearingTask" interaction in Clearing Flow (CLRF) and T&R (WPLAT-79006), plus further Pacts between ITMs.
- **Metric:** Covered 1 cross-service interaction across 2 ITMs (CLRF, T&R).
- **Tech:** Java, Spring Boot, Pact, Apache Kafka, REST APIs
- **Keywords:** contract testing, consumer-driven contracts, microservices, event-driven architecture, Kafka
- **Interview story:** Learned the provider/consumer split for both Kafka events and REST calls and wrote contracts for each side.

### Blackbox exception-handling scenarios for Direct Intake

- **Context:** Exception handling in the Direct Intake flow lacked end-to-end coverage.
- **Action:** Designed and implemented Blackbox test scenarios (WPLAT-76851, WPLAT-76852) in Cucumber/Gherkin, mocking other ITMs with Mock Server, with DTOs and payload validation; ran them in Docker; also built Blackbox cases for Clearing Flow and Inspection ITMs.
- **Metric:** Validated scenarios against 2 databases (Oracle, PostgreSQL) across 3 ITMs (Direct Intake, Clearing Flow, Inspection).
- **Tech:** Java, Cucumber, Gherkin, Gradle, Mock Server, Docker, Oracle DB, PostgreSQL
- **Keywords:** black-box testing, BDD, exception handling, integration testing, test automation
- **Interview story:** Wrote tests as warehouse behaviour in Given/When/Then, and had to pass them on both Oracle and Postgres before merge.

### BOM and dependency updates

- **Context:** ITMs needed dependency and BOM upgrades to stay on current platform releases.
- **Action:** Updated the Inspection ITM BOM (WPLAT-75535, WPLAT-79801 to 2025.2.0) and the common BOM for TaskPublisher and OracleDialect (WPLAT-79800), verifying local builds and Blackbox runs on Oracle and PostgreSQL, and documenting release notes.
- **Metric:** Delivered 3 BOM updates across platform releases 2024.48.1 → 2025.2.0.
- **Tech:** Java, Gradle, Spring Boot, Docker, Oracle DB, PostgreSQL
- **Keywords:** dependency management, BOM, release engineering, upgrades
- **Interview story:** Treated each upgrade as a verified release: build, Blackbox on both DBs, screenshots, release notes.

### Carrier REST endpoint, Kafka docs, and performance analysis

- **Context:** WPLAT services needed carrier lookups and accurate event documentation.
- **Action:** Implemented carrier-details retrieval via `/carriers/physical-id/{id}` (WPLAT-79559), led a quality review of Kafka event documentation pages (WPLAT-74473), analysed sequence-flow docs (WPLAT-67405), and ran performance analysis with Rahul Patil (WPLAT-79116).
- **Metric:** Closed 4 WPLAT tickets across API, documentation, and performance.
- **Tech:** Java, Spring Boot, REST APIs, Apache Kafka, OpenAPI, AsyncAPI
- **Keywords:** REST API, Kafka events, API documentation, performance analysis
- **Interview story:** Found and fixed inconsistencies in other developers' event docs while learning the platform.

### W-PLAT Hackathon team lead

- **Context:** Internal Warehouse Platform hackathon.
- **Action:** Led the team building a 3D warehouse game in Java with jMonkeyEngine: conveyor belts, pallet spawning, whitelist/blacklist pallet evaluation, scoring and difficulty progression; ran kickoff, defined game objectives, architecture and asset kit.
- **Metric:** Led a 12-person team (product owner, 2 architects, 2 scrum masters, 6 Java developers).
- **Tech:** Java, jMonkeyEngine
- **Keywords:** technical leadership, team lead, hackathon, game development
- **Interview story:** Planned the game around real warehouse concepts (pallet clearing) so the demo explained the business too.

## Recognition

<!-- none recorded in notes -->

## Things I own / am the go-to for

- Blackbox / Pact testing for ITMs
- Controller IO emulation (C++/Rust translation layer)
