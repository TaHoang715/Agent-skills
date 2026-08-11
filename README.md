# Agent Skills & Claude Code Configuration Environment

![.NET 8](https://img.shields.io/badge/.NET-8.0-512BD4?logo=dotnet)
![Next.js](https://img.shields.io/badge/Next.js-15-000000?logo=next.js)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-3178C6?logo=typescript)
![License](https://img.shields.io/badge/License-MIT-green)

Standardized AI agent environment, engineering rules, and persistent memory skills for capstone project **SEP490**. Configured for high-performance development using **ASP.NET Core Web API** (.NET 8+) and **Next.js App Router** (React / TypeScript).

---

## Architecture Overview

```text
SEP490 Agent Skills Environment
├── .claude/
│   └── settings.json          # Shared team configuration & permissions
├── skills/                    # Modular engineering skill definitions
│   ├── dotnet-backend/        # ASP.NET Core & EF Core standards
│   ├── nextjs-best-practices/ # Next.js App Router & Server Components
│   ├── karpathy-claude-rules/ # Core agent laws (Simplicity, Surgical edits)
│   ├── agent-memory-hub/      # Persistent cross-session project memory
│   ├── api-patterns/          # RESTful JSON contracts & JWT Authentication
│   ├── ui-design-resources/   # UI Tokens, HSL palettes & SVG icons
│   └── clean-code-best-practices/ # Global exception handling & security
└── MEMORY.md                  # Project state & architectural decision records
```

---

## Prerequisites

Before setting up the environment, ensure your development machine has the following tools installed:

- **Node.js**: `v18.x` or higher
- **.NET SDK**: `8.0` or higher
- **Git**: `2.x` or higher
- **Claude Code CLI**: Installed globally via `npm`

---

## Setup Instructions

### 1. Install Claude Code CLI

Install the official Anthropic Claude Code command-line tool:

```bash
npm install -g @anthropic-ai/claude-code
```

Run authentication once to link your user workspace:

```bash
claude
```

### 2. Configure Environment Settings

Copy the standardized team settings to your global user profile:

#### Windows (PowerShell)

```powershell
New-Item -ItemType Directory -Path "$env:USERPROFILE\.claude" -Force | Out-Null
Copy-Item -Force "claude_settings_template.json" "$env:USERPROFILE\.claude\settings.json"
```

#### macOS / Linux

```bash
mkdir -p ~/.claude
cp claude_settings_template.json ~/.claude/settings.json
```

---

## Pre-Approved Terminal Permissions

The provided `settings.json` enables extended reasoning (`"thinking": true`) and pre-approves routine build and test commands to maintain focus during development:

```json
{
  "$schema": "https://json.schemastore.org/claude-code-settings.json",
  "thinking": true,
  "preferredNotifiers": ["terminal"],
  "permissions": {
    "allowCommands": [
      "dotnet build",
      "dotnet test",
      "dotnet run",
      "dotnet ef migrations add",
      "npm test",
      "npm run dev",
      "npm run build",
      "git status",
      "git diff"
    ]
  }
}
```

---

## Project Memory Protocol (`MEMORY.md`)

Each repository using this environment maintains a `MEMORY.md` file in its root directory. This serves as the agent's long-term persistent context across different sessions and team members.

### Recommended `MEMORY.md` Template

```markdown
# Project Memory & Architectural Context

## Tech Stack
- Backend: ASP.NET Core (.NET 8), Entity Framework Core, PostgreSQL
- Frontend: Next.js App Router, TypeScript, TailwindCSS, Zustand
- Authentication: JWT Bearer Tokens

## Active Decisions
- Use Repository and Service patterns for C# backend modules.
- Use Server Components for data fetching; Client Components for interactive UI state.

## Current Sprint Tasks
- [x] Initialized database schema migration
- [/] Implementing User Authentication API
- [ ] Building Dashboard Frontend Components
```

---

## Development Workflow & Prompt Examples

When executing tasks with Claude Code (`claude`), use structured instructions matching your target component:

### Backend Development (.NET 8)
> "Refer to `dotnet-backend` and `api-patterns` skills. Implement the Order Service using EF Core async queries. Include DTO mapping and global exception handling."

### Frontend Development (Next.js)
> "Refer to `nextjs-best-practices` and `ui-design-resources` skills. Create the Dashboard page using Next.js App Router with Server Components for initial load and TailwindCSS dark mode styling."

### Verification & Bug Fixing
> "Check `MEMORY.md` for recent API changes. Identify the root cause of the error in OrderController.cs, apply surgical edits, and run `dotnet build` to verify."

---

## License

Distributed under the MIT License. See `LICENSE` for more information.
