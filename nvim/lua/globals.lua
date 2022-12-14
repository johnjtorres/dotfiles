local global_options = {
  mapleader = " ",
}

for k, v in pairs(global_options) do
  vim.g[k] = v
end
