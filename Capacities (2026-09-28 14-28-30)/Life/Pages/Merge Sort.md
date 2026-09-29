---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Merge Sort
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:20:01.123Z'
lastUpdated: '2025-03-05T08:19:01.306Z'
tags: []
coverImage: null
---

# Merge Sort

#### **Definition**

Merge Sort is a **divide and conquer** sorting algorithm that **splits** an array into halves, recursively sorts them, and then **merges** the sorted halves.



#### **Where to Use?**

- When **stable sorting** is needed (maintains order of equal elements).

- When dealing with **linked lists** (no need for extra space like arrays).

- When sorting **large datasets**, as it has a **guaranteed O(n log n) time complexity**.

#### **Type of Data Sorted**

- Numbers, strings, or any data with a **comparison operator**.

#### **Time Complexity**

| Case        | Time Complexity |
| :---------- | :-------------- |
| **Best**    | O(n log n)      |
| **Average** | O(n log n)      |
| **Worst**   | O(n log n)      |


```python
def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])
    return merge(left, right)

def merge(left, right):
    result = []
    i = j = 0
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
    result.extend(left[i:])
    result.extend(right[j:])
    return result
```

