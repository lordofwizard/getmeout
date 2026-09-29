---
type: 'Page'
collections: 'Data Structures and Algorithms'
title: Doubly Linked List
aliases: null
description: null
icon: null
createdAt: '2025-03-04T09:34:05.072Z'
lastUpdated: '2025-03-05T08:18:51.884Z'
tags: []
coverImage: null
---

# Doubly Linked List

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None

class DoublyLinkedList:
    def __init__(self):
        self.head = None

    def append(self, data):  # O(1) if tail is maintained, O(n) otherwise
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        temp = self.head
        while temp.next:
            temp = temp.next
        temp.next = new_node
        new_node.prev = temp

    def display(self):  # O(n)
        temp = self.head
        while temp:
            print(temp.data, end=" <-> ")
            temp = temp.next
        print("None")

# Example Usage
dll = DoublyLinkedList()
dll.append(5)
dll.append(15)
dll.append(25)
dll.display()  # 5 <-> 15 <-> 25 <-> None

```

