return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require('bufferline').setup({
				options = {
					mode = "buffers",
					numbers = "none",
					color_icons = false,
					indicator = {
						style = "none",
					},
					modified_icon = "e",
					left_trunc_marker = "<",
					right_trunc_marker = ">",
					diagnostics = "nvim_lsp",
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local s = " "
						for e, _ in pairs(diagnostics_dict) do
							local sym = e == "error" and "x" or (e == "warning" and "!" or "i")
							s = s .. sym
						end
						return s
					end,
					always_show_bufferline = true,
				}
			})
		end
	}
}
