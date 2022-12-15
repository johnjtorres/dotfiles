local default_options = {
	backup = false,
	expandtab = true,
	fileencoding = "utf-8",
	guicursor = "",
	hidden = true,
	hlsearch = true,
	laststatus = 3,
	incsearch = true,
	number = true,
	relativenumber = true,
	scrolloff = 8,
	shiftwidth = 2,
	sidescrolloff = 8,
	smartcase = true,
	smartindent = true,
	softtabstop = 2,
	splitbelow = true,
	splitright = true,
	tabstop = 2,
	title = true,
	wrap = false,
}

for k, v in pairs(default_options) do
	vim.opt[k] = v
end
