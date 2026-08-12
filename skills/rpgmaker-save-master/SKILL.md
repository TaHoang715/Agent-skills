---
name: rpgmaker-save-master
description: Professional RPG Maker MV and MZ save file editor and full-save generator. Handles pako compression, zlib streams, $gameSwitches, $gameVariables, $gameSystem, $gameParty, and global index sync (global.rmmzdata / global.rpgsave / savefileinfo) with zero corruption.
---

# RPG Maker MV & MZ Save Master

This skill incorporates principles and parser logic from top-rated open-source RPG Maker save editing tools (`paradoxie/saveeditor`, `nathan-b/rmse`, `mixcode/rpgmv-savetool`).

Use this skill whenever creating, modifying, unlocking, or debugging RPG Maker MV (`.rpgsave`) and RPG Maker MZ (`.rmmzsave`) save files to guarantee zero corruption and 100% native engine compatibility.

---

## 🛠️ Engine Architecture & File Format Specs

### RPG Maker MV (.rpgsave)
- **Serialization**: Base64 encoded `LZString` or direct JSON string.
- **Index Files**: `global.rpgsave` or `config.rpgsave`.

### RPG Maker MZ (.rmmzsave)
- **Serialization**: Zlib/Deflate compressed with `pako`.
- **Structure**: Header byte + Zlib compressed JSON byte stream.
- **Index Files**: `global.rmmzdata` or `savefileinfo.rmmzdata`.

---

## 📜 Safe Full-Save Generation Rules

### 1. Zero-Corruption Rule (Preserve Base Objects)
- Always read an existing baseline save file from the game (or generate a valid initial save state) rather than constructing raw JSON from scratch.
- Modify only target properties:
  - `$gameSwitches._data`: Array of booleans representing event & CG triggers.
  - `$gameVariables._data`: Array of numbers/strings for game metrics.
  - `$gameSystem`: System flags, unlocked galleries, recollections.
  - `$gameParty._gold`: Currency.
  - `$gameActors._data`: Party member stats, levels, and equipment.

### 2. Global Index Synchronization
When modifying or creating `file1.rmmzsave` or `file1.rpgsave`:
- You MUST inspect and sync `global.rmmzdata` / `global.rpgsave` / `savefileinfo.rmmzdata`.
- Update the thumbnail, playtime, timestamp, and character sprites array in the global index file so the game's "Load Menu" displays the save file as valid and selectable.

### 3. Pako Compression Standard (MZ)
When serializing `.rmmzsave`:
```javascript
const pako = require('pako');
const jsonString = JSON.stringify(saveData);
const compressed = pako.deflate(jsonString, { to: 'string' });
fs.writeFileSync(savePath, compressed, 'utf-8');
```

---

## 🎯 Verification Standard
Always test loading the generated save file by launching the game or inspecting the parsed JSON with Node.js to verify `JSONEx.parse` or `pako.inflate` succeeds cleanly without exceptions.
