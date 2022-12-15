local default_options = {
	backup = false,
	cursorline = true,
	expandtab = true,
	fileencoding = "utf-8",
	guicursor = "",
	hidden = true,
	hlsearch = true,
	incsearch = true,
	laststatus = 3,
	number = true,
	numberwidth = 4,
	relativenumber = true,
	scrolloff = 8,
	shiftwidth = 2,
	sidescrolloff = 8,
	signcolumn = "yes",
	smartcase = true,
	smartindent = true,
	softtabstop = 2,
	splitbelow = true,
	splitright = true,
	tabstop = 2,
	title = true,
	wrap = false,
	swapfile = false,
}

for k, v in pairs(default_options) do
	vim.opt[k] = v
end
