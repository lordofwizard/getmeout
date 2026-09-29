---
type: 'Page'
collections: 'Rust'
title: Multi Main Function run one is Std one is async
aliases: null
description: null
icon: null
createdAt: '2024-05-27T06:57:46.036Z'
lastUpdated: '2024-05-27T06:59:38.721Z'
tags: [Rust, RigBetelLabs]
coverImage: null
---

# Multi Main Function run one is Std one is async

```rust
use std::env;
use actix_web::{web, App, HttpResponse, HttpServer, Responder};

fn main1() {
    println!("This is the first main function.");
    // Add the rest of your synchronous main1 logic here
}

async fn greet() -> impl Responder {
    HttpResponse::Ok().body("Hello, this is the Actix-web server!")
}

async fn main2() -> std::io::Result<()> {
    println!("Starting Actix-web server...");

    HttpServer::new(|| {
        App::new()
            .route("/", web::get().to(greet))
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}

fn main() {
    // Collect the command line arguments into a vector
    let args: Vec<String> = env::args().collect();

    // Check if the user provided an argument
    if args.len() < 2 {
        eprintln!("Usage: {} <main1|main2>", args[0]);
        std::process::exit(1);
    }

    // Match the argument to decide which function to call
    match args[1].as_str() {
        "main1" => main1(),
        "main2" => {
            // Use actix_web::rt::System to run the async main2 function
            actix_web::rt::System::new().block_on(main2()).unwrap();
        }
        _ => {
            eprintln!("Invalid argument: {}. Use 'main1' or 'main2'.", args[1]);
            std::process::exit(1);
        }
    }
}

```

