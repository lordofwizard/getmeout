---
type: 'Page'
collections: 'Zenoh'
title: Setup Zenoh as Router on Google Cloud Shell.
aliases: null
description: null
icon: null
createdAt: '2024-04-30T13:31:08.387Z'
lastUpdated: '2025-01-05T11:43:22.910Z'
tags: [Linux, Zenoh, RigBetelLabs, Docker]
coverImage: null
---

# Setup Zenoh as Router on Google Cloud Shell.

## Install Zenoh

The fastest way to install zenoh for best and fastest way

1. go to [https://github.com/eclipse-zenoh/zenoh/releases](https://github.com/eclipse-zenoh/zenoh/releases)

2. Grab the latest **standalone** image for **gnu x86_64**

3. use this command as exampel

```bash
wget "https://github.com/eclipse-zenoh/zenoh/releases/download/0.11.0-rc.2/zenoh-0.11.0-rc.2-x86_64-unknown-linux-gnu-standalone.zip" -O zenoh.zip
```

4.Extract this zip

```bash
unzip zenoh.zip
rm zenoh.zip
```

5.Now you have zenohd in your cwd.

6.Run and test your zenohd

```bash
zenohd  
```

7.It will print the local ip and port it was ran from. ****KEEP IT AS IT IS REQUIRED FOR PLAYIT****

 

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/862d5a19-b29d-48a1-9507-549b8178338b/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085826Z&X-Amz-Expires=43200&X-Amz-Signature=0317c56162290c754c12317340ce9cbfbb6f889a2fbf9f935ef89974140e0c71&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(102).md)

8.Check the last 2 lines that's where the internal tcp ip is setup

follow playit guide if you don't know how to use playit. 



---

![Untitled](https://images.unsplash.com/photo-1591711584791-455de896b1e9?ixid=M3wyMjAxMDF8MHwxfHNlYXJjaHwzfHx0dW5uZWx8ZW58MHwwfHx8MTcxNDQ4NTY4OXww&ixlib=rb-4.0.3)
[Untitled - Notes](../Images/Untitled%20(115).md)

Setup a tunnel with [playit.gg](../Weblinks/playitgg.md)



Download playit via the url 

example

```bash
wget "https://github.com/playit-cloud/playit-agent/releases/download/v0.15.13/playit-linux-amd64" -O playit
```



run playit.

```bash
playit
```



for more detailed tcp link guide follow this



[Playit.GG Service setup for Raspberry Pi 4 Model B](./PlayitGG%20Service%20setup%20for%20Raspberry%20Pi%204%20Model%20B.md)



