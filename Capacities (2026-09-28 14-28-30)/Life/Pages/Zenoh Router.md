---
type: 'Page'
collections: 'Zenoh'
title: Zenoh Router.
aliases: null
description: null
icon: null
createdAt: '2024-04-30T13:05:22.289Z'
lastUpdated: '2025-01-05T11:43:29.646Z'
tags: [Linux, ROS, RigBetelLabs, Docker]
coverImage: null
---

# Zenoh Router.

Zenoh router is a application that you run on a server and it acts as a sharing device for nodes running Zenoh applications



how to install zenoh router?



**for ubuntu**

```bash
echo "deb [trusted=yes] https://download.eclipse.org/zenoh/debian-repo/ /" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt update
```

---

```bash
sudo apt install zenoh 
```

---


# Run Zenoh Router

```bash
zenohd
```

---



![Untitled](https://images.unsplash.com/photo-1646627927863-19874c27316b?ixid=M3wyMjAxMDF8MHwxfHNlYXJjaHw1fHxkb2NrZXJ8ZW58MHwwfHx8MTcxNDQ4NTI0OHww&ixlib=rb-4.0.3)
[Untitled - Notes](../Images/Untitled%20(120).md)

Wanna do it with **DOCKER** ????



```bash
docker run --init -p 7447:7447/tcp -p 8000:8000/tcp eclipse/zenoh
```



here the **7447** port is **TCP TUNNEL.**

and the port **8000**  is the REST API port

