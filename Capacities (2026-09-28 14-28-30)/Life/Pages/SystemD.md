---
type: 'Page'
collections: 'GNU/Linux'
title: SystemD
aliases: null
description: 'Useful stuff for system services and relative information. '
icon: null
createdAt: '2024-04-04T10:44:33.589Z'
lastUpdated: '2024-05-16T14:06:04.848Z'
tags: [Linux, cli]
coverImage: '[image](../Images/image%20(48).md)'
---

# SystemD



Collection of things I have done with systemctl and systemd in general.

---


## SystemD Services



A systemd service is nothing but a daemon type service that runs in the background whenever you start your system. it is launched via systemd.

A basic structure of this service will be mentioned below. 

- `systemctl start <service>`: Start a service.

- `systemctl stop <service>`: Stop a service.

- `systemctl restart <service>`: Restart a service.

- `systemctl status <service>`: Check the status of a service.

- `systemctl enable <service>`: Enable a service to start on boot.

- `systemctl disable <service>`: Disable a service from starting on boot.

- `systemctl list-units`: List all active units (services, sockets, devices, etc.).

- `systemctl list-unit-files`: List all available unit files.

Replace **<service>** with the `service_name.service`

---


# Lingering Session

Lingering session allows you to give permission to run user services without the user being ****LOGGED IN****

```bash
sudo loginctl enable-linger lordofwizard
```

Replace *lordofwizard* with the username of your user name. 



---

## Making User Services.

```yaml
[Unit]
Description=Robonet API Service [RigBetel Labs LLP]
After=NetworkManager.service

[Service]
Type=simple
ExecStart=/home/ubuntu/.config/robo/api/start.sh
Restart=always
RestartSec=25

[Install]
WantedBy=default.target
```

---



