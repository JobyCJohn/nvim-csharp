local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
-- clone packer repository if not exist
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path
    })
end

-- only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require'packer'.startup({function()
    -- package manager
    use 'wbthomason/packer.nvim'

    -- theme
    use {
        'gruvbox-community/gruvbox',
        setup = function()
            vim.g.gruvbox_contrast_dark = 'hard'
            vim.cmd('colorscheme gruvbox')
        end
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require'config.statusline' end
    }

    -- file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            map('n', '<Leader>e', '<cmd>:NvimTreeToggle<CR>', options)
            require'nvim-tree'.setup {
                update_cwd = true,
                update_focused_file = {
                    enable = true,
                },
                filters = {
                    dotfiles = true
                }
            }
        end
    }

    -- file and text search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
        },
        config = function() require'config.telescope' end
    }
    use { 'nvim-telescope/telescope-file-browser.nvim' }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        "AckslD/nvim-neoclip.lua",
        config = function()
            require('neoclip').setup()
        end,
    }
    use { 'tami5/lspsaga.nvim' }

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
        'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install'
    }

    -- code navigation and development
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-commentary'
    use {
        'tpope/vim-fugitive',
        config = function ()
            map('n', '<Leader>gs', [[<cmd>lua require'config.utils'.git_status()<CR>]], options)
            map('n', '<A-Up>',     '[c', options)
            map('n', '<A-Down>',   ']c', options)
            map('n', '<A-Right>',  ':diffget //2<CR>', options)
            map('n', '<A-Left>',   ':diffget //3<CR>', options)
        end
    }
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            'nvim-treesitter/nvim-treesitter-refactor',
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        run = ':TSUpdate',
        config = function() require'config.treesitter' end
    }

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
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
        },
        config = function() require'config.cmp' end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end,
config = {
    display = {
        open_cmd = 'rightbelow 50vnew \\[packer\\]'
    }
}})

-- regenerate plugin compiled file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]])
