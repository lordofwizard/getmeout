---
type: 'Page'
title: Testing for BTRFS deletion of files image instructions.
aliases: null
description: null
icon: null
createdAt: '2024-12-10T12:43:04.495Z'
lastUpdated: '2024-12-11T06:31:26.298Z'
tags: []
coverImage: null
---

# Testing for BTRFS deletion of files image instructions.

make a fucking image or use a partition

```bash
truncate -s 1g btrfsimage
mkfs.btrfs btrfsimage
```



```bash
mkdir mnt
mkdir out
sudo mount btrfsimage mnt
```

Copy some files on mnt lol

```bash
sudo cp ~/Downloads/*.pdf mnt/
sudo umount -R mnt
sudo rm -rf mnt
```



