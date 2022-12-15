require("tokyonight").setup({
  transparent = true,
})

require("lualine").setup({
  options = { theme = "tokyonight" },
})

vim.cmd("colorscheme tokyonight")
