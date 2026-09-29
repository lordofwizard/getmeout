---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Heap Sort
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:27:22.753Z'
lastUpdated: '2025-03-05T08:18:51.914Z'
tags: []
coverImage: null
---

# Heap Sort

#### **Definition**

Heap Sort is a **comparison-based sorting algorithm** that first **builds a max-heap** and then repeatedly extracts the maximum element, placing it at the end of the array.

#### **Where to Use?**

- When **O(n log n) sorting is needed without extra space** (unlike Merge Sort).

- When **priority queue operations** (insert, extract-max) are required.

- When sorting **large datasets** efficiently.

#### **Type of Data Sorted**

- Numbers, strings, or any data with a **comparison operator**.

#### **Time Complexity**

| Case        | Time Complexity |
| :---------- | :-------------- |
| **Best**    | O(n log n)      |
| **Average** | O(n log n)      |
| **Worst**   | O(n log n)      |

```python
def heapify(arr, n, i):
    largest = i  
    left = 2 * i + 1  
    right = 2 * i + 2  

    if left < n and arr[left] > arr[largest]:
        largest = left
    if right < n and arr[right] > arr[largest]:
        largest = right
    if largest != i:
        arr[i], arr[largest] = arr[largest], arr[i]
        heapify(arr, n, largest)

def heap_sort(arr):
    n = len(arr)
    for i in range(n // 2 - 1, -1, -1):
        heapify(arr, n, i)
    for i in range(n - 1, 0, -1):
        arr[i], arr[0] = arr[0], arr[i]  
        heapify(arr, i, 0)

```



shorter version 



```python
import heapq

def heap_sort(arr):
    heapq.heapify(arr)  # Convert list into a min-heap
    return [heapq.heappop(arr) for _ in range(len(arr))]
```


