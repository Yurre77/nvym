return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		local configs = require('nvim-treesitter')

		configs.setup({
			ensure_installed = {
				'c',
				'lua',
				'typescript',
				'cpp',
				'javascript',
				'css',
				'vimdoc',
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
