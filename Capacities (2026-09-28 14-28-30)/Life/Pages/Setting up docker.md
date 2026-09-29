---
type: 'Page'
title: Setting up docker
aliases: null
description: null
icon: null
createdAt: '2024-04-04T09:26:29.970Z'
lastUpdated: '2024-09-16T08:07:11.172Z'
tags: [Linux, VirtualMachines, Docker, Rust, cli]
coverImage: null
---

# Setting up docker



Runing 

```bash
docker run -it -d --device=/dev/dri --privileged -e DISPLAY=$DISPLAY -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" --network host -v /dev:/dev -v /home/ubuntu/Desktop/advait_ros_container/:/home/ --name rust_ros2_container advait
```

---



