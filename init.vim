set termguicolors
set number
set ts=4
set sw=4
set sts=4
set autoindent
filetype indent on
colorscheme onehalfdark

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/sonokai'
Plug 'neoclide/coc.nvim'
" Plug 'glepnir/dashboard-nvim'
Plug 'TimUntersberger/neofs'
Plug 'TimUntersberger/neogit' 
Plug 'nvim-lua/plenary.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ms-jpq/chadtree'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

lua << END
require('lualine').setup()
print("Welcome!!!")
-- git.command: 'git'
END
" 
