-- Example configuration for savitsky.nvim with packer.nvim

return require('packer').startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Catppuccin theme
  use {
    'catppuccin/nvim',
    as = 'catppuccin'
  }

  -- Savitsky color palettes
  use {
    'samesense/savitsky.nvim',
    requires = { 'catppuccin/nvim' },
    config = function()
      -- Setup savitsky with your preferred theme
      local savitsky = require("savitsky")
      local colors = savitsky.setup({ theme = "mocha" })

      -- Configure catppuccin to use savitsky colors
      require("catppuccin").setup({
        flavour = "mocha",
        color_overrides = {
          mocha = colors,
        },
      })

      -- Apply the colorscheme
      vim.cmd.colorscheme("catppuccin-mocha")
    end
  }
end)
