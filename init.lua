-- Includes
require('mappings')
require('lualine').setup()
require('plugins')
require('packer')
require('gitsigns').setup()
require('bufferline').setup()

-- Colorschemes
require('onedarkpro').setup{
    theme = "onedark_vivid", 
}
vim.g.material_theme = "darker"
vim.cmd "colorscheme onedarkpro"

-- Main Options
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.g.mapleader = ';'
vim.g.maplocalleader = ';'
