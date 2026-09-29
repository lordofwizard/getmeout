---
type: 'Page'
collections: 'Zenoh, Robotics'
title: Setup WebRTC Based Web Server for TeleOp Robot
aliases: null
description: null
icon: null
createdAt: '2024-05-28T05:34:31.160Z'
lastUpdated: '2024-07-23T06:10:41.269Z'
tags: [RigBetelLabs, TortoiseBot, ROS, Linux]
coverImage: null
---

# Setup WebRTC Based Web Server for TeleOp Robot

Note this will only setup the webcam service and will not provide the data in any type of ROS Data format, you have to access the web session over the internet in a web browser.



---

### Step 1: Install the Web Server WebRTC from this example

```bash
git clone https://github.com/supersjgk/LiveStream-WebRTC-Flask-OpenCV webrtc_cam
```

---

### Step 2 : Install required packages for the WebRTC server to run via pip

*note make sure you have pip3 installed on your instance.*

```bash
python3 -m pip install Flask opencv-python-headless aiortc
```

---

### Step 3 : Start the server

*It is highly recommended to setup a tmux session as you need to run 2 processes simultaneously.*

```bash
cd src 
python3 server.py
```

---

### Step 4 : In another session / window start ngrok

*Suppose you have a ngrok binary downloaded from their website or via apt/snap.*

```bash
./ngrok auth lajsklgjklajkljgo91u9jsiogja90u1js90ajg-19jx9gj
```

replace the random characters with **YOUR AUTHTOKEN from Ngrok Web Page**

```bash
./ngrok tcp 5000
```



---

#### Step 5 : Get the URL

After the server running step you will get a web page url, on the display

Use that to access the web server for USB Web Cam Screen.

