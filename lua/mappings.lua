require('mapx').setup{ global = true }

nnoremap(";ff", "<cmd>Telescope find_files<cr>")
nnoremap(";gg", "<cmd>Neogit<cr>")
nnoremap(";so", "<cmd>so %<cr>")
nnoremap(";s", "<cmd>w<cr>")
nnoremap(";se", "<cmd>wq<cr>")
nnoremap(";e", "<cmd>q<cr>")
nnoremap(";ee", "<cmd>q!<cr>")
nnoremap(";ps", "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \")})<cr>")
-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap("}", "<cmd>BufferLineCycleNext<CR>")
nnoremap("{", "<cmd>BufferLineCyclePrev<CR>")

-- These commands will move the current buffer backwards or forwards in the bufferline
nnoremap("<space>l", "<cmd>BufferLineMoveNext<CR>")
nnoremap("<space>h", "<cmd>BufferLineMovePrev<CR>")

nnoremap(";l", "<cmd>NvimTreeToggle<cr>")
nnoremap(";c", "<cmd>Telescope colorscheme<cr>")
nnoremap(";t", "<cmd>terminal<cr>")
nnoremap(";v", "<cmd>e $MYVIMRC<cr>")

-- These commands will sort buffers by directory, language, or a custom criteria

nnoremap(";d", ":bd<cr>", "silent")
map("<C-Up>", ":move '<-2<cr>gv-gv")
map("<C-Down>", ":move '>+1<cr>gv-gv")

nnoremap("<C-S-Up>", "<cmd>resize -2<cr>")
nnoremap("<C-S-Down>", "<cmd>resize +2<cr>")
nnoremap("<C-S-Left>", "<cmd>vertical resize -2<cr>")
nnoremap("<C-S-Right>", "<cmd>vertical resize +2<cr>")
inoremap("<expr> <C-f>", 'lua vim.cmd "coc#pum#visible() ? coc#pum#confirm()"')
-- inoremap("<expr> <C-f>", 'coc#pum#visible() ? coc#pum#confirm() : "<cr>"')

