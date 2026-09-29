---
type: 'Page'
collections: 'Final Year Project'
title: Paper for IEEE on ELFS
aliases: null
description: null
icon: null
createdAt: '2024-10-06T10:47:41.979Z'
lastUpdated: '2024-10-06T13:39:02.900Z'
tags: [AjeenkyaDYPatilSchoolOfEng, ELFS]
coverImage: null
---

# Paper for IEEE on ELFS

Introduction :

What is elfs? ELFS also called as Efficient lossless File system. is a dwarfs and squashfs inspired read and write based file system. It follows modern terminologies and tries to give you a read and write file system on a compressed system. 

You can stream movies/ play games and do basically anything cause you physically mount a compressed file system to a folder and elfs-daemon figures out which calls are to be made and acts as a middleware. 

---

Process of how elfs is gonna function ?

First understand these things, a storage blob is a temporary storage where you save some information for some time. then after the work is done that information is removed. 

Elfs first takes all data in and while compressing it it makes small small parts of compressed storage.

while you access a elfs-blob also called as a cold storage blob. they become hot (uncompressed) blob in real time by elfs-daemon. 

while the changes in the file system are cached and they become cold when that blob is not doing any reading operation.

---

Write some workings of btrfs here
​Write how compression works on btrfs

Write few references on btrfs

write how compression works in general

