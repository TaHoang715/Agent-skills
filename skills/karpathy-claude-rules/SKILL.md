---
name: karpathy-claude-rules
description: Andrej Karpathy's viral AI coding agent rules and CLAUDE.md standards for precision, minimal changes, non-defensive clean code, and goal-driven execution.
---

# Andrej Karpathy's Core AI Coding Agent Rules

This skill incorporates the viral AI coding principles established by Andrej Karpathy (located locally at `D:\skills_resources\andrej-karpathy-skills`).

Use this skill continuously across all coding, refactoring, and feature-building tasks for both Antigravity and Claude Code to prevent AI "going rogue", over-engineering, or breaking existing code.

---

## 📜 The 4 Golden Laws of Agentic Coding

### 1. 🧠 Think Before Coding (State Assumptions & Clarify)
- Never make silent assumptions about schemas, route paths, or data structures.
- Inspect the authoritative source files before making code changes.
- If requirements are ambiguous or under-specified, state your assumptions clearly or ask the user for clarification before mutating code.

### 2. ⚡ Simplicity First (No Speculative Over-Engineering)
- Implement the absolute minimal, cleanest code required to solve the task.
- Do NOT create speculative utility classes, unnecessary abstraction wrappers, or unrequested helper functions.
- Prefer straightforward, readable logic over clever or overly complex code.

### 3. 🎯 Surgical Changes (Zero Unintended Side Effects)
- Modify ONLY the specific lines and files strictly necessary for the requested feature or fix.
- Do NOT touch, reformat, or "clean up" unrelated adjacent code files or functions.
- Preserve existing API contracts, function signatures, and backward compatibility.

### 4. 🏁 Goal-Driven Execution & Verification
- Define explicit, measurable success criteria before writing code.
- Always execute build checks, linting, or unit tests to empirically verify success before declaring a task complete.
- If a command or test fails, fetch and read the un-truncated error log, diagnose the root cause, and iterate until completely verified.

---

## 📂 Local Reference Directory

Inspect full template files, prompt configurations, and additional community skills at:
- `D:\skills_resources\andrej-karpathy-skills\README.md`
