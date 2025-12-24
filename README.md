# savitsky.nvim

> Neovim themes derived from Savitsky Museum paintings

A color palette collection for Neovim that uses [catppuccin](https://github.com/catppuccin/nvim) theme overrides to introduce new palettes inspired by the vibrant and rich colors of Central Asian art from the Savitsky Museum.

## Features

- 🎨 Four beautiful palettes: `mocha`, `macchiato`, `frappe`, and `latte`
- 🖼️ Colors inspired by Savitsky Museum paintings
- 🔧 Easy integration with catppuccin theme
- ⚡ Minimal setup required

## Requirements

- Neovim >= 0.8.0
- [catppuccin/nvim](https://github.com/catppuccin/nvim) theme

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "samesense/savitsky.nvim",
  dependencies = {
    "catppuccin/nvim",
  },
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  "samesense/savitsky.nvim",
  requires = {
    "catppuccin/nvim",
  },
}
```

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'samesense/savitsky.nvim'
```

## Usage

### Basic Setup

```lua
-- Setup savitsky with your preferred theme
local savitsky = require("savitsky")
local colors = savitsky.setup({ theme = "mocha" })

-- Configure catppuccin to use savitsky colors
require("catppuccin").setup({
  color_overrides = {
    mocha = colors,
  },
})

-- Set the colorscheme
vim.cmd.colorscheme("catppuccin-mocha")
```

### Available Themes

Choose from four different palettes:

- `mocha` - Rich, deep colors (default, dark theme)
- `macchiato` - Warm, medium-dark colors
- `frappe` - Cool, sophisticated colors
- `latte` - Light, vibrant colors

### Advanced Configuration

You can use different savitsky palettes with different catppuccin variants:

```lua
local savitsky = require("savitsky")

require("catppuccin").setup({
  color_overrides = {
    mocha = savitsky.get_overrides("mocha"),
    macchiato = savitsky.get_overrides("macchiato"),
    frappe = savitsky.get_overrides("frappe"),
    latte = savitsky.get_overrides("latte"),
  },
})

vim.cmd.colorscheme("catppuccin-mocha")
```

### Switching Themes

You can easily switch between themes at runtime:

```lua
-- Switch to frappe palette
local colors = require("savitsky").get_overrides("frappe")
require("catppuccin").setup({
  color_overrides = {
    frappe = colors,
  },
})
vim.cmd.colorscheme("catppuccin-frappe")
```

## Color Palette

Each theme includes the complete catppuccin color palette structure:

- **Accent colors**: rosewater, flamingo, pink, mauve, red, maroon, peach, yellow, green, teal, sky, sapphire, blue, lavender
- **Text colors**: text, subtext1, subtext0
- **Overlay colors**: overlay2, overlay1, overlay0
- **Surface colors**: surface2, surface1, surface0
- **Base colors**: base, mantle, crust

## Inspiration

The color palettes are inspired by the rich and vibrant artworks housed in the Savitsky Museum in Nukus, Uzbekistan, which features one of the world's finest collections of Russian and Central Asian avant-garde art.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests to add new palettes or improve existing ones.

## License

MIT License - see [LICENSE](LICENSE) for details.

## Related Projects

- [catppuccin/nvim](https://github.com/catppuccin/nvim) - Soothing pastel theme for Neovim
- [Catppuccin](https://github.com/catppuccin/catppuccin) - The main Catppuccin organization

## Acknowledgments

- Thanks to the Catppuccin team for creating such a flexible and beautiful theme framework
- Inspired by the Savitsky Museum's collection of Central Asian art
