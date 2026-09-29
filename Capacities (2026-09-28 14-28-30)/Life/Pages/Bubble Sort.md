---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Bubble Sort
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:22:15.867Z'
lastUpdated: '2025-03-05T08:18:51.922Z'
tags: []
coverImage: null
---

# Bubble Sort

#### **Definition**

Bubble Sort is a **simple** sorting algorithm that repeatedly **swaps** adjacent elements if they are in the wrong order, **"bubbling"** the largest element to the end in each pass.



#### **Where to Use?**

- When the input is **almost sorted** (best case O(n)).

- When **simplicity** is more important than efficiency.

- When teaching sorting algorithms (good for beginners).



#### **Type of Data Sorted**

- Numbers, strings, or any data with a **comparison operator**.

#### **Time Complexity**

| Case        | Time Complexity       |
| :---------- | :-------------------- |
| **Best**    | O(n) (Already sorted) |
| **Average** | O(n²)                 |
| **Worst**   | O(n²)                 |

```python
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j] #swap chal rha idher bc

```


