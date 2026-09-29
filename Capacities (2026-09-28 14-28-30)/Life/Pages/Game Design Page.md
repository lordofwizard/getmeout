---
type: 'Page'
collections: 'W-PLAT Vanderlande Hackathon'
title: Game Design Page
aliases: null
description: null
icon: 🎮️
createdAt: '2024-11-18T04:31:19.986Z'
lastUpdated: '2024-11-24T05:53:44.845Z'
tags: [Vanderlande]
coverImage: null
---

# Game Design Page

# Game Design

We are developing an indie-style warehouse management game, designed as a fast-paced 2D platformer. The game features simple yet engaging assets, primarily boxes and conveyor belts.

In the game, you begin by organizing boxes as quickly and efficiently as possible. Over time, the challenge increases as you are presented with more boxes and a wider variety of pallet types.

Your goal is to build the largest and most efficient warehouse possible, but be careful—if you make three consecutive mistakes, the game ends.



---

# Tools / Technologies we are gonna use. 

1. The Game Framework : JMonkeyEngine or libGDX (I need to try libgdx on my own computer and make a basic game with it). 

2. Intelij Project. 

3. assets.zip file (it will be linked to be downloaded below). 

4. For sounds, I haven't searched for any sounds as we will find them during hackathon time to check how to make the end user experience more extensive. 




---

# Game Development Life Cycle :

1. We first need to setup a meeting on how to *render* the game graphics in that 2.5d grid. 

2. Level Design (Discussed below, these need to show some kind of **Vanderlande** theme attached to it. )

3. Team members, will work on individual part. here are the basic things that needs to be done (NOTE: This is a rough todo list)

    - [ ] Menu System

    - [ ] Rendering System

    - [ ] Constant Game loop

    - [ ] Progression speed of the Input Boxes/Containers/Pallets

    - [ ] Features to solve problems for us (Maybe GTP Type Robots from Oxygen Not Included can be added here). 

    - [ ] Scoring system.

    - [ ] Global Online HighScore. 

    Note some of the above are interdependent. so need to priorotise them properly. 

---

## The Actual game

Just look at this picture

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/b18a142d-6b96-4d87-9975-465c56b0ed34/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085825Z&X-Amz-Expires=43200&X-Amz-Signature=bab8d4a83373777dcda52086173acbd1f067bc8cb7618c32b99dfca0bfa7314d&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(82).md)

Makes sense? probably not. 

Here's whats happening.

1. The Inbounder (Need to ask someone on team to call it something sophisticated). 

    This ITM will be providing you with random pallets with some info (symbol attached to it). This symbols you gotta memorise / remember and address that box by dragging and dropping it on proper station. 



2. Those boxes with Some Info are pallets with symbol

3. Conveyer belt is conveyer belt. 

---

The Above Diagram should be brought down to a similar version of *this*

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/555a2f01-9220-43d8-84c7-029f50b6fb6a/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=c097d595b4dbf7081eb226258d09d951b68841bb2bd9f71c56e6195d18d0d659&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(75).md)

btw, this Assets is this one

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/230e511f-ef2d-40ff-b9c8-8015a768b93b/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085826Z&X-Amz-Expires=43200&X-Amz-Signature=006f28d533c6c81d2420aef96963d8498bb7c7c1db9ad5dde9c042828ea9a3ff&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(90).md)



---

Some Assets links



![advait-asset-kit](https://capacities-files.s3.eu-central-1.amazonaws.com/private/e1e8f948-30e8-403d-bc10-8f0bf19e3681/raw.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085827Z&X-Amz-Expires=43200&X-Amz-Signature=ffc51658601ef379663491029146ae3b4547abeeb301279151157e5401f8606b&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[[advait-asset-kit|advait-asset-kit - Notes]]


an other one for inspiration (probably will skip this one)

![Free Industrial Zone Tileset](https://capacities-files.s3.eu-central-1.amazonaws.com/private/e70d91ad-d2a5-4079-947c-7c71c5032555/raw.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085825Z&X-Amz-Expires=43200&X-Amz-Signature=9da722350f9c2da76504b9b5d5d4af736672e1566736555487b182b9a159a3c3&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[[Free Industrial Zone Tileset|Free Industrial Zone Tileset - Notes]]

