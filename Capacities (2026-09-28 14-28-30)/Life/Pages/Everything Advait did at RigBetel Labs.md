---
type: 'Page'
collections: 'Robotics'
title: Everything Advait did at RigBetel Labs
aliases: null
description: not in a order though, but yeahr overall everything stuff
icon: 🤖
createdAt: '2024-07-23T06:26:25.358Z'
lastUpdated: '2025-01-08T07:20:17.221Z'
tags: [RigBetelLabs, Linux]
coverImage: '[Untitled](../Images/Untitled%20(1).md)'
---

# Everything Advait did at RigBetel Labs

---

Started working from 2023, Dec 25.

1. First project building a Ncurses based WiFi changing cli app, that can work flawlessly over ssh

[https://github.com/rigbetellabs/robot_hotspot](https://github.com/rigbetellabs/robot_hotspot)

and also worked on a Ubuntu 20.04 version

[https://github.com/rigbetellabs/robot_hotspot_20.04_py](https://github.com/rigbetellabs/robot_hotspot_20.04_py)

note: find older commits for the bash versions. 

### NOT RECOMMENDED TO USE THE ABOVE, Shift to RoboNet.

---

1. Cli tool for giving robot ip address (proper ip address, and a single one only to start ros_master_uri)

[https://github.com/rigbetellabs/robonet/blob/main/robonet-getip](https://github.com/rigbetellabs/robonet/blob/main/robonet-getip)

1. the #Rust version is also available. here ⬇️ with build instructions, (install rust from [rustup.rs - The Rust toolchain installer](../Weblinks/rustuprs%20-%20The%20Rust%20toolchain%20installer.md) ) 

[https://github.com/rigbetellabs/roboip](https://github.com/rigbetellabs/roboip)

---

Wrote a bringup service and related gists

[https://gist.github.com/lordofwizard/c1c704a118d361725eb30a962807f6bc](https://gist.github.com/lordofwizard/c1c704a118d361725eb30a962807f6bc)

---

Wrote a Encoder Manager lib for Motor ticks with [[Suyash]] 

[https://github.com/rigbetellabs/EncoderManager_rbl](https://github.com/rigbetellabs/EncoderManager_rbl)

---

RoboNet, consist of the robo-d the hotspot keepup daemon and logs service with a webserver

works for #RaspberryPi and nuc

[https://github.com/rigbetellabs/robonet](https://github.com/rigbetellabs/robonet)

---

Worked and created a UDP and TCP based benchmarks for sending video streams of multiple video camera's

[GitHub - lordofwizard/gcp-mediator: A simple sender->mediator->reciever for udp stream example my by...](https://github.com/lordofwizard/gcp-mediator)[GitHub - lordofwizard/gcp-mediator: A simple sender->mediator->reciever for udp stream example my by... - Notes](../Weblinks/GitHub%20-%20lordofwizardgcp-mediator%20A%20simple%20sender-mediator-reciever%20for%20udp.md)

[https://github.com/lordofwizard/udp_streamer-tests](https://github.com/lordofwizard/udp_streamer-tests)

---

## WebRTC stuff

experimental repo's




BEFORE THIS, check out the following benchmarks

[Results compared, WebRTC, TCP, UDP, Zenoh-DDS](https://docs.google.com/spreadsheets/d/1mNMgZ3VHY2unXEPLhjNSc2mULVACzw-eRycyy0Y_w7g/edit?usp=sharing)[[Results compared, WebRTC, TCP, UDP, Zenoh-DDS|Results compared, WebRTC, TCP, UDP, Zenoh-DDS - Notes]]



[GitHub - lordofwizard/gcp-mediator-webrtc](https://github.com/lordofwizard/gcp-mediator-webrtc)[GitHub - lordofwizard/gcp-mediator-webrtc - Notes](../Weblinks/GitHub%20-%20lordofwizardgcp-mediator-webrtc.md)

[GitHub - lordofwizard/webrtc-http-gcp: A communication platform to share robot->signaling srvr->clie...](https://github.com/lordofwizard/webrtc-http-gcp)[GitHub - lordofwizard/webrtc-http-gcp: A communication platform to share robot->signaling srvr->clie... - Notes](../Weblinks/GitHub%20-%20lordofwizardwebrtc-http-gcp%20A%20communication%20platform%20to%20share%20robot-.md)

[GitHub - lordofwizard/webpage-rtc](https://github.com/lordofwizard/webpage-rtc)[GitHub - lordofwizard/webpage-rtc - Notes](../Weblinks/GitHub%20-%20lordofwizardwebpage-rtc.md)

### Final Working version

[GitHub - lordofwizard/webrtc-video-working](https://github.com/lordofwizard/webrtc-video-working)[GitHub - lordofwizard/webrtc-video-working - Notes](../Weblinks/GitHub%20-%20lordofwizardwebrtc-video-working.md)

---

Middle ware for NDI Ip Cameras

[GitHub - lordofwizard/webrtc-ndi: Camera Server for a WebRTC Over NDI (Network IP Webcam)](https://github.com/lordofwizard/webrtc-ndi)[GitHub - lordofwizard/webrtc-ndi: Camera Server for a WebRTC Over NDI (Network IP Webcam) - Notes](../Weblinks/GitHub%20-%20lordofwizardwebrtc-ndi%20Camera%20Server%20for%20a%20WebRTC%20Over%20NDI%20(Network%20I.md)

Also check this page for further docs [[WebRTC for the NDI Camera's]].

---

### Unitify

[GitHub - lordofwizard/unitify: A cli python app to setup the Robot Control for Unity Application, Up...](https://github.com/lordofwizard/unitify)[GitHub - lordofwizard/unitify: A cli python app to setup the Robot Control for Unity Application, Up... - Notes](../Weblinks/GitHub%20-%20lordofwizardunitify%20A%20cli%20python%20app%20to%20setup%20the%20Robot%20Control%20for%20U.md)

This lets you setup bringup and autostart for your unity app. configures everrything automatically just download the python script and run it for the first time. 


```bash
git clone https://github.com/lordofwizard/unitify
./unitify
```

---

Network Information publisher for Cepheus, Diadem, TTB-PRO-MAX

[GitHub - lordofwizard/netpub: Simple Network Publisher Suite collection for Serial In for ROS2 Based...](https://github.com/lordofwizard/netpub)[GitHub - lordofwizard/netpub: Simple Network Publisher Suite collection for Serial In for ROS2 Based... - Notes](../Weblinks/GitHub%20-%20lordofwizardnetpub%20Simple%20Network%20Publisher%20Suite%20collection%20for%20Seri.md)

C++ version and written for ROS2, specifically. 



---

Building a Webserver for the RosBag app

[GitHub - lordofwizard/ros_webserver](https://github.com/lordofwizard/ros_webserver)[GitHub - lordofwizard/ros_webserver - Notes](../Weblinks/GitHub%20-%20lordofwizardros_webserver.md)

used fastapi and uvicorn



---

Zenoh and Google Cloud stuff

[Zenoh Router.](./Zenoh%20Router.md)

[Setup Zenoh as Router on Google Cloud Shell.](./Setup%20Zenoh%20as%20Router%20on%20Google%20Cloud%20Shell.md)

[Playit.GG Service setup for Raspberry Pi 4 Model B](./PlayitGG%20Service%20setup%20for%20Raspberry%20Pi%204%20Model%20B.md)

[[TeleOp Test for TortoiseBot via Internet using Zenoh]]

[[Internet Based Zenoh Router powered Pub Sub]]

[[Local Pub Sub]]


---

KDE Plasma Desktop 

[[Install Desktop and ROS Stuff on Raspberry Pi]]

[[New Image Sertup]]


---

Setup proper XORG cookie for yatish 

[[How to set proper display variable cookie in Xorg]]


---

Working actively on 

[Build software better, together](https://github.com/rigbetellabs/robonet-rs)[[Build software better, together|Build software better, together - Notes]]

