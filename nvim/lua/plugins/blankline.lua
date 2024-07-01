return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "indent", { fg = "#24272d" })
				vim.api.nvim_set_hl(0, "scope", { fg = "#33363c" })
			end)
			require("ibl").setup({
				indent = {
					highlight = "indent",
				},
				scope = {
					highlight = "scope",
				},
			})
		end,
	},
}
