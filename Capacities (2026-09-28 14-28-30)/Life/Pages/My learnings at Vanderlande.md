---
type: 'Page'
collections: 'Vanderlande'
title: My learnings at Vanderlande
aliases: null
description: null
icon: 👨‍💼
createdAt: '2024-09-16T06:42:29.463Z'
lastUpdated: '2026-09-27T13:45:58.840Z'
tags: [Vanderlande]
coverImage: '[Untitled](../Images/Untitled%20(2).md)'
---

# My learnings at Vanderlande

# Work Done So far

1. Shadowed a software developer for changing a field name. [[Suraj Singh]]

2. Shadowed a tester to setup Local CaRE. [[Rahul Patil]]

3. Updated the BOM of Inspection ITM. **[WPLAT-75535]** 

4. Analysis of existing sequence flow documentation **[WPLAT-67405]**

5. Create Blackbox scenario for exception handling for direct intake. **[WPLAT-76851]**

6. Blackbox Scenario Implementation for exception handling of Direct Intake **[WPLAT-76852]**

7. Quality review - Address Documentation Changes Kafka Event Pages **[WPLAT-74473]**

8. Implement PACT in CLRF and T&R for "CreateClearingTask" **[WPLAT-79006]**

9. Worked with [[Rahul Patil]] to do performance analysis **[WPLAT-79116]**

10. Get carrier details via "/carriers/physical-id/{id} (carrier details)" **[WPLAT-79559]**

11. Common Bom Update (TaskPublisher, OracleDilect) **[WPLAT-79800]**



Notes for presentation







QUESTIONS YOU NEED TO ASK OTHERS DUDE (DONT BE SHY)

1. What is EtO? Engineer to Order

2. What is DOR in [[WPLAT]]-71489

3. What exactly is [[TCC]] (the transport control communication) and how do you talk with it?

4. What is [[PLC]] - > how tf does it send singal for stuff?

5. [[Blackbox]] & [[Whitebox]]

6. What is PDT? platform dev team???????????????????

7. How are we using SNS?

8. How do you define IC nodes? information collection nodes? (maybe ask this to [[Aditya Bardapurkar]])

9. What is [[GTP]]

10. SEE HOW ACTUALLY [[ADAPTO]] is different than [[Highbay]] 

    1. It's basically like ADAPTO is your smart L3 cache, and highbay is your Ssd. 

11. How actually we figure out what's wrong with a [[pallet]] in [[Clearing Flow]]

---

THE OG [[Team Voilet]] 

---


Java Learnings : @ [[Vanderlande]]

- [[Oops concepts]]

- [[dependency injection]]

- build restful stuff

- building [[swagger-ui]] api tests

- [Inversion of control.](./Inversion%20of%20control.md)

- Some annotations in [[SpringBoot]]



---

Sankalp's Roadmap () the architect guy

1. Core [[Java]]

2. [[SpringBoot]]

3. RestApi

4. kakfa

5. cucumber

6. Gatlin (for high performance testing)

7. [[Setting up docker]]

8. [[kubernetes]]



---

[[Amit Bhaskar]]

Amit Stuff

What is agile

- basically diving multiple work in small chunks in sprints, quaterly pi's and work modules as Epics to do the work

- random bullshit corprate way of dividing work and managing workforces.



---

Actual information

1. [[FastPick]]

2. [[StorePick]]

3. [[LeanPick]] (i have literally zero idea about this)

4. [[Decanting]]

5. [[Replenishment]]

6. [[Clearing Flow]]

7. [[Quality Assessment]]



Changes according to Pact and REST

1. 2 sections me docs device

    1. Event (Kafka)

        1. providor

        2. consumer


<!-- restart numbering -->

    1. REST calls.

        1. providor

        2. consumer

    Payload : When you send event, the info being shared to the another [[ITM]] is called payload. 

    1. Service up

    2. blackbox up ( in [[docker]])

    3. gather events data. 

    4. if docs available for above event with that payload take info of it. 

---





The main story WPLAT

questions to ask [[Suraj Singh]]

1. How to actually run bb? and how to verify which senario's are failing which are not. 

2. where to write certain functinos if requirement is needed (what and how to name them?)

3. urn fields. Where to find them how to check them? (ask /person/san/  /person/Aditya Bar)

4. The json thingy for mock server (get resources on where to learn it from?) (station-planning) (replenishment - team saf)

5. copilot enable hua? did u get the license?



DTO -> when we are interacting with different layers of a object. then we make DTO.

---


Action taken - 56 changes has been made. change -> 

- [x] the carrier data is known to the system

- [x] AssignClearingCases event is published

- [x] a ClearingTaskUpdated event is published

- [ ] ActionTaken event is received from Clearing-Handling

- [ ] a ClearingTaskUpdated event is published

- [ ] a ClearingTaskUpdated event is published




---

- [x] Where DTO is required, make it. 

- [x] Mock required data.

- [x] add data in events which are being published. 

- [x] validate data (provide and response data validation)



[[79800]]



Instructions to run blackbox tests locally

run this first

```bash
docker-compose --file docker-compose.infrastructure.yml --file docker-compose.oracle.yml up --build --detach
```

then run this (after service is finished).

```bash
docker-compose --file docker-compose.blackbox-tests.yml up --detach --build
```




[[79801]]

