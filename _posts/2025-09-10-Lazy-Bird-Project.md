---
title: "Lazy Bird Project"
date:  2025-09-10 14:07:49
categories: ["Lazy Bird Project"]
tags: []
---

# Lazy Bird Project

## Rationale 

After 10 years of experience working as a software engineer, I've worked with a wide range of different technologies.
Mobile (iOS and Android), Backend, Frontend, Embedded Systems and Data Analysis are domains where I have 
professional experience. However, whenever I apply for a new role I'm always asked questions about specific 
problems that I haven't worked on yet. For many of them, I have at least a rough idea of how to solve them, but only
theoretically. So, after being rejected in several hiring processes due to lack of experience in actually 
solving some problems, I decided to reproduce them. To reproduce a problem, one must understand it, and by 
understanding it, one should be able to fix it. That's the basic idea behind this project.

## Big Picture

This project will work as a repository of broken systems. Simple, but complete systems. For example, one basic and 
classic problem is the non-indexed database table issue. A non-indexed table, will make queries slower. We could 
reproduce this easily with a single MySQL database instance, create some profiled queries to assert that the problem 
exists, and then work on a fix for it, only within the MySQL domain. However, that's not a complete system. The idea 
then is to create a simple system, with the database, backend and frontend that will make it easy to see how a 
non-indexed database can manifest in a system. 

Another problem that is often asked in interviews for backend engineers is: how can we make a service faster when we 
have more than one endpoint being called. One possible answer is to parallelize the calls. The broken system would 
then be a simple system that the backend calls two endpoints sequentially, and the fix is to parallelize the calls, 
resulting in a much faster system. 

For the initial broken system, the frontend will have the single role of showcasing the problem somehow. It will 
contain only components important for demonstrating the problem. Over time, we can create broken systems where the 
issue is on the frontend side.

## First Ideas

Here are some ideas for issues to be converted into broken systems:

- Non-indexed database tables
- Queries that use functions, diminishing the advantages of an indexed tables 
- Sequentially calls making a system slower
- External services that go down during determined periods
- Backpressure due to slow external services
- External or internal services being called multiple times with the same input parameters
 
## Conclusion

This project aims to first solve a problem of my own, but it's very likely to be useful for the community. Having a 
way to study with practical exercises in a controlled environment is one of the most effective ways of learning. 
