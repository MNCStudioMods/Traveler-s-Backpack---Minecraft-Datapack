# Traveler's Backpack

A production-ready Minecraft Java Edition datapack for **1.21.x** that adds portable personal storage backpacks. Fully vanilla — no mods required. Works in singleplayer, LAN, Realms, and multiplayer servers.

## Features

- **Small Backpack** — 27 slots (1 chest)
- **Large Backpack** — 54 slots (2 chests), uses **2 inventory slots** with paginated UI
- **Personal storage** — only the owner can access their backpack
- **Persistent** — contents survive relogs, restarts, and world saves
- **Multiplayer-safe** — per-player storage with duplication protection
- **Crafting & upgrades** — upgrade from Small to Large without losing items
- **Admin tools** — full operator command suite
- **Optional resource pack** — custom medieval fantasy backpack textures

## Installation

### Datapack

1. Download or clone this repository.
2. Copy the `backpack` folder into your world's `datapacks` directory:
   ```
   .minecraft/saves/<World Name>/datapacks/backpack/
   ```
3. In-game, run `/reload` or re-enter the world.
4. Confirm load message: `[Traveler's Backpack] Loaded successfully!`

### Resource Pack (Optional)

1. Copy the `resourcepack` folder to your `resourcepacks` directory.
2. Enable **Traveler's Backpack Resource Pack** in Options → Resource Packs.
3. Custom textures appear for both backpack tiers.

## Usage

| Action | How |
|--------|-----|
| Open backpack | Right-click while holding the backpack |
| Close backpack | Press `Shift` to dismount the storage cart (auto-saves) |
| Flip page (Large) | While storage is open, **Sneak + Right-click** |
| Craft Small | 1 Chest, 4 Leather, 2 String |
| Craft Large | 2 Chests, 1 Small Backpack, 2 Iron Ingots |

### Opening Storage

When you right-click your backpack:
- A chest opening sound plays
- An action bar message appears
- You are mounted on an invisible storage cart — press **E** to view/edit items
- Press **Shift** to dismount and save when finished

## Crafting Recipes

### Small Backpack
```
 S 
LCL
LLL
```
- S = String, L = Leather, C = Chest

### Large Backpack
```
 C 
IBI
 C 
```
- C = Chest, I = Iron Ingot, B = Small Backpack

Upgrading preserves all stored items automatically.

### Creative Mode (no crafting needed)

In **Creative mode**, backpacks are **automatically added to your inventory** when you join or switch to Creative.

You can also get more anytime (no operator permission required):

```
/function backpack:creative/give_small
/function backpack:creative/give_large
/function backpack:creative/give_all
```

Or open the **Recipe Book** (in inventory) and click the backpack recipe result to get copies.

### Survival

Recipes appear in the **Recipe Book** once you have the ingredients (leather + chest for small, then small backpack for large).

Requires operator permission level 2+.

| Command | Description |
|---------|-------------|
| `/function backpack:admin/give_small` | Give yourself a Small Backpack |
| `/function backpack:admin/give_large` | Give yourself a Large Backpack |
| `/function backpack:admin/upgrade` | Upgrade your storage to Large tier |
| `/function backpack:admin/reset` | Reset your backpack storage |
| `/function backpack:admin/inspect` | Inspect your backpack storage |
| `/function backpack:admin/reload` | Reload the datapack |
| `/function backpack:admin/version` | Display version information |

### Creative Commands (no operator required)

| Command | Description |
|---------|-------------|
| `/function backpack:creative/give_small` | Get a Small Backpack (Creative only) |
| `/function backpack:creative/give_large` | Get a Large Backpack (Creative only) |
| `/function backpack:creative/give_all` | Get both backpacks (Creative only) |

## Configuration

Optional settings are stored in `storage backpack:config`. Modify with commands:

| Setting | Default | Description |
|---------|---------|-------------|
| `cooldown` | `20` | Ticks between backpack opens |
| `combat_block` | `0` | Block opening while hurt (1 = on) |
| `drop_on_death` | `0` | Drop backpack on death (1 = on) |
| `keep_on_death` | `1` | Restore backpack after respawn (1 = on) |

Example — enable combat block:
```
/data modify storage backpack:config combat_block set value 1
```

## Project Structure

```
backpack/
├── pack.mcmeta
└── data/backpack/
    ├── function/
    │   ├── admin/          # Admin commands
    │   ├── events/         # Player events (craft, use, death)
    │   ├── items/          # Item creation & stamping
    │   ├── open/           # Storage UI open/save/close
    │   ├── security/       # Permission & integrity checks
    │   └── system/         # Core initialization & tick
    ├── advancement/        # Right-click & craft detection
    ├── recipe/             # Crafting recipes
    ├── loot_table/         # Backpack item definitions
    ├── predicate/          # Combat & state checks
    └── item_modifier/      # Item NBT modifiers

resourcepack/
├── pack.mcmeta
└── assets/minecraft/
    ├── models/item/        # Custom model overrides
    └── textures/item/      # Backpack textures
```

## Technical Details

- **Storage**: `storage backpack:data` with per-player slots keyed by persistent player ID
- **UI**: Invisible chest minecart inventory (27 slots per page)
- **Item base**: `carrot_on_a_stick` with CustomModelData (resource pack overrides appearance)
- **Security**: Owner PID stamped on craft; storage access validated on every open
- **Performance**: Tick functions only process cooldowns, active viewers, and death detection

## Version

**Traveler's Backpack v1.0.0**  
Minecraft Java 1.21.x — Production Release

## License

See [LICENSE](LICENSE) for license terms.
