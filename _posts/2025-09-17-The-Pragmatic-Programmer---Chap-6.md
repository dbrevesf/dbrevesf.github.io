---
title: "The Pragmatic Programmer - Chapter 6: Concurrency"
date:  2025-09-17 16:18:47
categories: ["The Pragmatic Programmer"]
tags: []
---

- Concurrency: when the execution of 2 or more pieces of code act as if they run at the same time. -> Software layer
- Parallelism: when they do run at the same time. -> Hardware layer

## Breaking Temporal Coupling
- Analyse workflow to improve concurrency.
  - It helps to see what is dependent or not. Points of parallelism.

## Shared State Is Incorrect State
- Making a operation atomic:
  - Semaphores
  - Make the resource transactional
- Whenever 2 or more instances of the code can access some resource at the same time, you are looking at a potential problem.
- **Random failures are often concurrency issues!**

## Actors and Processes
- Use actors for concurrency without shared state.
