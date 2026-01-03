if vim.g.loaded_savitsky == 1 then
	return
end
vim.g.loaded_savitsky = 1

vim.api.nvim_create_user_command("SavitskyList", function()
	local registry = require("savitsky.registry")
	for name, _ in pairs(registry) do
		print(name)
	end
end, {})

vim.api.nvim_create_user_command("SavitskyLoad", function(opts)
	require("savitsky").load(opts.args)
end, {
	nargs = 1,
	complete = function()
		return vim.tbl_keys(require("savitsky.registry"))
	end,
})
