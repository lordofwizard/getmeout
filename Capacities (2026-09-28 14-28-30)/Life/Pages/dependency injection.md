---
type: 'Page'
title: dependency injection
aliases: null
description: null
icon: null
createdAt: '2024-09-16T07:10:22.836Z'
lastUpdated: '2024-09-16T08:07:11.132Z'
tags: []
coverImage: null
---

# dependency injection

```java
// Application.java
package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @Bean
    public Service service() {
        return new ServiceImpl();
    }

    @Bean
    public Consumer consumer(Service service) {
        return new Consumer(service);
    }
}

```

