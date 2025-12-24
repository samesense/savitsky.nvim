local M = {}

-- Available themes/palettes
M.themes = {
  "mocha",
  "macchiato",
  "frappe",
  "latte",
}

-- Load a specific palette
local function load_palette(theme)
  local ok, palette = pcall(require, "savitsky.palettes." .. theme)
  if not ok then
    vim.notify(
      "savitsky.nvim: Failed to load palette '" .. theme .. "'",
      vim.log.levels.ERROR
    )
    return nil
  end
  return palette
end

-- Get color overrides for catppuccin
function M.get_overrides(theme)
  theme = theme or "mocha"
  return load_palette(theme)
end

-- Setup function to integrate with catppuccin
-- This should be called before setting up catppuccin
function M.setup(opts)
  opts = opts or {}

  local theme = opts.theme or "mocha"

  -- Validate theme
  local valid_theme = false
  for _, t in ipairs(M.themes) do
    if t == theme then
      valid_theme = true
      break
    end
  end
  
  if not valid_theme then
    vim.notify(
      "savitsky.nvim: Invalid theme '" .. theme .. "'. Using 'mocha' instead.",
      vim.log.levels.WARN
    )
    theme = "mocha"
  end
  
  -- Store the selected theme for later use
  M.current_theme = theme
  
  return M.get_overrides(theme)
end

return M
