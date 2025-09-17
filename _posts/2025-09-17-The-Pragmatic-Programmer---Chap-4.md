---
title: "The Pragmatic Programmer - Chapter 4: Pragmatic Paranoia"
date:  2025-09-17 16:02:40
categories: ["The Pragmatic Programmer"]
tags: []
---

- You can't write perfect software.
- Design By Contract (DBD)
  - Check:
    - Preconditions
    - Postconditions
    - Class Invariants
  - If all preconditions are met, the routine must guarantee that all postconditions and invariants will be true when it completes.
- Focus on lazy code: be strict in what you will accept before you begin, and promise as little as possible in return.
- DBC x TDD: the main difference is that TDD leads you to concentratee on the "happy path".
- In object-oriented languages, the contract is not automatically forced.
- Design Contract -> Design Software


## Dead Program Tell No Lies
- Crash early
- A dead program normally does a lot less damage than a crippled one.

## Assertive Programming
- Use assertions to prevent the impossible.
- Assertions check for things that should never happen. It's not for regular error handling.

## How To Balance Resources
- Finish what you start.
- Act locally.
- Check for memory leaks.
- Setting an object variable to null after using it can help the Java Garbage Collector.

## Don't Outrun Your Headlights
- Always take small steps.
- Avoid fortune telling.
- Tomorrow looks a lot like today, but don't count on it.
