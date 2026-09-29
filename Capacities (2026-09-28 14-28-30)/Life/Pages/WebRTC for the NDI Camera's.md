---
type: 'Page'
title: WebRTC for the NDI Camera's
aliases: null
description: null
icon: null
createdAt: '2024-07-09T11:20:49.657Z'
lastUpdated: '2025-01-05T11:43:29.617Z'
tags: [WebRTC, Linux, righ, RigBetelLabs, cli, stuff, FFmpeg]
coverImage: null
---

# WebRTC for the NDI Camera's

---

```bash
sudo apt update
sudo apt install git
```

Clone this repository

```bash
git clone https://github.com/lplassman/FFMPEG-NDI.git
```

Clone the FFMPEG repository and `cd` into it

```bash
git clone https://git.ffmpeg.org/ffmpeg.git && cd ffmpeg
```

Checkout 4.4 or later version of FFMPEG

```bash
git checkout n5.1
```

### Apply Generic GitHub Email

```bash
git config user.email "you@example.com"
```

### Apply Patch to revert changes when NDI was removed from FFMPEG

```bash
sudo git am ../FFMPEG-NDI/libndi.patch
sudo cp ../FFMPEG-NDI/libavdevice/libndi_newtek_* libavdevice/
```

At this point, FFMPEG is now reverted back to the way it was before NDI was removed from it.

### Install Prerequisites for building FFMPEG with base libraries

```bash
sudo bash ../FFMPEG-NDI/preinstall.sh
```

### Choose the appropriate NDI install for the CPU architecture

#### Install NDI Libraries on Raspberry Pi 4 64-bit

```bash
sudo bash ../FFMPEG-NDI/install-ndi-rpi4-aarch64.sh
```

#### Install NDI Libraries on Raspberry Pi 4 32-bit

```bash
sudo bash ../FFMPEG-NDI/install-ndi-rpi4-armhf.sh
```

#### Install NDI Libraries on Raspberry Pi 3 32-bit

```bash
sudo bash ../FFMPEG-NDI/install-ndi-rpi3-armhf.sh
```

#### Install NDI Libraries on x86_64 bit (Intel/AMD)

```bash
sudo bash ../FFMPEG-NDI/install-ndi-x86_64.sh
```

#### Install NDI Libraries on generic ARM64

Compiling on generic ARM64 requires use of the NDI Advanced SDK. Due to licensing restrictions, the NDI Advanced SDK must be downloaded manually from NDI's website: ndi.tv
Extract the downloaded NDI Advanced SDK .tar file and copy it to the ffmpeg directory on the target device. This can be achieved by using FTP, SCP, or Samba.

```bash
sudo bash ../FFMPEG-NDI/install-ndi-generic-aarch64.sh
```

#### Install NDI Libraries on generic ARM32

Compiling on generic ARM32 requires use of the NDI Advanced SDK. Due to licensing restrictions, the NDI Advanced SDK must be downloaded manually from NDI's website: ndi.tv
Extract the downloaded NDI Advanced SDK .tar file and copy it to the ffmpeg directory on the target device. This can be achieved by using FTP, SCP, or Samba.

```bash
sudo bash ../FFMPEG-NDI/install-ndi-generic-armhf.sh
```

## Build and Install FFMPEG

The following is the bare minimum needed for sending and receiving NDI and more options can be added for a more feature filled FFMPEG build.

```bash
./configure --enable-nonfree --enable-libndi_newtek
make -j $(nproc)
sudo make install
```


---



---

# Make sure you have v4l2loopback-dkms

Install v4l2loopback-dkms via apt

```bash
sudo modprobe v4l2loopback devices=1 video_nr=69
```

```bash
sudo ffmpeg -f libndi_newtek -i 'RBLPC (ndi_send)' -f v4l2 -framerate 30 -video_size 1280x720 -pixel_format mjpeg -pix_fmt uyvy422 /dev/video69
```

---

in another terminal



```bash
git clone https://github.com/lordofwizard/webrtc-ndi
cd webrtc-ndi
python3 webcam.py
```


