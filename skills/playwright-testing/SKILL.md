---
name: playwright-testing
description: Automated End-to-End (E2E) browser testing and UI verification for Next.js web applications using Playwright TypeScript.
---

# Playwright Automated Browser Testing & UI Verification

This skill enables AI agents to generate, execute, and debug end-to-end browser tests for Next.js web applications using Playwright.

---

## 🛠️ 1. Setup Playwright in Next.js

```bash
npm init playwright@latest
```

---

## 🧪 2. E2E Test Example (`tests/auth.spec.ts`)

```typescript
import { test, expect } from '@playwright/test';

test('User can log in successfully', async ({ page }) => {
  await page.goto('http://localhost:3000/login');
  
  await page.fill('input[type="email"]', 'admin@sep490.com');
  await page.fill('input[type="password"]', 'Password123!');
  await page.click('button[type="submit"]');
  
  await expect(page).toHaveURL('http://localhost:3000/dashboard');
  await expect(page.locator('h1')).toContainText('Dashboard');
});
```
