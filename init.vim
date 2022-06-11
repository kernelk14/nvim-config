" Settings {{{
set termguicolors
set number
set ts=4
set sw=4
set sts=4
set autoindent
filetype indent on
colorscheme onehalfdark
set foldmarker={{{,}}}
" }}}
" Plugins {{{
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'AckslD/nvim-whichkey-setup.lua'
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'sainnhe/sonokai'
Plug 'Iron-E/nvim-libmodal'
Plug 'Iron-E/nvim-marktext'
Plug 'plasticboy/vim-markdown'
" Plug 'neoclide/coc.nvim'
" Plug 'glepnir/dashboard-nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'TimUntersberger/neofs'
Plug 'TimUntersberger/neogit' 
Plug 'nvim-lua/plenary.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'terryma/vim-multiple-cursors'
Plug 'folke/which-key.nvim'
" If you want to have icons in your statusline choose one of these
" Plug 'ycm-core/YouCompleteMe'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'prabirshrestha/vim-lsp'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'ms-jpq/chadtree'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" }}}
" Lua Scripts {{{
lua << END
require('lualine').setup()
-- require('lspconfig').pyls.setup{on_attach=require'completion'.on_attach}
require('lspconfig').pyright.setup{}
require('lspconfig').grammarly.setup{}
print("Welcome!!!")
-- git.command: 'git'
END
" }}}
" Miscellaneous Settings {{{
setlocal foldmethod=marker
set nofoldenable
set foldlevel=99
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = '<C-f>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
" }}}
" Remappings {{{
let mapleader=" "
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>gg <cmd>Neogit<cr>
nnoremap <leader>so <cmd>so %<cr>
nnoremap <leader>s <cmd>w<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
" }}}
" let v:insertmode				       = '<C-i>'
