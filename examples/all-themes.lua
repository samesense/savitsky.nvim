-- Example: Using all four savitsky palettes with corresponding catppuccin flavours

local savitsky = require("savitsky")

-- Apply all savitsky palettes to catppuccin
require("catppuccin").setup({
  color_overrides = {
    mocha = savitsky.get_overrides("mocha"),
    macchiato = savitsky.get_overrides("macchiato"),
    frappe = savitsky.get_overrides("frappe"),
    latte = savitsky.get_overrides("latte"),
  },
})

-- Now you can switch between them:
-- vim.cmd.colorscheme("catppuccin-mocha")
-- vim.cmd.colorscheme("catppuccin-macchiato")
-- vim.cmd.colorscheme("catppuccin-frappe")
-- vim.cmd.colorscheme("catppuccin-latte")

-- Set your preferred default
vim.cmd.colorscheme("catppuccin-mocha")
