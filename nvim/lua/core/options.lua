-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes"

-- Tab to 2 spaces
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

-- Use a block as cursor always
vim.o.guicursor = ""

-- Always split below and right
vim.o.splitbelow = true
vim.o.splitright = true

-- Disable line wrap
vim.o.wrap = false

-- Move screen when cursor gets close to edge
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"
