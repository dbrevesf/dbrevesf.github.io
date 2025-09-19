---
title: "The Pragmatic Programmer - Chapter 7: While You Are Coding"
date:  2025-09-19 17:50:49
categories: ["The Pragmatic Programmer"]
tags: []
---

- Listen to your inner lizard.
- Prototype when stucked.
- Avoid programming by coincidence.
- Don't assume it, prove it (again)!

## Algorithm Speed

- Estimate the order of your algorithm.
- Test your estimates.
- Always be wary of premature optimization.

## Refactoring
- Software engineering is more like gardening than construction - More organic than concrete.
- Acording to Martin Fowler:
  - Refactoring is disciplined.
  - External behaviour does not change.
- Refactoring is a day-to-day activity, taking low-risk and small steps.
- Refactor early, refactor often.
- Martin Fowler's Tip for refactoring:
  - Don't try to refactor and add functionality at the same time.
  - Make sure you have good tests before you begin refactoring. Run it often.
  - Take short and deliberate steps.

## Test To Code
- Testing is not about finding bugs.
- A test is the first user of your code.
- The higher the testability, the lower the coupling.

**One of the most important aspects of the software development is that we don't know what we are doing when we start.**

- Build end-to-end, not top-down or bottom-up.
- Design to test.
- Log messages should be in a regular and consistent format because you may want/need to parse them automatically to deduce processing time or logic paths that the program took. 
- Test, design, coding - it's all programming.

## Property-Based Testing
- Use property-based tests to validate your assumptions.
- Property = contracts + invariants
- For Python, use *hypothesis* library.

## Stay Safe Out There
- Security basic principles:
  1. Minimize attack surface area. 
     - Complex code makes the surface more porous and open to infection. Simpler, less complex code is easier to spot potential weakness.
     - Always sanitize external data.
     - Add auth to your service.
     - Remove unused auth users.
     - Don't give away informations through log and debugging.
  2. Principle of less privilege
     - Every program and privileged user of the system should operate using the least amount of privilege necessary to complete the job.
  3. Secure defaults
     - The default should be the most secure values.
  4. Encrypt sensitive data
     - Keys and secrets need to be managed separately, generally via config files or environment variables.
  5. Maintain security updates
     - Apply security patches quickly.

- You want to encourage long, random passwords with a high degree of entropy.
- Cryptography: **NEVER** do it yourself!

## Naming Things
- *"The beggining of wisdom is to call things by their proper name."* Confucius
- Honor the local culture.
- Be consistent.
- Name well; Rename when needed.
- Make renaming easy; Rename often.

