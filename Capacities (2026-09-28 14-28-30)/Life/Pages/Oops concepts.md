---
type: 'Page'
collections: 'Vanderlande'
title: Oops concepts
aliases: null
description: null
icon: null
createdAt: '2024-09-16T07:47:22.514Z'
lastUpdated: '2024-09-17T05:02:59.897Z'
tags: [Java]
coverImage: null
---

# Oops concepts

# Object-Oriented Programming (OOP) Concepts in Java

Object-Oriented Programming (OOP) in Java revolves around the concept of "objects" that encapsulate both data and behavior. Here are the core concepts:

## 1. **Class**

A class is a blueprint for creating objects. It defines the properties and methods that the objects created from the class will have.

```java
public class Car {
    private String make;
    private String model;

    public Car(String make, String model) {
        this.make = make;
        this.model = model;
    }

    public void drive() {
        System.out.println("Driving a " + make + " " + model);
    }
}
```

## 2. **Object**

An object is an instance of a class. It represents a concrete example of the class with specific values.

```java
Car myCar = new Car("Toyota", "Corolla");
```

## 3. **Inheritance**

Inheritance allows one class to inherit fields and methods from another class, enabling code reuse and hierarchical relationships.

```java
public class ElectricCar extends Car {
    public ElectricCar(String make, String model) {
        super(make, model);
    }

    public void charge() {
        System.out.println("Charging the car");
    }
}
```

## 4. **Encapsulation**

Encapsulation involves hiding the internal state of an object and requiring all interaction to be performed through an object's methods.

```java
public class Person {
    private String name;  // Private attribute

    public Person(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
```

## 5. **Polymorphism**

Polymorphism allows methods to perform different tasks based on the object that invokes them, even if they share the same method name.

```java
public void startEngine(Vehicle vehicle) {
    vehicle.start();
}

interface Vehicle {
    void start();
}
```

In Java, these OOP principles help in designing flexible, reusable, and maintainable code.

