local opts = { noremap = true, silent = true }

local remappings = {
  i = {
    -- Move current line up/down
    ["<A-j>"] = "<Esc>:m .+1<CR>==gi",
    ["<A-k>"] = "<Esc>:m .-2<CR>==gi",
  },
  n = {
    -- Move current line up/down
    ["<A-j>"] = ":m .+1<CR>==",
    ["<A-k>"] = ":m .-2<CR>==",
    ["<leader>,"] = ":write<CR>",
  },
  v = {
    -- Better indenting
    ["<"] = "<gv",
    [">"] = ">gv",
  },
  x = {
    -- Move current block up/down
    ["<A-j>"] = ":m '>+1<CR>gv-gv",
    ["<A-k>"] = ":m '<-2<CR>gv-gv",
  },
}

for mode, remaps in pairs(remappings) do
  for lhs, rhs in pairs(remaps) do
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end
