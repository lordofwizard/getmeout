---
type: 'Page'
collections: 'GNU/Linux'
title: How to set proper display variable cookie in Xorg
aliases: null
description: null
icon: null
createdAt: '2024-06-27T14:25:34.155Z'
lastUpdated: '2025-01-05T11:43:22.995Z'
tags: [Linux, RigBetelLabs, Arch, cli]
coverImage: null
---

# How to set proper display variable cookie in Xorg

```bash
xauth add "$DISPLAY" MIT-MAGIC-COOKIE-1 $(XAUTHORITY=/run/user/1000/gdm/Xauthority xauth list | awk '{print $3}' | uniq)

```



Remember the $DISPLAY variable can have multiple values


<!-- restart numbering -->

1. If on gnome if the automatic login in on in gdm. then DISPLAY will be `:0`

2. Else it will be `:1`


