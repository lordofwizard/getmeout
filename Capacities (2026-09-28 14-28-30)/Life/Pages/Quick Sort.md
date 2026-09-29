---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Quick Sort
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:16:53.260Z'
lastUpdated: '2025-03-05T08:19:01.316Z'
tags: []
coverImage: null
---

# Quick Sort

```python
def quicksort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quicksort(left) + middle + quicksort(right)
```

#### **Time Complexity**

| Case        | Time Complexity                                        |
| :---------- | :----------------------------------------------------- |
| **Best**    | O(n log n)                                             |
| **Average** | O(n log n)                                             |
| **Worst**   | O(n²) (when the pivot is the smallest/largest element) |


**NOTE**

```python
left = []
for x in arr:
    if x < pivot:
        left.append(x)

# is same as 

left = [x for x in arr if x < pivot]

```

