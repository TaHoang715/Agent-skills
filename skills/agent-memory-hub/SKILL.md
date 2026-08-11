---
name: agent-memory-hub
description: Team-level persistent memory hub based on TencentDB-Agent-Memory for cross-session context retention, LLM-Wiki knowledge graphs, and codebase symbol indexing.
---

# TencentDB Agent Memory Hub Skill

This skill incorporates the open-source memory engine from `TencentCloud/TencentDB-Agent-Memory` (located locally at `D:\skills_resources\TencentDB-Agent-Memory`).

Use this skill whenever working on complex, multi-session capstone projects or collaborating across different AI agents (Antigravity & Claude Code) to maintain consistent architectural memory.

---

## 🧠 4 Core Memory Assets

1. **Chat & Context Memory**: Automatically stores user preferences, technical stack decisions, and past bug resolution history.
2. **Skill Memory**: Extracts repeatable multi-step execution workflows into local skills.
3. **LLM-Wiki Memory**: Converts raw documentation and design specs into structured wiki markdown pages with cross-links.
4. **Code-Graph Memory**: Indexes code symbols, function signatures, and call trees in SQLite for instant impact analysis before making code edits.

---

## 📂 Local Reference Directory

Full documentation, architecture specs, and local SQLite memory configurations can be inspected at:
- `D:\skills_resources\TencentDB-Agent-Memory\README.md`
