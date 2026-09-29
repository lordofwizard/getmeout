---
type: 'Page'
collections: 'Robotics'
title: Bring Up SystemD Service
aliases: null
description: null
icon: null
createdAt: '2024-04-07T07:43:15.559Z'
lastUpdated: '2024-04-07T07:46:05.905Z'
tags: [Linux, Docker, RigBetelLabs, cli]
coverImage: null
---

# Bring Up SystemD Service

Entire process of installing bringup manually using a [[SystemD|systemd]] service.

## 1. Remove existing bringup launch files using `rosrun`

```bash
rosrun robot_upstart uninstall robot_uppstart_service
```

*Note : robot_upstart_service replace this with your service name without* `.service` *extension*.

## 2. Create a bash script for roslaunch to upstart your robo. (For Simplycity I'll call this launch.sh)

```bash
#!/bin/bash
counter=10  # Set counter variable to 10
echo "home = $HOME"
source /opt/ros/noetic/setup.bash
source /home/amrita-acrux/ros1_ws/devel/setup.bash
export ROS_HOSTNAME=$(hostname -I | awk '{print $1}')
# Function to check and source the file
check_and_source() {
    if [[ "$ROS_HOSTNAME" == *"localhost"* || -z "$ROS_HOSTNAME" ]]; then
        source $HOME/.bashrc
        return 0  # Success
    else
        return 1  # Failure
    fi
}
# Attempt to source the file counter times
while [ $counter -gt 0 ]; do
    check_and_source
    if [ $? -eq 0 ]; then
        ((counter--))
    else
        break
    fi
    sleep 1
done
# Check if the loop was successful
if [ $counter -eq 0 ]; then
    echo "DIDN'T WORK"
else
    echo "LET'S GOO"
    roslaunch ROBOT_FIRMWARE ROBOT_LAUNCH_FILE.LAUNCH
fi
```

*Note, here replace ROBOT_FIRMWARE with Your Robot's Package name.**and Replace ROBOT_LAUNCH_FILE.LAUNCH with your robot's Laucnh File.*

**IMPORTANT**. (Make sure the file you created has executable permissions)

```bash
chmod +x launch.sh
```

## 3. Create a SystemD service for a specific robot user.

on this path `/etc/systemd/user/robot_bringup.service`

```yaml
[Unit]
Description=RigBetel Labs ROBOT UPSTART SCRIPT
After=NetworkManager.service
[Service]
Type=simple
ExecStart=/path/to/your/above/bash/script.sh
Restart=always
[Install]
WantedBy=default.target
```

*Note If Possible try changing $HOME with your full path as it will be more accurate.*Replace `/path/to/your/above/bash/launch.sh` with the path to your launch.sh shell script.

## 4. Now Enable the systemd service for that specific user only

```bash
systemctl enable --user robot_bringup.service
```

*NOTE : We are not running the below command with* ***SUDO****, don't use sudo as we are doing it for the robot user only*.

## 5. Check whether the systemd service is started correctly or not. Some helpful commands are given below.

```bash
systemctl start --user robot_bringup.service
```

Check Status

```bash
systemctl status --user robot_bringup.service
```

To check Logs

```bash
journalctl --user-unit robot_bringup.service
```

## 6. Enable a Lingering session

*Note this is the most important step*.Why are are doing this? We need something to start a user session so that after each boot it should start the systemd service automatically.

```bash
loginctl enable-linger
```

*Note, make sure you are doing it from the same user you configured the service*

**OR**

```bash
loginctl enable-linger robot-username
```

