---
type: 'Page'
collections: 'Zenoh'
title: Local Pub Sub
aliases: null
description: null
icon: null
createdAt: '2024-04-30T12:59:22.907Z'
lastUpdated: '2025-01-05T11:43:22.971Z'
tags: [Linux, Docker, RigBetelLabs, Zenoh]
coverImage: null
---

# Local Pub Sub

You need to install a few packages first.

```bash
python3 -m pip install eclipse-zenoh pycdr2
```

---

That's all you need. 



#### pub.py

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

#### sub.py

```python
import zenoh, time

def listener(sample):
    print(f"Received {sample.kind} ('{sample.key_expr}': '{sample.payload.decode('utf-8')}')")

if __name__ == "__main__":
    session = zenoh.open()
    sub = session.declare_subscriber('myhome/kitchen/temp', listener)
    time.sleep(60)
```

---

