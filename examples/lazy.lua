-- Example configuration for savitsky.nvim with lazy.nvim

return {
  -- First, ensure catppuccin is loaded
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- Then setup savitsky
  {
    "samesense/savitsky.nvim",
    dependencies = { "catppuccin/nvim" },
    config = function()
      -- Setup savitsky with your preferred theme
      local savitsky = require("savitsky")
      local colors = savitsky.setup({ theme = "mocha" })

      -- Configure catppuccin to use savitsky colors
      require("catppuccin").setup({
        flavour = "mocha", -- mocha, macchiato, frappe, latte
        transparent_background = false,
        color_overrides = {
          mocha = colors,
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = true,
          -- Add more integrations as needed
        },
      })

      -- Apply the colorscheme
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
