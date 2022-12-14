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
-- Write file
nnoremap("<leader>,", ":write<CR>")

-- Move lines up/down
inoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
inoremap("<A-k>", "<Esc>:m .-2<CR>==gi")

-- Keep selection when indenting
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Move lines up/down
xnoremap("<A-j>", ":m '>+1<CR>gv-gv")
xnoremap("<A-k>", ":m '<-2<CR>gv-gv")
