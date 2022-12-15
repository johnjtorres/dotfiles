require("lualine").setup({
  sections = { 
    lualine_c = {
      "buffers",
    } 
  },
  disabled_filetypes = { 'packer', 'NVimTree' },
})

