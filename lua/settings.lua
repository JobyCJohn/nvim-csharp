local set = vim.opt

set.autoindent = true
set.autoread = true
set.backspace = {'indent', 'eol', 'start'}
set.backup = false
set.clipboard = {'unnamed', 'unnamedplus'}
set.colorcolumn = [[120]]
set.completeopt = {'menuone', 'noinsert'}
set.encoding = 'utf-8'
set.errorbells = false
set.expandtab = true						-- Use spaces instead of tabs
set.fixendofline = false
set.hidden = true							-- Enable background buffers
set.hlsearch = true							-- Highlight found searches
set.ignorecase = true						-- Ignore case letters when search
set.incsearch = true						-- Shows the match while typing
set.laststatus = 2
set.mouse = 'a'
set.number = true
set.pumheight = 10
set.relativenumber = true
set.scrolloff = 8
set.shiftwidth = 4
set.showcmd = true
set.showmode = false
set.signcolumn = 'yes'
set.smartcase = true						 -- Ignore lowercase for the whole pattern
set.smartindent = true
set.smarttab = true
set.softtabstop = 4
set.swapfile = false
set.tabstop = 4
set.undofile = false
set.wrap = false

-- ignore files
set.wildignore:append('*.dll,*.pdb,*.cache,*.resources,*.exe,*.ini,*.snk,*.swp,*.swo,*.bak')
set.wildignore:append('**/node_modules/**')

-- mapping space as leader
vim.api.nvim_set_keymap('n', '<space>', '', {})
vim.g.mapleader = ' '
