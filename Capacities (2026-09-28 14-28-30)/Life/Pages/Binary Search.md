---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Binary Search
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:12:02.763Z'
lastUpdated: '2025-03-05T08:19:01.327Z'
tags: []
coverImage: null
---

# Binary Search

binary search is a algo where you search using devide and conquere

**NOTE** array must be sorted for this to work. 

```python
def binary_search(arr, x):
    l, r = 0, len(arr) - 1
    while l <= r:
        mid = (l + r) // 2
        if arr[mid] == x:
            return mid
        elif arr[mid] < x:
            l = mid + 1
        else:
            r = mid - 1
    return -1  
```



#### **Time Complexity**

| Operation | Time Complexity |
| :-------- | :-------------- |
| Search    | **O(log n)**    |
