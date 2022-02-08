local set = vim.opt

set.autoindent = true
set.autoread = true
set.backspace = {'indent', 'eol', 'start'}
set.backup = false
set.clipboard = {'unnamed', 'unnamedplus'} -- allows neovim to access the system clipboard
set.colorcolumn = [[120]]
set.completeopt = {'menuone', 'noinsert'}
set.encoding = 'utf-8'
set.errorbells = false
set.expandtab = true -- use spaces instead of tabs
set.fixendofline = false
set.hidden = true -- enable background buffers
set.hlsearch = true	-- highlight all matches on previous search pattern
set.ignorecase = true -- ignore case in search patterns
set.incsearch = true -- shows the match while typing
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
set.smartcase = true -- ignore lowercase for the whole pattern
set.smartindent = true
set.smarttab = true
set.splitbelow = true
set.splitright = true
set.softtabstop = 4
set.swapfile = false
set.termguicolors = true -- set term gui color
set.tabstop = 4
set.undofile = false
set.wrap = false

-- ignore files
set.wildignore:append('*.dll,*.pdb,*.cache,*.resources,*.exe,*.ini,*.snk,*.swp,*.swo,*.bak')
set.wildignore:append('**/node_modules/**')

-- mapping space as leader
vim.api.nvim_set_keymap('n', '<space>', '', {})
vim.g.mapleader = ' '
