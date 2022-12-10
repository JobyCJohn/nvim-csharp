local set = vim.opt

set.autoindent = true -- indent a new line the same amount as the line just typed
set.autoread = true
set.autowrite = true
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
set.shiftwidth = 4
set.shm:append('I')
set.showcmd = true
set.showmode = false
set.signcolumn = 'yes'
set.smartcase = true -- ignore lowercase for the whole pattern
set.smartindent = true
set.smarttab = true
set.softtabstop = 4
set.swapfile = false
set.tabstop = 4
set.undofile = false
set.wrap = false

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ignore files
set.wildignore:append('*.dll,*.pdb,*.cache,*.resources,*.exe,*.ini,*.snk,*.swp,*.swo,*.bak')
set.wildignore:append('**/node_modules/**')

-- mapping space as leader
vim.api.nvim_set_keymap('n', '<space>', '', {})
vim.g.mapleader = ' '

-- to use powershell
set.shell = 'pwsh'
set.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
set.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set.shellquote = ''
set.shellxquote = ''
