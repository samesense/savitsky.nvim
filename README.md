# savitsky.nvim

[demo](https://samesense.github.io/savitsky.nvim/)

> Neovim themes derived from Savitsky Museum paintings

`savitsky.nvim` is a Neovim theme plugin built on top of  
[catppuccin/nvim](https://github.com/catppuccin/nvim).

It provides curated color palettes inspired by paintings from the Savitsky Museum and allows **runtime theme switching** via simple Neovim commands.

This plugin does **not** define its own colorscheme. Instead, it dynamically configures Catppuccin using palette and highlight overrides.

---

## Requirements

- Neovim >= 0.8
- [catppuccin/nvim](https://github.com/catppuccin/nvim)

---

## Installation

### lazy.nvim

```lua
{
  "samesense/savitsky.nvim",
  dependencies = {
    "catppuccin/nvim",
  },
}
```

### packer.nvim

```lua
use {
  "samesense/savitsky.nvim",
  requires = {
    "catppuccin/nvim",
  },
}
```

### vim-plug

```vim
Plug 'catppuccin/nvim'
Plug 'samesense/savitsky.nvim'
```

---

## Usage

`savitsky.nvim` is command-driven. No manual Lua setup is required.

### List available themes

```
:SavitskyList
```

Prints all registered Savitsky themes.

---

### Load a theme

```
:SavitskyLoad bull
```

This command:

1. Reconfigures Catppuccin with the selected palette  
2. Applies the appropriate Catppuccin flavour  
3. Reloads the colorscheme immediately  

Tab completion is supported:

```
:SavitskyLoad <Tab>
```

---

## Available Themes

Each theme corresponds to a palette inspired by a Savitsky Museum painting:

- abstractBoxes
- bull
- camels
- couple
- forest
- industry
- man
- witch

All themes currently target the **Catppuccin `mocha` flavour** with custom palette overrides.

---

## How It Works

Each theme entry defines:

- **flavour** – Catppuccin flavour (`mocha`)  
- **palette** – Color overrides for that flavour  
- **highlights** – Highlight overrides (shared by default)  

When you run:

```
:SavitskyLoad <theme>
```

The plugin performs:

- `catppuccin.setup()` with theme-specific overrides  
- `:colorscheme catppuccin-mocha`  

No restart is required.

---

## Optional: Load a Theme on Startup

If you want a default Savitsky theme when Neovim starts:

```lua
vim.cmd("SavitskyLoad forest")
```

Place this after plugin initialization.

---

## File Structure

```
savitsky.nvim
├── plugin
│   └── savitsky.lua        # user commands
├── lua
│   └── savitsky
│       ├── init.lua        # theme loader
│       ├── registry.lua   # theme definitions
│       ├── palettes       # palette files
│       └── highlights
│           └── default.lua
```

---

## Contributing

Contributions are welcome:

- New palettes
- New highlight styles
- Documentation improvements

Open an issue or submit a pull request.

---

## License

MIT License — see LICENSE.

---

## Related Projects

- https://github.com/catppuccin/nvim
- https://github.com/catppuccin/catppuccin

---

Inspired by the Savitsky Museum’s collection of Central Asian and avant-garde art.
