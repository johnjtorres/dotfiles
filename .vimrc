" Line numbers
set number

" Default four-space tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set smarttab

" Colorscheme
set termguicolors
colorscheme catppuccin_mocha

" Window
set splitright
set splitbelow

"" Backup, Swap and Undo
set undofile
set directory=~/.vim/swap,/tmp
set backupdir=~/.vim/backup,/tmp
set undodir=~/.vim/undo,/tmp

" Keymaps
let mapleader = " "
nnoremap <silent> <F5> :let _s=@/
  \ <Bar> :%s/\s\+$//e
  \ <Bar> :let @/=_s
  \ <Bar> :nohl <Bar> :unlet _s <CR>
nnoremap <leader>, :write<CR>
nnoremap <silent> <leader>e :Explore<CR>
nnoremap <silent> <leader>bd :bdelete<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>bp :bprevious<CR>
nnoremap <leader>bf :ls<CR>:buffer<Space>
nnoremap <leader>so :source $MYVIMRC<CR>:echo "reloaded vimrc!"<CR>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
inoremap <silent> <C-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
