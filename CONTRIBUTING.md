# Contributing to savitsky.nvim

Thank you for your interest in contributing to savitsky.nvim! This guide will help you add new color palettes or improve existing ones.

## Adding a New Palette

To add a new palette inspired by different artworks from the Savitsky Museum:

1. Create a new file in `lua/savitsky/palettes/` with a descriptive name (e.g., `lua/savitsky/palettes/yourtheme.lua`)

2. The palette file should return a table with all required catppuccin colors:

```lua
-- Description of your theme
return {
  -- Accent colors
  rosewater = "#hexcolor",
  flamingo = "#hexcolor",
  pink = "#hexcolor",
  mauve = "#hexcolor",
  red = "#hexcolor",
  maroon = "#hexcolor",
  peach = "#hexcolor",
  yellow = "#hexcolor",
  green = "#hexcolor",
  teal = "#hexcolor",
  sky = "#hexcolor",
  sapphire = "#hexcolor",
  blue = "#hexcolor",
  lavender = "#hexcolor",

  -- Text colors
  text = "#hexcolor",
  subtext1 = "#hexcolor",
  subtext0 = "#hexcolor",
  
  -- Overlay colors
  overlay2 = "#hexcolor",
  overlay1 = "#hexcolor",
  overlay0 = "#hexcolor",
  
  -- Surface colors
  surface2 = "#hexcolor",
  surface1 = "#hexcolor",
  surface0 = "#hexcolor",

  -- Base colors
  base = "#hexcolor",
  mantle = "#hexcolor",
  crust = "#hexcolor",
}
```

3. Add your theme name to the `M.themes` table in `lua/savitsky/init.lua`

4. Test your palette with catppuccin

5. Submit a pull request with:
   - The new palette file
   - Updated `init.lua` with the theme name
   - A description of the artwork or color inspiration
   - Screenshots showing the theme in action (if possible)

## Color Guidelines

- **Contrast**: Ensure sufficient contrast between text and background colors
- **Harmony**: Colors should work well together and complement each other
- **Inspiration**: Draw inspiration from actual Savitsky Museum artworks
- **Consistency**: Maintain semantic meaning (red for errors, green for success, etc.)

## Testing Your Palette

Test your palette in a real Neovim environment:

```lua
-- In your neovim config
local savitsky = require("savitsky")
local colors = savitsky.get_overrides("yourtheme")

require("catppuccin").setup({
  color_overrides = {
    mocha = colors,  -- or macchiato, frappe, latte
  },
})

vim.cmd.colorscheme("catppuccin-mocha")
```

Test with various file types and plugins to ensure the colors work well in different contexts.

## Code Style

- Use 2 spaces for indentation
- Follow existing code patterns
- Add comments explaining color choices or inspiration
- Keep color values in lowercase hex format (#rrggbb)

## Questions?

Feel free to open an issue if you have questions about contributing!
