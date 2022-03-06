_G.map = vim.api.nvim_set_keymap
_G.opts = { noremap = true, silent = true }

-- set working directory to the current file
map('n', '<Leader>cd', ':cd %:p:h<CR>:pwd<CR>', opts)

-- open current file directory
map('n', '<Leader>o', ':silent !start %:p:h<CR>', opts)

-- use '*' and '#' results for search & replace in current file
map('n', '<Leader>r', ':%s///g<Left><Left>', opts)
map('n', '<Leader>rc', ':%s///gc<Left><Left><Left>', opts)
map('x', '<Leader>r', ':s///g<Left><Left>', opts)
map('x', '<Leader>rc', ':s///gc<Left><Left><Left>', opts)

-- yank to the end of the current line
map('n', 'Y', 'y$', opts)

-- join without changing the cursor position
map('n', 'J', 'mzJ`z', opts)

-- search result navigation without changing the cursor position
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- break undo sequence at punctuation marks
map('i', ',', ',<C-g>u', opts)
map('i', '.', '.<C-g>u', opts)

-- prevent x and del key overriding what's in the clipboard
map('', 'x', '"_x', opts)
map('', 'X', '"_x', opts)
map('', '<Del>', '"_x', opts)

-- navigation between split windows
map('n', '<C-j>', '<C-w>w', opts)
map('n', '<C-k>', '<C-w>W', opts)

-- moving line above/below
map('n', '<A-j>', ':m .+1<CR>==', opts)
map('n', '<A-k>', ':m .-2<CR>==', opts)
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)
map('v', '<A-j>', [[:m '>+1<CR>gv=gv]], opts)
map('v', '<A-k>', [[:m '<-2<CR>gv=gv]], opts)

-- (gui-mode only) tab navigation like browser
-- map('n', '<C-Tab>', ':<C-U>tabnext<CR>', opts)
-- map('i', '<C-Tab>', '<C-\\><C-N>:tabnext<CR>', opts)
-- map('c', '<C-Tab>', '<C-C>:tabnext<CR>', opts)
-- map('n', '<C-S-Tab>', ':<C-U>tabprevious<CR>', opts)
-- map('i', '<C-S-Tab>', '<C-\\><C-N>:tabprevious', opts)
-- map('c', '<C-S-Tab>', '<C-C>:tabprevious<CR>', opts)
