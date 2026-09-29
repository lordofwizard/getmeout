---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Array
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:31:14.401Z'
lastUpdated: '2025-03-05T08:18:51.899Z'
tags: []
coverImage: null
---

# Array

### **Python Array / List with All Operations 🚀**

In Python, we use **lists** instead of traditional arrays. Lists are **dynamic**, meaning they can grow/shrink as needed. If you need a **fixed-size array**, use the `array` module.

---

### **1️⃣ Creating a List (Array in Python)**

```python
arr = [10, 20, 30, 40, 50]  # List with elements
empty_arr = []  # Empty list
```

---

### **2️⃣ Accessing Elements**

```python
print(arr[0])  # First element → 10
print(arr[-1])  # Last element → 50
```

---

### **3️⃣ Modifying Elements**

```python
arr[2] = 100  # Change value at index 2
print(arr)  # [10, 20, 100, 40, 50]
```

---

### **4️⃣ Adding Elements**

```python
arr.append(60)  # Add at the end → O(1)
arr.insert(2, 25)  # Insert at index 2 → O(n)
print(arr)  # [10, 20, 25, 100, 40, 50, 60]
```

---

### **5️⃣ Removing Elements**

```python
arr.pop()  # Removes last element (default) → O(1)
arr.pop(2)  # Removes element at index 2 → O(n)
arr.remove(40)  # Removes first occurrence of 40 → O(n)
```

---

### **6️⃣ Searching Elements**

```python
print(100 in arr)  # Check if 100 exists → True
print(arr.index(100))  # Find index of 100 → O(n)
```

---

### **7️⃣ Sorting a List**

```python
arr.sort()  # Sort in ascending order → O(n log n)
arr.sort(reverse=True)  # Sort in descending order
```

---

### **8️⃣ Reversing a List**

```python
arr.reverse()  # Reverse the list
```

---

### **9️⃣ Iterating Through a List**

```python
for x in arr:
    print(x)
```

---

### **🔟 List Comprehension**

```python
squared = [x**2 for x in arr]  # Squaring each element
```

---

### **🔹 Time Complexity Summary**

| Operation                     | Time Complexity |
| :---------------------------- | :-------------- |
| Access (indexing)             | O(1)            |
| Append (add at end)           | O(1)            |
| Insert (at index)             | O(n)            |
| Remove (by value)             | O(n)            |
| Pop (end)                     | O(1)            |
| Pop (any index)               | O(n)            |
| Searching (`in` or `index()`) | O(n)            |
| Sorting (`sort()`)            | O(n log n)      |

---

### **📌 When to Use Lists?**

✅ When you need **dynamic resizing**

✅ When you need **fast access by index**

✅ When the order of elements **matters**

❌ **Not ideal for frequent insertions/deletions** in the middle (use `deque` instead)

---

🔥 **Want practice problems on lists?** 🚀

