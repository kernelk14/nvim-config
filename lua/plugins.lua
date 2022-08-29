vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'TimUntersberger/neofs'
    use'TimUntersberger/neogit' 
    use 'nvim-lua/plenary.nvim'
    use 'lambdalisue/fern.vim'
    use 'antoinemadec/FixCursorHold.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use { 'akinsho/bufferline.nvim',  tag = 'v2.*' }
    use 'marko-cerovac/material.nvim'
    use 'b0o/mapx.nvim'
    use 'folke/tokyonight.nvim'
    use 'sainnhe/sonokai'
    use ({ 'projekt0n/github-nvim-theme' })
    use 'olimorris/onedarkpro.nvim'
    use 'tyrannicaltoucan/vim-deep-space'
    use 'tyrannicaltoucan/vim-quantum' 
    use 'kyazdani42/nvim-tree.lua'
    use 'ray-x/go.nvim'
    use 'neoclide/coc.nvim'
    use 'sheerun/vim-polyglot'
end)

