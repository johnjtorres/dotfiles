require("tokyonight").setup({
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  }
})

require("lualine").setup({
  options = { theme = "tokyonight" },
})

vim.cmd("colorscheme tokyonight")
