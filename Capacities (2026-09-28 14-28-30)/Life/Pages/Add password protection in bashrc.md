---
type: 'Page'
collections: 'GNU/Linux'
title: Add password protection in bashrc
aliases: null
description: null
icon: null
createdAt: '2024-04-15T15:10:09.642Z'
lastUpdated: '2024-04-15T15:13:40.144Z'
tags: []
coverImage: null
---

# Add password protection in bashrc

# Note this won't work as expected if you have multiple shells on your Device 

as you can provide a shell with -it `/bin/bash` it's not best practice to install the basic posix shell and the bash shell in your container.

```bash
sudo nano /root/.bashrc
```

# SET A ROOT PASSWORD BEFORE THIS STEP

Add these 2 lines for the password in your bash rc



```bash
read -sp 'Password: ' password
echo "$password" | sudo -S true >/dev/null 2>&1
```


