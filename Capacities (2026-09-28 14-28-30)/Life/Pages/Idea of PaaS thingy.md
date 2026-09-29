---
type: 'Page'
collections: 'Final Year Project'
title: Idea of PaaS thingy
aliases: null
description: null
icon: null
createdAt: '2024-05-17T01:40:25.426Z'
lastUpdated: '2024-07-21T20:32:09.872Z'
tags: [Linux, cli, Rust]
coverImage: null
---

# Idea of PaaS thingy

### Problem Statement

Well, you have storage shit in your cloud but it is mostly read only. Once your viewers have done shit on their platform they won't delete basic metadata and shit. You need to save storage space on that. Cloud storage is limited and getting expensive af everyday.



### Solution

A suite of tools with web and shit to let the users make applications with our system (API CALLS AND STUFF) or using our tool as database or giving a simple readonly (but with cached writing system) compressed file storage solution. 



### TL;DL

1. Dwarfs/SquashFS type Read only system using ZStandard with it's fast compression and decompression shit. 

2. A web interface to show this shit. 

3. Cache block / manager that will actually manage how data comes in and in which fs(compressed) it should append / modify the data. 

4. 

