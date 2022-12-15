local function bind(mode, outer_opts)
  outer_opts = outer_opts or { noremap = true, silent = true }
  return function(lhs, rhs, opts)
    opts = vim.tbl_extend("force", 
      outer_opts,
      opts or {}
    )
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
nnoremap("<leader>b", ":ls<CR>:b")

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
nnoremap("<F3>", ":nohl<CR>")

-- Run macros easily
nnoremap("Q", "@q")

-- Open netrw
nnoremap("<C-e>", ":Lex<CR>:vertical resize 20<CR>")


-- Move lines up/down
inoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
inoremap("<A-k>", "<Esc>:m .-2<CR>==gi")

-- Keep selection when indenting
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Run macros
vnoremap("Q", ":norm @q<CR>")

-- Move lines up/down
xnoremap("<A-j>", ":m '>+1<CR>gv-gv")
xnoremap("<A-k>", ":m '<-2<CR>gv-gv")
