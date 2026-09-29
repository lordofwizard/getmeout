---
type: 'Page'
collections: 'Rust'
title: Compile for Multi LibC Versions for rust
aliases: null
description: null
icon: null
createdAt: '2024-04-15T08:09:50.812Z'
lastUpdated: '2024-05-27T10:29:56.164Z'
tags: [cli, Rust, Arch, Linux, Docker]
coverImage: null
---

# Compile for Multi LibC Versions for rust



```bash
sudo pacman -S musl

sudo apt-get install musl-tools

rustup target add x86_64-unknown-linux-musl

cargo build --target=x86_64-unknown-linux-musl --release

```



---


# THATS IT

