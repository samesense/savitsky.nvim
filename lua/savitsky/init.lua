local M = {}
local registry = require("savitsky.registry")

function M.setup()
	-- optional
end

function M.load(name)
	local theme = registry[name]
	if not theme then
		vim.notify("Savitsky: unknown theme " .. name, vim.log.levels.ERROR)
		return
	end

	local cp = require("catppuccin")
	cp.setup({
		flavour = theme.flavour,
		color_overrides = { [theme.flavour] = theme.palette },
		highlight_overrides = { [theme.flavour] = theme.highlights },
	})

	vim.cmd("colorscheme catppuccin-" .. theme.flavour)
end

return M
