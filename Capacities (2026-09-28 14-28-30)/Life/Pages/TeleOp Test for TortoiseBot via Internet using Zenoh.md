---
type: 'Page'
collections: 'Zenoh'
title: TeleOp Test for TortoiseBot via Internet using Zenoh
aliases: null
description: null
icon: null
createdAt: '2024-04-30T14:54:48.762Z'
lastUpdated: '2025-01-05T11:43:22.953Z'
tags: [Linux, RigBetelLabs, TortoiseBot, Zenoh, ROS, Docker]
coverImage: '[image](../Images/image%20(55).md)'
---

# TeleOp Test for TortoiseBot via Internet using Zenoh

# Setup

1. I have a TortoiseBot Running ROS Galactic.

2. I have another machine Running Ubuntu Desktop

3. I have a Router Setup on GCLoud Shell

*If you don't know how to do that follow this guide* [Setup Zenoh as Router on Google Cloud Shell.](./Setup%20Zenoh%20as%20Router%20on%20Google%20Cloud%20Shell.md)

---

# On the BOT

You need to run a `zenoh-bridge-dds` on it.

Installing a bridge is pretty straight forward. You can install them via APT or you can do it via the Binary Download (HIGHLY RECOMMENDED)

example

```bash
wget "https://github.com/eclipse-zenoh/zenoh-plugin-dds/releases/download/0.10.1-rc/zenoh-plugin-dds-0.10.1-rc-x86_64-unknown-linux-gnu.zip" -O bridge.zip
```

Make sure you have the `tortoisebot_firmware` or `ros2 run tortoisebot_firmware differential.py` running on your robot.

```bash
unzip bridge.zip
```

```bash
mv zenoh-bridge-ros bridge
```

```bash
./bridge -e "tcp/YOUR_ROUTER_TCP_URL:PORT"
```

***YOUR_ROUTER_TCP_URL*** must be replaced with your GCloud Router you setuped

follow this guide if you don't know how to do that [Setup Zenoh as Router on Google Cloud Shell.](./Setup%20Zenoh%20as%20Router%20on%20Google%20Cloud%20Shell.md)

---

# 2.On your Client Machine

You need Ros Version running  (GALACTIC) on your current machine 

make sure it's sourced

```bash
source /opt/ros/galactic/setup.bash
```

Run a Ros Bridge

```bash
wget "https://github.com/eclipse-zenoh/zenoh-plugin-dds/releases/download/0.10.1-rc/zenoh-plugin-dds-0.10.1-rc-x86_64-unknown-linux-gnu.zip" -O bridge.zip
```

```bash
unzip bridge.zip
mv zenoh-bridge-dds bridge
./bridge
```



make sure you have teleoptwistkeyboard package installed

```bash
sudo apt install ros-galactic-teleop-twist-keyboard
```

and run the package

```bash
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```

###  THATS IT

