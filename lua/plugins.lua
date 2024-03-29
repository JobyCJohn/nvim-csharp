local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
-- clone packer repository if not exist
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
vim.cmd [[packadd packer.nvim]]
end

require'packer'.startup({function()
    -- package manager
    use 'wbthomason/packer.nvim'

    -- theme
    use {
        'gruvbox-community/gruvbox',
        setup = function()
            if vim.fn.has('win32') == 1 then
                vim.opt.termguicolors = true
            end
            vim.cmd('colorscheme gruvbox')
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true},
        config = function() require'config.statusline' end
    }

    -- file explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() require'config.tree' end
    }

    -- text, file search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-live-grep-raw.nvim' }
        },
        config = function() require'config.telescope' end
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- documentation
    use {
        'junegunn/goyo.vim', opt = true, cmd = { 'Goyo' },
        setup = function ()
            vim.g.goyo_width = '120'
            vim.g.goyo_height = '100%'
        end
    }
    use {
        'plasticboy/vim-markdown',
        filetype = "markdown",
        setup = function()
            vim.g.vim_markdown_folding_disabled = 1
            vim.g.vim_markdown_frontmatter = 1
        end
    }
    use {
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" }
    }

    -- code navigation and development
    use 'tpope/vim-commentary'
    use 'tpope/vim-dispatch'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use {
        'windwp/nvim-autopairs',
        after = "nvim-cmp",
        config = function() require'config.autopairs' end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            'nvim-treesitter/nvim-treesitter-refactor',
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
        config = function() require'config.treesitter' end
    }

    -- git
    use {
        'tpope/vim-fugitive',
        config = function() require'config.fugitive' end
    }
    use 'tpope/vim-rhubarb'

    -- language server
    use 'williamboman/nvim-lsp-installer'
    use {
        'neovim/nvim-lspconfig',
        config = function() require'config.lsp' end
    }

    -- auto completion and snippets
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
        },
        config = function() require'config.cmp' end
    }
    use 'hoffs/omnisharp-extended-lsp.nvim'

    -- debugger
    use {
        'mfussenegger/nvim-dap',
        config = function() require'config.dap' end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end,
config = {
    display = {
        open_cmd = 'rightbelow 60vnew \\[packer\\]'
    }
}})

-- regenerate plugin compiled file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])
