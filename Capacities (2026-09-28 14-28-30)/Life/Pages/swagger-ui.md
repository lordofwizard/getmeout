---
type: 'Page'
title: swagger-ui
aliases: null
description: null
icon: null
createdAt: '2024-09-16T07:10:08.382Z'
lastUpdated: '2024-09-16T08:07:11.139Z'
tags: [springboot, Vanderlande, Documentation]
coverImage: null
---

# swagger-ui

### 1. Add Dependencies

To use Swagger with Spring Boot, you need to include the `springdoc-openapi` dependency in your `pom.xml` (for Maven) or `build.gradle` (for Gradle).

#### For Maven

Add the following dependency to your `pom.xml`:

```xml
<dependencies>
    <!-- Spring Boot Starter Web -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <!-- Springdoc OpenAPI -->
    <dependency>
        <groupId>org.springdoc</groupId>
        <artifactId>springdoc-openapi-ui</artifactId>
        <version>2.1.0</version> <!-- Use the latest version -->
    </dependency>
</dependencies>
```

#### For Gradle

Add the following to your `build.gradle`:

```text
dependencies {
    // Spring Boot Starter Web
    implementation 'org.springframework.boot:spring-boot-starter-web'

    // Springdoc OpenAPI
    implementation 'org.springdoc:springdoc-openapi-ui:2.1.0' // Use the latest version
}
```

### 2. Configuration (Optional)

In most cases, `springdoc-openapi` works out of the box without additional configuration. However, you can customize the OpenAPI documentation by adding configuration properties in your `application.properties` or `application.yml` file.

**Example** `application.properties`**:**

```text
# Customize OpenAPI info
springdoc.api-docs.title=My API
springdoc.api-docs.description=This is a sample API documentation
springdoc.api-docs.version=1.0.0
springdoc.api-docs.contact.name=John Doe
springdoc.api-docs.contact.url=http://www.example.com
springdoc.api-docs.contact.email=johndoe@example.com

# Customize Swagger UI path (default is /swagger-ui.html)
springdoc.swagger-ui.path=/swagger-ui.html
```

**Example** `application.yml`**:**

```yaml
springdoc:
  api-docs:
    title: My API
    description: This is a sample API documentation
    version: 1.0.0
    contact:
      name: John Doe
      url: http://www.example.com
      email: johndoe@example.com

  swagger-ui:
    path: /swagger-ui.html
```

### 3. Create REST Controllers

Define your REST controllers as usual. Swagger will automatically generate documentation for your APIs based on the annotations you use in your controllers.

**Example Controller:**

```java
package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiController {

    @GetMapping("/greeting")
    public String getGreeting() {
        return "Hello, World!";
    }
}
```

### 4. Access Swagger UI

Once your Spring Boot application is running, you can access the Swagger UI at:

```text
http://localhost:8080/swagger-ui.html
```

This URL will display the interactive Swagger UI where you can explore and test your RESTful APIs.

### 5. Customize API Documentation

You can use annotations from the `springdoc-openapi` library to further customize your API documentation.

**Example with Annotations:**

```java
package com.example.demo.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Operation(summary = "Get Greeting", description = "Returns a greeting message")
    @ApiResponses(value = {
        @ApiResponse(responseCode = "200", description = "Successful operation")
    })
    @GetMapping("/greeting")
    public String getGreeting() {
        return "Hello, World!";
    }
}
```

