vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function ()

    use 'kyazdani42/nvim-web-devicons' -- Devicons
    use 'sheerun/vim-polyglot' -- Better Syntax Support
    use 'jiangmiao/auto-pairs' -- Auto pairs for '(' '[' '{'
    use 'sainnhe/edge' -- Colorscheme
    use 'tpope/vim-commentary' --Comments
    use 'norcalli/nvim-colorizer.lua' --Colorizer
    use 'junegunn/rainbow_parentheses.vim' -- Rainbow Parenthesis
    use 'tpope/vim-sleuth' -- Auto tabs
    use 'tpope/vim-surround' -- Surround
    -- use 'neovim/nvim-lspconfig' -- LSP config
    -- use 'nvim-lua/completion-nvim' --LSP Completion
    use 'nvim-treesitter/nvim-treesitter' --TreeSitter
    use 'nvim-lua/lsp-status.nvim'
    --FZF
    -- use 'junegunn/fzf', { 'do': { -> fzf#install() } }
    -- use 'junegunn/fzf.vim'
    use 'airblade/vim-rooter' -- Project root
    --Git Integration
    use 'mhinz/vim-signify'
    use 'tpope/vim-fugitive'
    -- use 'tpope/vim-rhubarb'
    -- use 'junegunn/gv.vim' -- Git commit browser
    use 'habamax/vim-godot'

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    -- use 'kyazdani42/nvim-tree.lua'
    use 'hoob3rt/lualine.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'neoclide/coc.nvim'
end
)
