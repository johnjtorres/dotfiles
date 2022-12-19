-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Unassign space key
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Save file
vim.keymap.set("n", "<leader>,", vim.cmd.write)

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- Insert lines
vim.keymap.set("n", "<leader>o", "o<Esc>k")
vim.keymap.set("n", "<leader>O", "O<Esc>j")

-- Go to end/beginning of line
vim.keymap.set("n", "H", "0")
vim.keymap.set("n", "L", "$")

-- Go to first character of line
vim.keymap.set("n", "<leader>0", "^")

-- Keep selection when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Run macros easily
vim.keymap.set("n", "Q", "@q")
vim.keymap.set("v", "Q", ":norm @q<CR>")

-- Append line below to current line
vim.keymap.set("n", "J", "mzJ`z")

-- Cursor stays centered when jumping half a page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Searched items stay centered on screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over word without losing copied text
vim.keymap.set("x", "<leader>p", '"_dP')

-- Copy text to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Delete text and send to _ register
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gcI<Left><Left><Left><Left>")
vim.keymap.set("n", "<leader>S", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Replace selection
vim.keymap.set("v", "<leader>s", '"hy:%s/<C-r>h//gcI<Left><Left><Left><Left>')
vim.keymap.set("v", "<leader>S", '"hy:%s/<C-r>h//gI<Left><Left><Left>')

-- Remove trailing whitespace
vim.keymap.set("n", "<leader>tw", ":%s/\\s\\+$//e<CR>")

-- Buffers
vim.keymap.set("n", "<leader>h", ":bprev<CR>", { silent = true })
vim.keymap.set("n", "<leader>l", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>;", "<C-6>", { silent = true })

-- Splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Telescope keymaps
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer]" })
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>fw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
