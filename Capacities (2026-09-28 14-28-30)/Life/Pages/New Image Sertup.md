---
type: 'Page'
collections: 'Robotics'
title: New Image Sertup
aliases: null
description: null
icon: null
createdAt: '2024-06-20T05:39:17.175Z'
lastUpdated: '2025-01-05T11:43:22.988Z'
tags: [RigBetelLabs, Linux, cli]
coverImage: null
---

# New Image Sertup

1. Stop Automatic Update in ubuntu 20.

2. open file 

```bash
sudo vi /etc/apt/apt.conf.d/20auto-upgrades
```

and remove change all "1"s to "0"

```bash
:%s/1/0/g
```

---

### Remove unwanted packages

```bash
sudo apt remove unattended-upgrades update-notifier
```

---

### Setup wifi

```bash
sudo vi /etc/netplan/50-cloud-init.yaml
```

```bash
sudo netplan apply
```

---


Install kde 

```bash
sudo add-apt-repository ppa:kubuntu-ppa/backports -y
sudo apt install kde-plasma-desktop
sudo apt install lightdm
```


