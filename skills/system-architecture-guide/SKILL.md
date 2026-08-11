---
name: system-architecture-guide
description: Expert system design and architecture blueprint guide covering microservices, database design, caching strategies, load balancing, API standards, and high-scalability patterns for capstone projects.
---

# System Architecture & Design Guide

This skill incorporates high-scalability architecture patterns from the `system-design-primer` repository (located locally at `D:\skills_resources\system-design-primer`).

Use this skill whenever designing capstone project backends, database schemas, API routes, caching layers, or evaluating trade-offs between monolithic vs microservice architectures.

---

## 🏛️ 1. Architecture Fundamentals

- **High Availability**: Redundancy, failover strategies, active-passive vs active-active deployments.
- **Scalability**:
  - **Vertical Scaling (Scale Up)**: Increasing CPU/RAM for single instance.
  - **Horizontal Scaling (Scale Out)**: Adding stateless nodes behind a load balancer.

---

## 💾 2. Database Design & Optimization

- **SQL vs NoSQL Selection**:
  - Use **PostgreSQL / MySQL** for structured transactional data, ACID compliance, financial ledgers, and complex relational queries.
  - Use **MongoDB / Redis** for unstructured documents, fast key-value caching, session state, and pub/sub event channels.
- **Database Scaling**:
  - **Read Replicas**: Direct read traffic to slave DB instances.
  - **Database Indexing**: B-Tree and Hash indexes on frequently queried foreign keys (`user_id`, `created_at`).
  - **Connection Pooling**: Use Prisma/Drizzle connection pools or PgBouncer to prevent connection exhaustion.

---

## ⚡ 3. Caching & Performance

- **Cache-Aside Pattern**: Read from Redis cache first; on cache miss, query DB and update cache with TTL (Time-to-live).
- **CDN (Content Delivery Network)**: Serve static assets (images, compiled JS/CSS) via Cloudflare or AWS CloudFront.

---

## 🔒 4. API Design & Security

- **RESTful Conventions**: Standard HTTP methods (`GET`, `POST`, `PUT`, `DELETE`), consistent JSON responses, pagination metadata.
- **Authentication**: JWT Tokens + Refresh Token rotation stored in HttpOnly Secure Cookies.
- **Rate Limiting**: Limit API hits per IP using Redis sliding window algorithms to prevent DDoS and brute-force attacks.

---

## 📂 5. Local Reference Directory

Comprehensive system design guides, diagrams, and interview prep materials are available at:
- `D:\skills_resources\system-design-primer\README.md`
