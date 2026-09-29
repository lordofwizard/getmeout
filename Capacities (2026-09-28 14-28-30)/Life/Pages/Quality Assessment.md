---
type: 'Page'
collections: 'Vanderlande'
title: Quality Assessment
aliases: null
description: null
icon: null
createdAt: '2024-09-26T05:53:34.199Z'
lastUpdated: '2024-10-06T08:51:58.945Z'
tags: [Vanderlande, Java]
coverImage: null
---

# Quality Assessment

[[Aishwarya M]]

---

### Blackbox testing 

1. [[Blackbox]] tests are done on a sandboxed env where we don't have any control / info about the env. 

2. Must be done in java and gradle 

3. done in a multidev cluster. (check Chart.yaml) runs in a Docker Container

    1. we used Mock Server to mock REST interactions with other [[ITM]]. 

4. TEST must have passed locally ([[Blackbox]]) using [[OracleDB]] and [[PostgressDB]]. 

5. 4 times using Docker and Intelij. with each db. 

6. you must have to tell them (idk who) that your tests failed on first run in blackbox. 

7. Avoid direct interaction with DB, use (OpenAPI / async api)

8. Blackbox tests must egive a comprehensive info on whats going on. 

9. Must run on a multidesk cluster and the running docs must be clear. 




[[Gherkin]]

1. Tests must be written using Cucumber and must follow the [[Gherkin]]

2. Must follow the senario and can use inline comments (ASK A LOT OF STUFF TO AISHWARYA ABOUT THIS)

3. Wiki me dekho vikipedia if we can use it or not (words). 

4. use Given When then steps. (gramer is imp ask how it's done)

5. Write stuff as you are in the warehouse and how it should be reflected. 

6. Target Audience : - read on Specification by example. 



---

### for PACT by Arikaran Sivasankar

1. Know all [[NFR]]s related to PACT. 

    1. Pact tests are present.  

---

### For SonarQube,Whitebox, Documentation, DOD

1. For sonarQube we need minimum test code voverage greater than 80%

2. go to sonarqube and check itm and overall code pe click karo

3. ASK what is SonarQube? 

#### For WhiteBox

1. All unit tests should pass

2. written in cucumber using gherkin

3. must pass before merging to develop

#### For Docs

1. AsyncAPI and OpenAPI valid should be present

2. Deployment settings for config of ITM

3. feature flags should be properly written and documented

4. same goes for Kafka topipcs must be written properly

5. Follow the same format of Release notes as i did for BOM updates. 

6. 

---

#### Quality Check - Delta Check / Recheck

1. Recheck - we only check the mentioned request

2. for normal check we check everything?

3. Before checking check the SemVer

4. THERE"s a template for this

5. 2 dashboards poards 1. logisitics 2. materialflow

6. 

---

#### BBT & PACT

