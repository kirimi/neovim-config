return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "x",
					[vim.diagnostic.severity.WARN] = "!",
					[vim.diagnostic.severity.INFO] = "i",
					[vim.diagnostic.severity.HINT] = "?",
				},
			},
		})
		require('neo-tree').setup({
			close_if_last_window = false,
		})
	end
}
