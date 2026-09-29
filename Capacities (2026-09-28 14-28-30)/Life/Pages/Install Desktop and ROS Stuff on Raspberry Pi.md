---
type: 'Page'
collections: 'Robotics'
title: Install Desktop and ROS Stuff on Raspberry Pi
aliases: null
description: null
icon: null
createdAt: '2024-04-25T07:21:32.619Z'
lastUpdated: '2025-01-05T11:43:22.981Z'
tags: [Linux, RigBetelLabs, ROS]
coverImage: null
---

# Install Desktop and ROS Stuff on Raspberry Pi

# Flashing the Image

Install the image of Raspberry Pi 20.04 Server for 64Bit Architecture on the Memory Card using RPi Imager

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/1c9b0178-c14a-41b2-8963-1823e65ef4a1/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085825Z&X-Amz-Expires=43200&X-Amz-Signature=213298a0635a9ff362b5ab217baa888af926230c29ef87f112391beabbdf969a&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(32).md)

# 2.Setup the Desktop with this command

```bash
sudo apt update && sudo apt install -y kde-plasma-desktop     
```

*Note when it asks you to select the Display Manager use* ***GDM3***.

# 3.Setup the gpu drivers for Ubuntu 20.04 

```bash
sudo apt install -y libgles2-mesa libgles2-mesa-dev xorg-dev
```

# 4.Restart the device to load the drivers

```bash
sudo reboot 
```

---


*Note for ROS raspicam_node installation*

```bash
sudo apt install libraspberrypi-bin libraspberrypi-dev 
```

