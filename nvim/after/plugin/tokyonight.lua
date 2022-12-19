require("tokyonight").setup({
	style = "storm",
	transparent = true,
	styles = {
		sidebars = "transparent",
	},
})

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd([[colorscheme tokyonight]])
