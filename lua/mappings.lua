_G.map = vim.api.nvim_set_keymap
_G.options = { noremap = true, silent = true }

-- join without changing the cursor position
map('n', 'J', 'mzJ`z', options)

-- search result navigation without changing the cursor position
map('n', 'n', 'nzzzv', options)
map('n', 'N', 'Nzzzv', options)

-- break undo sequence at punctuation marks
map('i', ',', ',<C-g>u', options)
map('i', '.', '.<C-g>u', options)

-- prevent x and del key overriding what's in the clipboard.
map('', 'x', '"_x', options)
map('', 'X', '"_x', options)
map('', '<Del>', '"_x', options)

-- moving line above/below
map('n', '<A-j>', ':m .+1<CR>==', options)
map('n', '<A-k>', ':m .-2<CR>==', options)
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', options)
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', options)
map('v', '<A-j>', [[:m '>+1<CR>gv=gv]], options)
map('v', '<A-k>', [[:m '<-2<CR>gv=gv]], options)

-- (gui-mode only) tab navigation like browser.
map('n', '<C-Tab>', ':<C-U>tabnext<CR>', options)
map('i', '<C-Tab>', '<C-\\><C-N>:tabnext<CR>', options)
map('c', '<C-Tab>', '<C-C>:tabnext<CR>', options)
map('n', '<C-S-Tab>', ':<C-U>tabprevious<CR>', options)
map('i', '<C-S-Tab>', '<C-\\><C-N>:tabprevious', options)
map('c', '<C-S-Tab>', '<C-C>:tabprevious<CR>', options)
