---
type: 'Page'
collections: 'Robotics'
title: Playit.GG Service setup for Raspberry Pi 4 Model B
aliases: null
description: null
icon: 🧸
createdAt: '2024-04-25T11:29:48.029Z'
lastUpdated: '2025-01-05T11:43:22.928Z'
tags: [Linux, RigBetelLabs, Docker]
coverImage: null
---

# Playit.GG Service setup for Raspberry Pi 4 Model B

# Register an account on PlayIt.GG

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/68a14466-b0f6-4acb-b095-195397ffbc6b/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085827Z&X-Amz-Expires=43200&X-Amz-Signature=b2e34c05b0fa2241786594f321f66247b3ba965bdee8cf7448b54992cfac93a7&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(85).md)


---

# Download and Install PlayIt 

           For Raspberry Pi 4 Download the **aarch64** binary

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/db4df63a-edcd-4070-85f7-3a5ce3e720f4/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085826Z&X-Amz-Expires=43200&X-Amz-Signature=345a4306bd9ee1c085a97544cc808338486fff3f4bc05a7a45aa18130ba1fc6c&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(86).md)

---

# Make it executable

```bash
chmod +x ./playit-linux-aarch64
mv ./playit-linux-aarch64 playit

```

---

# Run the executable for the first time

```bash
./playit
```

---

# Claim the URL on PlayIt.gg Website

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/a25f562c-61d5-4da6-81c1-66b503230f65/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=d877e5bb77fda09349737f6dd0cc2986f41196b522bd4f73f8b4e4f9ccd4f866&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(65).md)

---

# Approve and Continue

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/9bb5aa7b-332c-4e51-b310-8b7ed6f2861b/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=561562f88b8c0133bfade12f755d87aa174bd25e96f14f1bc19299de681ff9fd&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(71).md)

---

# Set Device Properties

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/7f9cd5e8-81bc-417b-ba83-d2e9dd3df28d/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=11b209ecf919d4875b60d549444c85b964ce0a19b08e7c15ff20f9ce74620efa&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(69).md)

---

# Create Tunnel

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/c38796a4-cd4e-42f4-933f-0c73f6a16cf0/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085827Z&X-Amz-Expires=43200&X-Amz-Signature=cb633073fe3b3df7bbd851e0ff722afa2353228798187047a361fa48c8d942a6&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(87).md)

**WAIT** until all the first three steps are done.

---

# Set Tunnel Options

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/10aac0b8-16ae-40c6-b633-54b103f953ab/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=5004d0dc3d1521cc1dce69ea67989689ce450db3e81e1b42091713a35ce0ca62&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(57).md)

1. For Free Teir use default location

2. TCP Protocol

3. Port Count 1

4. Local Port 10000 as the application is running on port 10000

---

# Tunnel URL

You will get the tunnel url from the terminal

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/e06cbeb4-1590-486f-bcd7-42800497bd1b/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085826Z&X-Amz-Expires=43200&X-Amz-Signature=fec9665637ae876e5f8a21795f1f23e4b7fa562dc171ed420c2aa11860b166d8&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(88).md)

Or you can get it via the web page where you have logged in

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/638f8ed9-d6f3-4bfd-a93c-ac863d6b5f3c/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085824Z&X-Amz-Expires=43200&X-Amz-Signature=cbbfeb71099f84fd75967eafdc14df2ae35c5381f3090a80104f6a8a2b31c6d9&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(56).md)

---

