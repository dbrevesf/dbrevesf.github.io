---
title: "The Pragmatic Programmer - Chapter 5: Bend or Break"
date:  2025-09-17 16:11:19
categories: ["The Pragmatic Programmer"]
tags: []
---

## Decoupling
- Decoupled code is easy to change (ETC).
- Tell, don't ask.
- Don't chain method calls.
- Avoid global data.
- If it's important enough to be global, wrap it in an API.

## Juggling The Real World
- Try to use finite state machine to handle events.
- Observer Pattern:
  - Push functions reference onto a list and then call those functions when the event occurs.
  - Problems:
    - Coupling
    - Callbacks are handled inline synchronously -> Performance bottleneck
- Publish/Subscribe (Pub/Sub) Pattern:
  - Potentially asynchronous
  - Solve coupling and performance problem
- Reactive programming, stream and events:
  - A reacts as B changes.
  - Event streams unify sync and async processing behind a common and conveniente API.

## Transforming Programming
- Programming is about code, but programs are about data.
- Think about data transformation.
- Don't hoard state; Pass it around.
- We never pass raw values between transformations. Instead, we wrap them in a data structure.

## Inheritance Tax
- Inheritance is coupling.
- Don't pay inheritance tax.
- Alternatives:
  - Interfaces and protocols
  - Delegation
  - Mixins and traits
- Prefer interfaces to express polymorphism.
- Use mixins to share functionality.

## Configuration
- Parameterize your application using external config.
- Wrap configuration behind a thin API.
- Code that don't adapt, die.


