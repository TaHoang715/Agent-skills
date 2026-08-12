---
name: rpgmaker-auto-translator
description: Automated RPG Maker MV and MZ game translator and text extractor. Preserves control codes (\V[n], \N[n], \C[n], \G, \I[n]), JSON structures, plugin parameters, and dialogue formatting using AI translation APIs (Gemini 2.5 Flash / Claude).
---

# RPG Maker MV & MZ Auto-Translator

This skill incorporates localization principles from leading open-source RPG Maker translation tools (`Lord0fTurk/RPGMLocalizer`, `MizaGBF/RPGMTL`, `sh2288/DazedMTLTool`).

Use this skill whenever translating RPG Maker MV/MZ games (Japanese / Chinese / English ➔ Vietnamese / English) to guarantee 100% control code protection, valid JSON formatting, and natural translation quality.

---

## 🛠️ File Structure & Target Files

RPG Maker text is stored inside the `www/data/` (MV) or `data/` (MZ) directory:
- `MapXXX.json`: Map event dialogues, NPC speeches, choices.
- `System.json`: Game title, currency unit, terms, skill/weapon types.
- `Actors.json`: Character names, nicknames, profiles.
- `Classes.json`, `Skills.json`, `Items.json`, `Weapons.json`, `Armors.json`, `Enemies.json`: Names and descriptions.
- `CommonEvents.json`: Cutscenes, system events, global dialogue handlers.

---

## 📜 Control Code Protection Rules (CRITICAL)

RPG Maker relies on special formatting codes inside dialogue text. **These MUST NEVER be translated or modified**:

| Control Code | Function | Action |
| :--- | :--- | :--- |
| `\V[n]` | Variable Value | **Do Not Touch** |
| `\N[n]` | Actor Name | **Do Not Touch** |
| `\P[n]` | Party Member Name | **Do Not Touch** |
| `\G` | Currency Unit | **Do Not Touch** |
| `\C[n]` | Text Color | **Do Not Touch** |
| `\I[n]` | Icon Index | **Do Not Touch** |
| `\.`, `\|`, `\!`, `\^` | Dialogue Pause & Speed | **Do Not Touch** |
| `\{`, `\}` | Font Size Increase/Decrease | **Do Not Touch** |

---

## 🎯 Translation Pipeline Workflow

1. **Extraction**:
   - Extract string fields (`code === 401` for dialogue lines, `code === 102` for choices, `name` & `description` for database items).
2. **Control Code Masking**:
   - Replace control codes with temporary tokens (e.g. `__VAR_1__`) before sending text to the AI model.
3. **High-Context AI Translation**:
   - Translate using Gemini 2.5 Flash or Claude API with custom system prompts tailored for gaming context and Vietnamese tone.
4. **Token Unmasking & JSON Export**:
   - Restore original control codes into translated strings.
   - Write formatted UTF-8 JSON back to `data/` while maintaining a `.bak` backup copy of original files.
