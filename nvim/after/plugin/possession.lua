require("possession").setup({
	session_dir = os.getenv("HOME") .. "/.vim-sessions",
	silent = true,
	load_silent = true,
	debug = false,
	prompt_no_cr = false,
	autosave = {
		current = true, -- or fun(name): boolean
		tmp = false, -- or fun(): boolean
		tmp_name = "tmp",
		on_load = true,
		on_quit = true,
	},
	commands = {
		save = "PossessionSave",
		load = "PossessionLoad",
		close = "PossessionClose",
		delete = "PossessionDelete",
		show = "PossessionShow",
		list = "PossessionList",
		migrate = "PossessionMigrate",
	},
	plugins = {
		close_windows = {
			hooks = { "before_save", "before_load" },
			preserve_layout = true, -- or fun(win): boolean
			match = {
				floating = true,
				buftype = {},
				filetype = {},
				custom = false, -- or fun(win): boolean
			},
		},
		delete_hidden_buffers = false,
		delete_buffers = true,
	},
})
