local telescope = require("telescope")
telescope.load_extension("possession")
telescope.setup {
  defaults = {
    initial_mode = "normal"
  },
}
