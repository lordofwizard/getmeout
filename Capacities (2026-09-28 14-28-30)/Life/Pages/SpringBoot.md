---
type: 'Page'
title: SpringBoot
aliases: null
description: null
icon: null
createdAt: '2024-09-16T07:10:40.060Z'
lastUpdated: '2024-09-16T08:07:11.153Z'
tags: []
coverImage: null
---

# SpringBoot

Annotations 

| Annotation                 | Description                                                                                                |
| :------------------------- | :--------------------------------------------------------------------------------------------------------- |
| `@SpringBootApplication`   | Combines `@Configuration`, `@EnableAutoConfiguration`, and `@ComponentScan` for a Spring Boot application. |
| `@Configuration`           | Indicates that the class provides Spring configuration.                                                    |
| `@ComponentScan`           | Specifies the packages to scan for annotated components.                                                   |
| `@EnableAutoConfiguration` | Enables Spring Boot’s auto-configuration feature.                                                          |
| `@Component`               | Marks a class as a Spring component, which is automatically detected and registered.                       |
| `@Service`                 | A specialized version of `@Component` for service layer classes.                                           |
| `@Repository`              | A specialized version of `@Component` for persistence layer classes.                                       |
| `@Controller`              | Marks a class as a Spring MVC controller.                                                                  |
| `@RestController`          | A specialized version of `@Controller` with `@ResponseBody`, simplifying RESTful controllers.              |
| `@RequestMapping`          | Maps HTTP requests to handler methods of MVC and REST controllers.                                         |
| `@GetMapping`              | Shorthand for `@RequestMapping` with method set to GET.                                                    |
| `@PostMapping`             | Shorthand for `@RequestMapping` with method set to POST.                                                   |
| `@PutMapping`              | Shorthand for `@RequestMapping` with method set to PUT.                                                    |
| `@DeleteMapping`           | Shorthand for `@RequestMapping` with method set to DELETE.                                                 |
| `@PathVariable`            | Binds a method parameter to a URI template variable.                                                       |
| `@RequestParam`            | Binds a method parameter to a web request parameter.                                                       |
| `@Autowired`               | Automatically injects dependencies into a bean.                                                            |
| `@Qualifier`               | Specifies which bean to inject when multiple beans of the same type exist.                                 |
| `@Value`                   | Injects values into fields from properties files or environment variables.                                 |
| `@Bean`                    | Declares a bean to be managed by the Spring container.                                                     |
| `@Profile`                 | Specifies the profiles in which a bean should be active.                                                   |
| `@Transactional`           | Specifies that a method or class should be run within a transaction context.                               |
| `@Entity`                  | Marks a class as a JPA entity.                                                                             |
| `@Table`                   | Specifies the table in the database associated with an entity.                                             |
| `@Id`                      | Defines the primary key of an entity.                                                                      |
| `@GeneratedValue`          | Provides strategy for generating primary key values.                                                       |
| `@Column`                  | Maps a field to a column in the database.                                                                  |
| `@RepositoryRestResource`  | Exposes JPA repositories as RESTful resources.                                                             |
| `@EnableJpaRepositories`   | Enables JPA repositories.                                                                                  |
| `@SpringBootTest`          | Provides comprehensive integration testing support for Spring Boot applications.                           |
| `@DataJpaTest`             | Focuses on JPA components and configuration, useful for testing JPA-related components.                    |
| `@WebMvcTest`              | Focuses on Spring MVC components and configuration, useful for testing MVC controllers.                    |
| `@MockBean`                | Creates and injects mock beans into the Spring application context.                                        |
| `@Profile`                 | Indicates that a component is only available in specific profiles.                                         |
