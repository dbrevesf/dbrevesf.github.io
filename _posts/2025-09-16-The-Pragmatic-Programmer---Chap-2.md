---
title: "The Pragmatic Programmer - Chapter 2: A Pragmatic Approach"
date:  2025-09-16 12:23:26
categories: ["The Pragmatic Programmer"]
tags: []
---

## The Essence of Good Design
- Good design is easier to change (ETC) than bad design.
- ETC is a value, not a rule.
- Always ask yourself: is it ETC?

## DRY - Don't Repeat Yourself - The Evils of Duplication
- Whatever the reason, maintenance is not a discrete activity, but a routine part of the entire development process.
- DRY is about duplication of knowledge.
- Make it easy to reuse.

## Orthogonality
- Two or more things are orthogonal if changes in one do not affect any of the others.
- Eliminate effects between unrelated things.
- Don't rely on the properties of things you can't controll.
- Leverage Decorator Pattern: adding functionality to things without changing them.

## Reversibility
- There are no such thing as **final decision**.
- Is a mistake assuming that any decision is cast in stones.

## Flexible Architecture
- Always make it Easy To Change (ETC).

## Tracer Bullets
- use tracer bullets to find the target.
- Tracer development is consistent with the idea that a project is **NEVER** finished.
  - Incremental approach.
- Prototyping is not tracer bullet. The formet generates disposable code; The latter is lean, but complete.
  
## Prototypes
- Prototype to learn.

## Domain Languages
- The language of the problem domain may also suggest a programming solution.
- Program close to the problem domain.
- The classic gather requirements, design, code and ship approach doesn't work because we think that we know the requirements, but **WE DON'T**.
- Don't spend more effort than you save.

## Estimating
1. Understand what is being asked.
2. Build a model. 
3. Break it into components.
4. Give each parameter a value.
5. Calculate the answers.
6. Keep track of your estimated values.
    - When a estimation turns out wrong, don't just shrug and walk away. Find out why!

- Iterate the schedule with the code.
  - The firsts estimations will be bad, but with the time and iterations it will be improved
- Always say: "I will get back to you.".
  
