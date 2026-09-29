---
type: 'Page'
collections: 'Vanderlande DCE'
title: UDP for Controller IPC
aliases: null
description: null
icon: null
createdAt: '2025-02-06T05:59:55.467Z'
lastUpdated: '2025-02-07T12:51:37.779Z'
tags: [Vanderlande, DCE]
coverImage: null
---

# UDP for Controller IPC

This is the master page for understanding the work. 

I am working with [[Team Aikyam]]



[[Questions for DCE]]


after a quick discussion with [[Kishore Lathur]]. 



[[Business Logic and Understanding with Shrikant]]


Approach 1. UDP IO ADDAPTOR

pros : 

1. closes approx of real io

2. limited to only for profinet and one or two modules. 

cons : 

1. won't work for fieldbus

2. require some external simulation of profinet data. 

3. require simulating profinet alarms 



Approach 2. Revamping the IO Layers design

more complex, not suitable for short term



approach 3. TCP based IO emulation

easy to build

can work on other fields as well 

cons : 

was implemented years ago

io design is stil lcomplex. 



Approach 4: UDP Based profinet 




Lines of code in FSC

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/1b5f4822-417f-4452-be2a-0a68fbef9df0/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=0a675ffb9434d7a08d45dfd24a4a8fd7047c82b14631ff054f7a5309857f764d&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(76).md)

