---
title: "Lazy Bird - Flash Sale Race Condition - Design Document v1.0 "
date:  2026-01-15
categories: ["Lazy Bird Project"]
tags: ["concurrency", "race-condition", "database", "locking"]
---

# Overview

Flash sale bookstore system demonstrating database race conditions. A single purchase action creates duplicate orders when concurrent requests check inventory simultaneously before either commits. This is the first concurrency-focused broken system in the Lazy Bird Project.

# The Problem

- **Issue**: Non-atomic check-then-act operation across multiple backend instances
- **Solution**: Pessimistic locking using SQLAlchemy's `with_for_update()`
- **Expected Outcome**: One order per purchase, inventory never goes negative

# System Architecture

```
┌─────────────┐     ┌──────────────────┐     ┌─────────────────┐
│   Frontend  │────▶│   Load Balancer  │────▶│  Backend API    │
│   (React)   │     │   (nginx)        │     │  (2 instances)  │
└─────────────┘     └──────────────────┘     └────────┬────────┘
                                                      │
                                                      ▼
                                             ┌─────────────────┐
                                             │   PostgreSQL    │
                                             └─────────────────┘
```

The race condition occurs naturally through realistic infrastructure:

- **nginx**: Distributes requests round-robin to backend instances
- **Backend Instance A**: Artificial delay (widens race window)
- **Backend Instance B**: Normal processing speed
- **Frontend**: Built-in retry mechanism (simulates network reliability patterns)

### Request Flow (Broken State)

1. User clicks "Buy Now"
2. Request routes to Instance A (slow), begins processing
3. Frontend retry triggers, routes to Instance B (fast)
4. Both instances simultaneously:
   - Check inventory: both see "1 available"
   - Create order: both insert records
   - Decrement inventory: both execute `quantity - 1`
5. Result: Two orders, inventory = -1

# The Broken Purchase Logic

```
1. SELECT quantity FROM products WHERE id = ?
2. If quantity > 0, proceed
3. INSERT INTO orders (product_id, created_at)
4. UPDATE products SET quantity = quantity - 1
5. Return confirmation
```

Steps 1-4 are not atomic. No row locking between SELECT and UPDATE allows two instances to pass step 2 before either reaches step 4.

# Solution: Pessimistic Locking

Add `with_for_update()` to the product query. First transaction locks the row on SELECT; second transaction waits until first completes, then sees updated inventory (0 remaining) and rejects the purchase.

**Why other approaches fail**:

| Approach                         | Problem                                   |
| -------------------------------- | ----------------------------------------- |
| CHECK constraint (quantity >= 0) | Order already created before UPDATE fails |
| Unique constraint on orders      | Doesn't address root cause                |
| Application-level mutex          | Doesn't work across multiple instances    |

# User Interface

Single page with product display, Buy Now button, orders list, and reset button. No hints about the bug - users observe raw data only.

```
┌─────────────────────────────────────────────────────────────┐
│                    ⚡ FLASH SALE ⚡                          │
├─────────────────────────────────────────────────────────────┤
│     ┌──────────────┐                                        │
│     │   📕 Book    │    The State and Revolution            │
│     │   Cover      │    V.I. Lenin (1917)                   │
│     └──────────────┘    $9.99                               │
│                         Stock: 1 remaining                  │
│                    [ 🛒 Buy Now ]                           │
├─────────────────────────────────────────────────────────────┤
│  Orders                                         [ 🔄 Reset ] │
├─────────────────────────────────────────────────────────────┤
│  (no orders yet)                                            │
└─────────────────────────────────────────────────────────────┘
```

**After bug**: Two orders with timestamps ~64ms apart, stock shows -1.

**After fix**: One order, stock shows 0.

**Reset**: Clears orders, restores inventory to 1. No confirmation required.

# Technology Stack

| Component     | Technology            | Notes                           |
| ------------- | --------------------- | ------------------------------- |
| Frontend      | React + TypeScript    | Retry mechanism built-in        |
| Load Balancer | nginx                 | Round-robin distribution        |
| Backend       | FastAPI (2 instances) | SQLAlchemy ORM, async support   |
| Database      | PostgreSQL            | Millisecond timestamp precision |

# Project Structure

```
flash-sale-system/
├── frontend/
├── backend/
├── nginx/
│   └── nginx.conf
├── database/
│   └── init/
├── docker-compose.yml
└── README.md
```

# Learning Objectives

- Recognizing check-then-act anti-patterns
- Understanding race conditions in multi-instance deployments
- Implementing pessimistic locking with SQLAlchemy ORM
- Observing timing evidence (millisecond-apart timestamps)