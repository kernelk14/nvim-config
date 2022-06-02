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
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/sonokai'
Plug 'Iron-E/nvim-libmodal'
Plug 'Iron-E/nvim-marktext'
Plug 'plasticboy/vim-markdown'
" Plug 'neoclide/coc.nvim'
" Plug 'glepnir/dashboard-nvim'
Plug 'TimUntersberger/neofs'
Plug 'TimUntersberger/neogit' 
Plug 'nvim-lua/plenary.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'neovim/nvim-lspconfig'
" If you want to have icons in your statusline choose one of these
" Plug 'ycm-core/YouCompleteMe'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'prabirshrestha/vim-lsp'
" Plug 'ms-jpq/chadtree'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

lua << END
require('lualine').setup()
-- require('lspconfig').pyls.setup{on_attach=require'completion'.on_attach}
require('lspconfig').pyright.setup{}
print("Welcome!!!")
-- git.command: 'git'
END
" 
