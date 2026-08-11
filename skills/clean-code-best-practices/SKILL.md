---
name: clean-code-best-practices
description: Production-grade code quality, error handling, security hardening, testing patterns, and async execution standards for fullstack Node.js, Python, and TypeScript projects.
---

# Clean Code & Production Best Practices

This skill incorporates production-grade engineering practices from `nodebestpractices` (located locally at `D:\skills_resources\nodebestpractices`).

Use this skill whenever writing backend APIs, business logic, asynchronous pipelines, or setting up test suites for your capstone project.

---

## 🛡️ 1. Error Handling & Reliability

- **Centralized Error Handler**: Never let uncaught exceptions crash the server process. Wrap async route handlers with error middleware.
- **Custom Error Classes**: Define `AppError` with explicit `statusCode`, `errorCode`, and human-readable Vietnamese messages.
- **Fail Fast & Input Validation**: Validate request payloads (`req.body`, `req.params`) using **Zod** or **Joi** before running database operations.

---

## 🔐 2. Security Hardening

- **Helmet & Security Headers**: Set CORS, CSP, HSTS, X-Content-Type-Options.
- **Prevent SQL/NoSQL Injection**: Always use parameterized queries (ORM/Query Builder like Prisma, Drizzle, EF Core).
- **Environment Variable Protection**: Keep secrets in `.env` and never commit credentials into git.

---

## 🧪 3. Testing Standards

- **Unit Tests**: Test core business functions in isolation using Jest / Vitest / PyTest.
- **Integration Tests**: Test API routes end-to-end with test database containers.
- **Coverage**: Aim for high coverage on critical payment, auth, and business logic modules.

---

## 📂 4. Local Reference Directory

Full reference guidelines and code examples can be inspected at:
- `D:\skills_resources\nodebestpractices\README.md`
