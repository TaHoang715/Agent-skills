---
name: ui-design-resources
description: Curated UI/UX design system resources, color palettes, icons, CSS frameworks, animations, and frontend guidelines for building state-of-the-art modern web and desktop applications.
---

# UI/UX Design System & Resources Skill

This skill incorporates the curated design knowledge base from `bradtraversy/design-resources-for-developers` (located locally at `D:\skills_resources\design-resources-for-developers`).

Use this skill whenever designing, scaffolding, or refactoring user interfaces to ensure rich aesthetics, curated color palettes, dynamic micro-animations, consistent icon sets, and state-of-the-art visual presentation.

---

## 🎨 1. Core Color Palettes & Dark Mode Tokens

When creating web applications, avoid default CSS colors (`#ff0000`, `#00ff00`). Always use curated HSL/Hex color tokens:

### Dark Mode (Finance / High-Tech / Dashboard)
- **Background Root**: `#020617` / `slate-950`
- **Surface / Card Container**: `#0f172a` / `slate-900` with `border border-slate-800`
- **Glassmorphism Overlay**: `bg-slate-900/60 backdrop-blur-xl border border-white/10`
- **Primary Accent**: `#3b82f6` / `blue-500` (Gradients: `from-blue-600 to-indigo-600`)
- **Success / Bullish Accent**: `#10b981` / `emerald-500`
- **Danger / Bearish Accent**: `#f43f5e` / `rose-500`
- **Text Main**: `#f8fafc` / `slate-50`
- **Text Muted**: `#94a3b8` / `slate-400`

### Light Mode (SaaS / Medical / Enterprise)
- **Background Root**: `#f8fafc` / `slate-50`
- **Card Container**: `#ffffff` with `shadow-sm border border-slate-200/80`
- **Primary Accent**: `#2563eb` / `blue-600`
- **Text Main**: `#0f172a` / `slate-900`
- **Text Muted**: `#64748b` / `slate-500`

---

## 🖼️ 2. Iconography & SVG Graphics

Never use unstyled inline text or browser default bullet points. Always use standard SVG icon sets:

- **Lucide Icons / Heroicons**: Recommended for navigation, action buttons, status indicators, and financial metrics.
- **Storyset / UnDraw / Blush**: For empty states, onboarding screens, and feature highlight cards.
- **Icon Sizing & Styling**:
  - Small / Inline: `w-4 h-4 text-slate-400`
  - Medium / Buttons: `w-5 h-5 text-white`
  - Large / Hero Header: `w-10 h-10 p-2.5 rounded-xl bg-blue-500/10 text-blue-400 border border-blue-500/20`

---

## 📐 3. Typography & Hierarchy

Always import Google Fonts instead of default system fonts:
- **Primary Body & UI**: `Inter`, `Outfit`, or `Roboto` (`font-sans`)
- **Financial Numbers & Tickers**: `JetBrains Mono` or `Fira Code` (`font-mono`)

### Scale:
- **Hero Title**: `text-3xl` to `text-5xl`, `font-black`, `tracking-tight`, `bg-gradient-to-r from-white via-slate-200 to-slate-400 bg-clip-text text-transparent`
- **Section Heading**: `text-lg` to `text-xl`, `font-bold`, `text-white`
- **Card Title**: `text-sm`, `font-semibold`, `text-slate-300`
- **Captions / Microtext**: `text-xs` or `text-[10px]`, `text-slate-400`

---

## ⚡ 4. Animation & Micro-Interactions

An interface must feel alive and responsive:
- **Hover Scale**: `transition-all duration-200 hover:scale-[1.02] active:scale-[0.98]`
- **Glow Effects**: `shadow-lg shadow-blue-500/20 hover:shadow-blue-500/40`
- **Pulse Indicators**: `<span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse" />`
- **Libraries**:
  - React/Framer Motion: `framer-motion`
  - JS Animations: `animejs` / `GSAP`
  - Lottie Files: Interactive JSON animations for loading and success states.

---

## 📂 5. Local Reference Directory

Full curated link lists for Stock Photos, UI Component Kits, Frameworks, and Tools can be inspected at:
- `D:\skills_resources\design-resources-for-developers\readme.md`
