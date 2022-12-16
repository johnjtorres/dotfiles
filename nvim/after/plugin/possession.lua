require("possession").setup({
  session_dir = os.getenv("HOME") .. "/.vim-sessions",
  autosave = {
    current = true,
    on_load = true,
    on_quit = true,
  },
  plugins = { delete_hidden_buffers = false, delete_buffers = true },
})
