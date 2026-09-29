---
type: 'Page'
collections: 'GNU/Linux'
title: BTRFS + Arch
aliases: null
description: null
icon: null
createdAt: '2024-04-21T08:53:55.063Z'
lastUpdated: '2024-04-22T10:53:28.755Z'
tags: [Arch, Linux, cli, Article]
coverImage: null
---

# BTRFS + Arch

# BtrFs Guide on how to install it on arch linux

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/98479be2-3a82-48e8-aeca-a320d3ad7a87/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085821Z&X-Amz-Expires=43200&X-Amz-Signature=958e2967cbd2c5f81554f15979424fdca9ccf3ce281a90c861aa75a9aacf7f36&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(17).md)

---

1. Get your system ready for a basic arch installation. **WE DON"T USE ARCHINSTALL SCRIPT** we are ***better***. 

```bash
timedatectl set-ntp true
hwclock -w
```

### Setup your partitions (MOST IMP STEP)

1. do `fdisk -l` to checkout what paritions you have. and then select the drive

2. for me it's like this. 

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/6cc4e145-0bf1-49ff-8e00-7772a56e2893/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085827Z&X-Amz-Expires=43200&X-Amz-Signature=27a1cdd0cdc43bf546c7c85f0f4f6d30d3b10264d93f301a2db81a0edade97b9&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(110).md)

---

### Make partitions using FDisk

*Note you have to select the proper drive for your system, if you mess this up. you can lose your data forever.*

This is how you make a `/boot` partition.

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/ee324a4f-e0e2-4927-99d7-1159f58613eb/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085825Z&X-Amz-Expires=43200&X-Amz-Signature=7baac62ada3e36a8f6f042745d52e7c2fb92be04c8d402323c673bdabe6289e4&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(83).md)

```bash
n - for new partition
p - for selecting primary partition
+500M - size
```

---

### With this now make partitions accordingly. 

for demo purposes imma make a 

1. 500 MB partition for my **legacy** bios computer

2. 2 gb partition for my **swap** parition

3. and rest of approx 38.5 gb for my `/root` partition.

---

For me i am on *LEGACY* boot. but for EFI steps are different

![image](https://capacities-files.s3.eu-central-1.amazonaws.com/private/cd0a026a-9095-49d4-b063-da1120776f14/raw.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIA5VTNRR6EBR56K2NK%2F20260928%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20260928T085826Z&X-Amz-Expires=43200&X-Amz-Signature=0a1aa558b700a3809ff01c22d11daa5d996c3382444142b1fda8e1322ae92897&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)
[image - Notes](../Images/image%20(105).md)

---

### Mount them

```bash
mount /dev/vda3 /mnt
btrfs subvolume create /mnt/@ 
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@srv 
btrfs subvolume create /mnt/@cache
btrfs subvolume create /mnt/@log
umount /mnt
```

---

### Mount Partitions with options with paths and stuff

```bash
mount -o defaults,noatime,compress=zstd,subvol=@ /dev/vda3 /mnt
```

```bash
mount /dev/vda1 /mnt/boot
mkdir /mnt/boot
```

```bash
swapon /dev/vda2
```

---

**Make sure you make the directories for the required folders you are gonna install**

```bash
mkdir /mnt/{home,var,srv}
mkdir /mnt/var/{cache,log}
```

```bash
mount -o defaults,noatime,compress=zstd,subvol=@home /dev/vda3 /mnt/home
mount -o defaults,noatime,compress=zstd,subvol=@cache /dev/vda3 /mnt/var/cache
mount -o defaults,noatime,compress=zstd,subvol=@log /dev/vda3 /mnt/var/log
mount -o defaults,noatime,compress=zstd,subvol=@srv /dev/vda3 /mnt/srv
```

---

Now you are free to do whatever you want basically. but here's a small guide on how i setup my installation

OPTIONAL *before this step, i generally like to change my* `/etc/pacman.conf` to enable `ParallelDownloads` and set it to 10

just to make things significantly faster to 

```bash
pacstrap /mnt vim nano grub base base-devel linux linux-firmware networkmanager neofetch
```

---

### *Chrooting* in to our created system

```bash
arch-chroot /mnt
```

#### The usual locale steps

```bash
vim /etc/locale.gen
locale-gen
export LANG=en_us.UTF-8
echo "LANG=en_us.UTF-8" > /etc/locale.conf
echo laptop_name > /etc/hostname
```

#### Edit your hosts file to set Network Functionalities on local area network

```bash
vim /etc/hosts
```

```bash
127.0.0.1	localhost
::1         localhost
127.0.1.1	laptop_name
```

---

### Set Root Password and stuff

```bash
passwd
systemctl enable NetworkManager
```

---

### Grub Configuration

```bash
grub-install /dev/vda
grub-mkconfig -o /boot/grub/grub.cfg
```

Grub Setup done ✅️ but note this is for Legacy Bios you need to follow different steps if your bios are UEFI/EFI Bios.

---

```bash
exit
genfstab -U /mnt >> /mnt/etc/fstab
umount -R /mnt
```

---

### ALL DONE

```bash
reboot
```


