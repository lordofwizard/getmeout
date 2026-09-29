---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Singly Linked List
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:33:39.184Z'
lastUpdated: '2025-03-05T08:18:51.891Z'
tags: []
coverImage: null
---

# Singly Linked List

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def append(self, data):  # O(n)
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        temp = self.head
        while temp.next:
            temp = temp.next
        temp.next = new_node

    def display(self):  # O(n)
        temp = self.head
        while temp:
            print(temp.data, end=" -> ")
            temp = temp.next
        print("None")

# Example Usage
ll = LinkedList()
ll.append(10)
ll.append(20)
ll.append(30)
ll.display()  # 10 -> 20 -> 30 -> None

```

