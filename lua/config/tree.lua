require'nvim-tree'.setup {
    update_cwd = true,
    update_focused_file = {
        enable = true,
    },
    view = {
        width = 40,
    },
    filters = {
        dotfiles = true
    }
}

map('n', '<Leader>e', '<cmd>:NvimTreeToggle<CR>', options)
