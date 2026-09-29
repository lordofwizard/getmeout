# RigBetel Labs

> One `###` block per deed. Source: Capacities notes ("Everything Advait did at RigBetel Labs",
> "Work done by Advait", 2024-08-05 farewell note).

## Role

- **Title:** Software Developer Intern
- **Team / org:** Robotics software (B2B autonomous robotics company)
- **Dates:** Dec 2023 – Jul 2024
- **Employment type:** Internship
- **Stack:** Rust, Python, C++, Bash, ROS, ROS2, Zenoh, WebRTC, FastAPI, Uvicorn, FFmpeg, NDI, ncurses, systemd, Docker, Google Cloud, Raspberry Pi, Intel NUC, GNU/Linux
- **Domain:** Autonomous robotics, robot networking, teleoperation, real-time video streaming, embedded
- **Scale signals:** RoboNet runs on every RigBetel Labs robot; robot platforms include Cepheus, Diadem, TTB-PRO-MAX, TortoiseBot

## Deeds

### RoboNet robot networking suite

- **Context:** Robots needed reliable, self-healing network connectivity and a way to configure and debug them without a monitor attached.
- **Action:** Built RoboNet, first in Bash and then in Python and Rust: robo-d hotspot keep-up daemon, logs service with a web server, and network tooling for Raspberry Pi and Intel NUC robot computers. Continued with a Rust rewrite (robonet-rs).
- **Metric:** Deployed on every RigBetel Labs robot; supports 2 compute platforms (Raspberry Pi, Intel NUC).
- **Tech:** Rust, Python, Bash, systemd, GNU/Linux, Raspberry Pi, Intel NUC
- **Keywords:** robot networking, Linux daemons, fleet tooling, systems programming, embedded Linux
- **Interview story:** Started as a Bash script and grew into the standard networking layer for the whole robot line; the rewrite path was Bash → Python → Rust as reliability requirements rose.

### Robot CLI tooling

- **Context:** Setting up a robot's Wi-Fi and ROS networking over SSH was manual and error-prone.
- **Action:** Built an ncurses Wi-Fi switching CLI that works over SSH (plus an Ubuntu 20.04 Python port), and robonet-getip / roboip (Rust) to return the single correct IP for ROS_MASTER_URI.
- **Metric:** Shipped 4 CLI tools (robot_hotspot, robot_hotspot_20.04_py, robonet-getip, roboip).
- **Tech:** Rust, Python, Bash, ncurses, ROS, GNU/Linux
- **Keywords:** CLI tools, developer tooling, ROS networking, SSH, Linux
- **Interview story:** Picking "the right IP" on a multi-interface robot sounds trivial until ROS binds to the wrong one; the tool made ROS_MASTER_URI setup a single command.

### EncoderManager embedded motor-tick library

- **Context:** Robot control needed real-time wheel encoder ticks published into ROS.
- **Action:** Co-wrote an embedded C++ library with Suyash to read motor encoder ticks in real time and publish them via ROS.
- **Metric:** 1 embedded library (EncoderManager_rbl) feeding real-time encoder data into ROS.
- **Tech:** C++, embedded, ROS
- **Keywords:** embedded C++, motor encoders, odometry, real-time, ROS
- **Interview story:** First embedded work on the team; turned raw motor ticks into a reusable ROS data source.

### Real-time video transport benchmarks and WebRTC camera middleware

- **Context:** Remote robot operation needed multiple camera feeds streamed over one channel with low latency.
- **Action:** Built sender → mediator → receiver benchmarks on Google Cloud comparing WebRTC, TCP, UDP and Zenoh-DDS; iterated WebRTC signaling/streaming prototypes to a working version; built a WebRTC middleware for NDI IP cameras using FFmpeg (NDI patch) and v4l2loopback.
- **Metric:** Benchmarked 4 transports; streamed NDI camera feeds at 1280x720 / 30 fps over WebRTC.
- **Tech:** WebRTC, Python, FFmpeg, NDI, v4l2loopback, UDP, TCP, Zenoh, Google Cloud
- **Keywords:** real-time video streaming, WebRTC, latency benchmarking, IP cameras, teleoperation
- **Interview story:** Measured before choosing — ran the same stream through 4 transports, then built on the winner instead of guessing.

### Internet teleoperation with Zenoh

- **Context:** Robots were only controllable on the local network.
- **Action:** Set up a Zenoh router on Google Cloud and zenoh-bridge-dds on robot and client, enabling ROS2 TeleOp of a TortoiseBot over the internet; wrote Zenoh wrappers and internet/local pub-sub setups.
- **Metric:** Made robots reachable from any network through 1 cloud-hosted Zenoh router.
- **Tech:** Zenoh, ROS2 (Galactic), DDS, Google Cloud, Docker, GNU/Linux
- **Keywords:** teleoperation, Zenoh, ROS2, pub/sub, cloud robotics, DDS bridging
- **Interview story:** DDS doesn't cross NAT; bridging it through a Zenoh router turned a LAN-only robot into an internet-controllable one.

### netpub ROS2 network publisher

- **Context:** Robot UIs and operators needed live network status from each robot.
- **Action:** Wrote netpub, a ROS2 C++ network-information publisher suite with serial input.
- **Metric:** Supports 3 robot platforms (Cepheus, Diadem, TTB-PRO-MAX).
- **Tech:** C++, ROS2, serial
- **Keywords:** ROS2, C++, robot telemetry, network monitoring
- **Interview story:** One small C++ node reused across three robot products instead of per-robot scripts.

### Robot configuration API and web servers

- **Context:** Robot functions needed to be configurable remotely rather than by editing files on-device.
- **Action:** Built an API layer in Python/FastAPI to configure a robot and its functions through RoboNet, and a FastAPI/Uvicorn web server for the RosBag app.
- **Metric:** Delivered 2 services (RoboNet config API, ros_webserver).
- **Tech:** Python, FastAPI, Uvicorn, REST APIs, ROS
- **Keywords:** REST API, FastAPI, robot configuration, rosbag, backend
- **Interview story:** Put on-robot configuration behind a REST API so nobody had to SSH in to change settings.

### Robot bring-up and image automation

- **Context:** New robot images and Unity-controlled robots needed repeatable bring-up.
- **Action:** Wrote systemd bring-up services, a Raspberry Pi image setup (KDE Plasma + ROS), Xorg display-cookie fixes, and Unitify, a Python CLI that configures bring-up and autostart for the Unity robot-control app.
- **Metric:** Reduced Unity robot-control setup to 1 script run.
- **Tech:** Python, Bash, systemd, Xorg, Raspberry Pi, ROS, GNU/Linux
- **Keywords:** provisioning, systemd, Linux automation, robot bring-up
- **Interview story:** Turned tribal-knowledge setup steps into a script anyone could run.

## Recognition

- Mentor Shubham trusted me with the team's hardest tasks: WebRTC data sharing, Zenoh TeleOp, the RoboNet suite.

## Things I own / am the go-to for

- RoboNet and robot networking
- Linux / systemd tooling on robots
- Real-time video transport (WebRTC, Zenoh)
