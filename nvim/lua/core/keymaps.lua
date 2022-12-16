local function bind(mode, outer_opts)
	outer_opts = outer_opts or { noremap = true, silent = true }
	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force", outer_opts, opts or {})
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

local nnoremap = bind("n")
local inoremap = bind("i")
local vnoremap = bind("v")
local xnoremap = bind("x")

-- Move lines up/down
nnoremap("<A-j>", ":m .+1<CR>==")
nnoremap("<A-k>", ":m .-2<CR>==")

-- Insert lines
nnoremap("<leader>o", "o<Esc>k")
nnoremap("<leader>O", "O<Esc>j")

-- Write file
nnoremap("<leader>,", ":write<CR>")

-- Buffers
nnoremap("<leader><leader>", "<C-6>")
nnoremap("<leader>h", ":bprev<CR>")
nnoremap("<leader>l", ":bnext<CR>")

-- Splits
nnoremap("<C-h>", ":wincmd h<CR>")
nnoremap("<C-j>", ":wincmd j<CR>")
nnoremap("<C-k>", ":wincmd k<CR>")
nnoremap("<C-l>", ":wincmd l<CR>")

-- Quit
nnoremap("<leader>q", ":bdel<CR>")
nnoremap("<leader>Q", ":qa!<CR>")

-- First character
nnoremap("<leader>0", "^")

-- Beginning of line
nnoremap("<S-h>", "0")

-- End of line
nnoremap("<S-l>", "$")

-- Show registers
nnoremap("<leader>r", ":register<CR>")

-- Disable highlighting
nnoremap(",<leader>", ":nohlsearch<CR>")

-- Run macros easily
nnoremap("Q", "@q")

-- Open nvim-tree
nnoremap("<C-n>", ":NvimTreeFindFileToggle<CR>")

-- Paste from clipboard
nnoremap("<leader>p", '"+p`[v`]')

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", {})

-- Move lines up/down
inoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
inoremap("<A-k>", "<Esc>:m .-2<CR>==gi")

-- Keep selection when indenting
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Copy to clipboard
vnoremap("<leader>y", '"+y')

-- Run macros
vnoremap("Q", ":norm @q<CR>")

-- Move lines up/down
xnoremap("<A-j>", ":m '>+1<CR>gv-gv")
xnoremap("<A-k>", ":m '<-2<CR>gv-gv")
