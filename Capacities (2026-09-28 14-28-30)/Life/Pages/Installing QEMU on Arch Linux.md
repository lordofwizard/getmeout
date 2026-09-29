---
type: 'Page'
title: Installing QEMU on Arch Linux
aliases: null
description: Tried this on Anton
icon: null
createdAt: '2024-04-03T18:40:50.762Z'
lastUpdated: '2024-04-30T14:06:45.396Z'
tags: [Linux, VirtualMachines, Arch]
coverImage: null
---

# Installing QEMU on Arch Linux

Tried this on [[Date/2024-04-04]]

**Install Packages**


```bash
sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat dmidecode ebtables iptables libguestfs
```

**up KVM Services**

```bash
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
```

**Check Status**

```bash
sudo systemctl status libvirtd.service
```

**Open Configuration File**

```bash
sudo vim /etc/libvirt/libvirtd.conf
```

**Check these lines**

```yaml
unix_sock_group = "libvirt"
unix_sock_rw_perms = "0770"
```

Set your user to LibVert Group


```bash
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
```

Restart Service if required

```bash
sudo systemctl restart libvirtd.service
```

