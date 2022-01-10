local map = vim.api.nvim_set_keymap
options = { noremap = true, silent = true }

map('n', '<Leader>t', [[<cmd>lua require'config.utils'.project_files()<CR>]], options)
map('n', '<Leader>b', [[<cmd>Telescope buffers<CR>]], options)
map('n', '<Leader>c', [[<cmd>Telescope command_history<CR>]], options)
map('n', '<Leader>f', [[<cmd>Telescope live_grep<CR>]], options)
map('n', '<Leader>r', [[<cmd>Telescope registers<CR>]], options)
map('n', '<Leader>F', [[<cmd>Telescope grep_string<CR>]], options)
map('n', '<Leader>H', [[<cmd>Telescope help_tags<CR>]], options)
map('n', '<Leader>M', [[<cmd>Telescope keymaps<CR>]], options)
map('n', '<Leader>B', [[<cmd>Telescope file_browser<CR>]], options)


local actions = require'telescope.actions'
require'telescope'.setup{
    defaults = {
        path_display = { 'smart' },
        mappings = {
            i = {
                ["<Esc>"] = actions.close,
                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
            },
            n = {
                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
            },
        },
    },
}

require'telescope'.load_extension('fzf')
