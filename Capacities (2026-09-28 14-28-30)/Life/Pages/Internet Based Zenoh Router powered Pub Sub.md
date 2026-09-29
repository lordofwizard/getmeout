---
type: 'Page'
collections: 'Zenoh'
title: Internet Based Zenoh Router powered Pub Sub
aliases: null
description: null
icon: null
createdAt: '2024-04-30T14:35:31.470Z'
lastUpdated: '2025-01-05T11:43:22.963Z'
tags: [Linux, Zenoh, RigBetelLabs, Docker]
coverImage: null
---

# Internet Based Zenoh Router powered Pub Sub

This is a internet version of [[Local Pub Sub]] and here's how the setup is configured.

1. The Publisher is running on a [Setup Zenoh as Router on Google Cloud Shell.](./Setup%20Zenoh%20as%20Router%20on%20Google%20Cloud%20Shell.md). Google Cloud shell.

2. and you are running the subscriber on a local machine



# Publisher on GCloud 

```python
import zenoh, random, time

random.seed()

def read_temp():
    return random.randint(15, 30)

if __name__ == "__main__":
    session = zenoh.open()
    key = 'myhome/kitchen/temp'
    pub = session.declare_publisher(key)
    while True:
        t = read_temp()
        buf = f"{t}"
        print(f"Putting Data ('{key}': '{buf}')...")
        pub.put(buf)
        time.sleep(1)
```



# Subscriber on Local Machine

```python
import zenoh, time

conf = zenoh.Config()
conf.insert_json5(zenoh.config.CONNECT_KEY, '["tcp/IP_FROM_PLAYIT"]')

def listener(sample):
    print(f"Received {sample.kind} ('{sample.key_expr}': '{sample.payload.decode('utf-8')}')")

if __name__ == "__main__":
    session = zenoh.open(conf)
    sub = session.declare_subscriber('myhome/kitchen/temp', listener)
    time.sleep(60)
```

⚠️ **REMEMBER TO REPLACE** 

***IP_FROM_PLAYIT***  wiht the tcpip:port you recieved from your playit session.



---

