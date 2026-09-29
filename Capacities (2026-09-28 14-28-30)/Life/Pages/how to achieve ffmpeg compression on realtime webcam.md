---
type: 'Page'
title: how to achieve ffmpeg compression on realtime webcam
aliases: null
description: null
icon: null
createdAt: '2024-06-26T08:03:04.285Z'
lastUpdated: '2024-07-02T07:04:53.819Z'
tags: [Linux, RigBetelLabs, WebRTC]
coverImage: null
---

# how to achieve ffmpeg compression on realtime webcam

On the camera end use this command to pipe the video stream



```bash
ffmpeg -f video4linux2 -framerate 30 -video_size hd1080 -input_format mjpeg -i /dev/video0 -vcodec libx264 -preset ultrafast -tune zerolatency -f matroska /tmp/video_pipe
```

---


to check the output use the following optinos



```bash
ffplay -fflags nobuffer -flags low_delay -framedrop /tmp/video_pipe
```

---

