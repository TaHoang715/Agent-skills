---
name: agent-memory-system
description: Persistent cross-session and cross-agent memory management system using MEMORY.md, codebase knowledge graphs, and persistent project state tracking.
---

# Agent Memory System (Long-Term Project Context)

This skill enables AI agents (Antigravity & Claude Code) to maintain persistent memory across chat sessions and multi-agent collaborations, preventing redundant explanations and context loss.

---

## 🧠 1. Memory Architecture Overview

The Agent Memory System operates on 3 levels:

### Level 1: Project Knowledge Base (`MEMORY.md`)
- Placed in the root directory of each active project (e.g. `MEMORY.md` or `.agents/MEMORY.md`).
- Contains:
  - **Project Goals & Stack**: Core framework, DB, auth setup.
  - **Key Architectural Decisions (ADRs)**: Why specific libraries or patterns were selected.
  - **Active Working State**: Completed features, pending tasks, known bugs.

### Level 2: Codebase Graph Index (`codebase-memory-mcp`)
- Maintains a structural Knowledge Graph of functions, classes, routes, and call trees.
- Allows agents to instantly query symbol relationships without reading entire directories from scratch.

### Level 3: Session Work Log (`.agents/logs/session_diary.md`)
- Automatically logs significant changes, API contract updates, and bug fixes after every work session.

---

## 📋 2. How Agents Read & Update Memory

1. **At the start of every session**:
   - The agent reads `MEMORY.md` to load project context immediately.
2. **Before taking action**:
   - Checks existing decisions and active tasks to avoid breaking previous work.
3. **At the end of every session**:
   - Appends key changes, new endpoints, and updated schemas to `MEMORY.md`.

---

## 📂 3. Memory File Template (`MEMORY.md`)

```markdown
# Project Memory & Architecture Context

## 1. Stack & Environment
- Frontend: Next.js / Vite (TailwindCSS, Lucide Icons)
- Backend: Node.js / FastAPI / PostgreSQL / Redis
- Auth: JWT / Supabase / Clerk

## 2. Key Decisions & Conventions
- [Date]: Decision detail...

## 3. Current Sprint / Active Tasks
- [x] Completed task 1
- [/] In progress task 2
- [ ] Upcoming task 3
```
