---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Radix Sort
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:29:51.832Z'
lastUpdated: '2025-03-05T08:18:51.907Z'
tags: []
coverImage: null
---

# Radix Sort

#### **Definition**

Radix Sort is a **non-comparative** sorting algorithm that sorts numbers **digit by digit** from the least significant to the most significant, using a stable sorting algorithm (like Counting Sort) as a subroutine.

#### **Where to Use?**

- When sorting **large numbers** with a fixed digit length (e.g., phone numbers, zip codes).

- When sorting **integers or strings** where the number of digits/characters is significantly smaller than the number of elements.

- When **comparison-based sorting (O(n log n)) is too slow**.

#### **Type of Data Sorted**

- **Integers** (decimal, binary, hexadecimal).

- **Strings** (character-by-character sorting).

#### **Time Complexity**

| Case        | Time Complexity |
| :---------- | :-------------- |
| **Best**    | O(nk)           |
| **Average** | O(nk)           |
| **Worst**   | O(nk)           |

*(where* `n` *is the number of elements,* `k` *is the number of digits in the largest number)*

```python
def radix_sort(arr):
    max_num = max(arr)
    exp = 1
    while max_num // exp > 0:
        counting_sort(arr, exp)
        exp *= 10

def counting_sort(arr, exp):
    n = len(arr)
    output = [0] * n
    count = [0] * 10

    for num in arr:
        count[(num // exp) % 10] += 1

    for i in range(1, 10):
        count[i] += count[i - 1]

    for i in range(n - 1, -1, -1):
        digit = (arr[i] // exp) % 10
        output[count[digit] - 1] = arr[i]
        count[digit] -= 1

    for i in range(n):
        arr[i] = output[i]

```

#### **Extra Info**

- **Only works for non-negative integers** (but can be modified for negatives).

- **Faster than comparison-based sorting** for fixed-length numbers.

- **Stable sorting algorithm** ✅.

- **Not in-place** ❌ (requires extra space).

- Used in **database indexing, telephone directories, and lexical sorting**.

