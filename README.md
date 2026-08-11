# Agent Skills, MCP & Environment Configuration

![.NET 8](https://img.shields.io/badge/.NET-8.0-512BD4?logo=dotnet)
![Next.js](https://img.shields.io/badge/Next.js-15-000000?logo=next.js)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-3178C6?logo=typescript)
![License](https://img.shields.io/badge/License-MIT-green)

Standardized AI agent environment, MCP server configurations, engineering rules, Docker templates, and persistent memory skills for capstone project **SEP490**. Configured for high-performance development using **ASP.NET Core Web API** (.NET 8+) and **Next.js App Router** (React / TypeScript).

---

## Repository Structure

```text
SEP490 Agent Environment Repository
├── .claude/
│   └── settings.json                  # Claude Code team configuration & permissions
├── mcp_and_settings/
│   ├── mcp_config_template.json       # MCP Servers (Postgres, Playwright, GitHub)
│   └── antigravity_rules_template.md  # Antigravity IDE global rules template
├── templates/
│   ├── docker-compose.yml             # Local Postgres 16 + Redis 7 + PgAdmin 4
│   ├── claude-pr-review.yml           # GitHub Actions CI & Claude PR auto-review
│   └── pre-commit-hook.sh             # Git Pre-commit formatter (CSharpier & Prettier)
├── skills/                            # Modular engineering skills (19+ Skills)
│   ├── dotnet-backend/                # ASP.NET Core & EF Core standards
│   ├── nextjs-best-practices/         # Next.js App Router & Server Components
│   ├── karpathy-claude-rules/         # Core agent laws (Simplicity, Surgical edits)
│   ├── agent-memory-hub/              # Persistent cross-session project memory
│   ├── postgres-efcore-guide/         # EF Core & PostgreSQL Npgsql guide
│   ├── playwright-testing/            # Playwright E2E UI verification
│   ├── api-patterns/                  # RESTful JSON contracts & JWT Authentication
│   └── ui-design-resources/           # UI Tokens, HSL palettes & SVG icons
└── MEMORY.md                          # Project state & architectural decision records
```

---

## 1. Antigravity & Claude Code Setup

### Claude Code Setup

1. Install Claude Code CLI:
   ```bash
   npm install -g @anthropic-ai/claude-code
   claude
   ```
2. Copy global settings:
   ```powershell
   Copy-Item -Force "claude_settings_template.json" "$env:USERPROFILE\.claude\settings.json"
   ```

### Antigravity IDE Setup

Copy the rules from `mcp_and_settings/antigravity_rules_template.md` into your local `.agents/AGENTS.md` or Antigravity Global Customizations.

---

## 2. MCP Servers Configuration (Model Context Protocol)

Copy `mcp_and_settings/mcp_config_template.json` to your MCP configuration path to enable:

- **PostgreSQL MCP**: Allows AI to inspect live database schemas and verify SQL queries safely.
- **Playwright MCP**: Allows AI to execute automated browser interactions and verify UI state.
- **GitHub MCP**: Allows AI to inspect pull requests, issues, and git diffs directly.

---

## 3. Local Docker Environment (1-Click Database)

Start PostgreSQL 16, Redis 7, and PgAdmin 4 using the included Docker Compose template:

```bash
docker compose -f templates/docker-compose.yml up -d
```

- **PostgreSQL**: `localhost:5432` (User: `postgres`, Password: `postgrespassword`)
- **Redis**: `localhost:6379`
- **PgAdmin Web**: `http://localhost:5050` (Email: `admin@sep490.com`, Password: `adminpassword`)

---

## 4. GitHub Actions & Pre-Commit Formatting

- **CI & Claude PR Review**: Copy `templates/claude-pr-review.yml` to `.github/workflows/ci.yml` in your project repository.
- **Pre-commit Hook**: Copy `templates/pre-commit-hook.sh` to `.git/hooks/pre-commit` to automatically format C# code (`dotnet csharpier`) and TypeScript (`prettier`) before pushing.

---

## License

Distributed under the MIT License. See `LICENSE` for more information.
