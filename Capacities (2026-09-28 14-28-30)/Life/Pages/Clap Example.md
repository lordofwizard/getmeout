---
type: 'Page'
collections: 'Rust'
title: Clap Example
aliases: null
description: null
icon: null
createdAt: '2024-12-19T10:08:49.533Z'
lastUpdated: '2024-12-19T10:13:15.618Z'
tags: [Rust, Linux, cli]
coverImage: null
---

# Clap Example

# How to setup a clap project?

 you worried? no worries bitch



first add the dependency

```bash
cargo add clap --features derive
```

Here's a detailed documentation on Clap derive and CLI app development in Rust:

# Clap Derive in Rust: Creating Command Line Applications

## Overview

Clap derive is a powerful attribute macro system in Rust for building command-line interfaces (CLIs). It's part of the `clap` crate and allows you to define your CLI structure using Rust structs and attributes.

## Basic Setup

First, add clap to your `Cargo.toml`:

```text
[dependencies]
clap = { version = "4.4", features = ["derive"] }
```

## Derive Attributes

The main attributes you'll use with clap derive are:

```rust
use clap::Parser;
#[derive(Parser)]
#[command(author, version, about)]
struct Cli {
    #[arg(short, long)]
    name: String,
    
    #[arg(short, long, default_value_t = 1)]
    count: u32,
    
    #[arg(long, default_value = "default")]
    config: String,
}
```

### Common Attributes

- `#[command(...)]`: Configures the overall CLI application

    - `author`: Uses author from Cargo.toml

    - `version`: Uses version from Cargo.toml

    - `about`: Uses description from Cargo.toml

- `#[arg(...)]`: Configures individual arguments

    - `short`: Single-letter flag (e.g., `-n`)

    - `long`: Full word flag (e.g., `--name`)

    - `default_value`: Default string value

    - `default_value_t`: Default value for non-string types

    - `required`: Mark argument as mandatory

    - `help`: Custom help message

## Subcommands

You can create nested subcommands using nested structs:

```rust
#[derive(Parser)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}
#[derive(Subcommand)]
enum Commands {
    Add {
        #[arg(short, long)]
        name: String,
    },
    Remove {
        #[arg(short, long)]
        id: u32,
    },
}
```

## Creating a Complete CLI Application

Here's a complete example of how to create a CLI app:

1. Create a new project:

```bash
cargo new my_cli
cd my_cli
```

1. Update `Cargo.toml`:

```text
[package]
name = "my_cli"
version = "0.1.0"
edition = "2021"
[dependencies]
clap = { version = "4.4", features = ["derive"] }
```

1. Write your `main.rs`:

```rust
use clap::Parser;
#[derive(Parser)]
#[command(author, version, about)]
struct Cli {
    #[arg(short, long)]
    name: String,
    #[arg(short, long, default_value_t = 1)]
    count: u32,
}
fn main() {
    let cli = Cli::parse();
    
    for _ in 0..cli.count {
        println!("Hello {}!", cli.name);
    }
}
```

1. Build and run:

```bash
cargo build
cargo run -- --name Alice --count 3
```

## Error Handling

Clap provides built-in error handling for:

- Missing required arguments

- Invalid argument types

- Unknown arguments

- Invalid subcommands

The errors are user-friendly by default and include help text.

## Best Practices

1. Always provide help messages for arguments

2. Use meaningful long argument names

3. Provide sensible default values when possible

4. Group related functionality into subcommands

5. Follow the Unix CLI conventions (e.g., `-h` and `--help` for help)

## Testing

You can test your CLI using Rust's built-in testing framework:

```rust
#[test]
fn verify_cli() {
    use clap::CommandFactory;
    Cli::command().debug_assert()
}
```

This documentation covers the basics of creating CLI applications with Clap derive in Rust. Would you like me to expand on any particular aspect or show more examples of specific features?

