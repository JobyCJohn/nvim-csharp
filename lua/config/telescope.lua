local map = vim.api.nvim_set_keymap
options = { noremap = true, silent = true }

map('n', '<Leader>t', [[<cmd>lua require'config.utils'.project_files()<CR>]], options)
map('n', '<Leader>b', [[<cmd>Telescope buffers<CR>]], options)
map('n', '<Leader>h', [[<cmd>Telescope command_history<CR>]], options)
map('n', '<Leader>m', [[<cmd>Telescope marks<CR>]], options)
map('n', '<Leader>r', [[<cmd>Telescope registers<CR>]], options)
map('n', '<Leader>C', [[<cmd>Telescope commands<CR>]], options)
map('n', '<Leader>M', [[<cmd>Telescope keymaps<CR>]], options)
map('n', '<Leader>fb', [[<cmd>Telescope file_browser<CR>]], options)
map('n', '<Leader>fg', [[<cmd>Telescope live_grep<CR>]], options)
map('n', '<Leader>fh', [[<cmd>Telescope help_tags<CR>]], options)
map('n', '<Leader>fs', [[<cmd>Telescope grep_string<CR>]], options)
map('n', '<S-p>', [[<cmd>Telescope neoclip<CR>]], options)

local actions = require'telescope.actions'
require'telescope'.setup{
    defaults = {
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        sorting_strategy = "ascending",
        layout_config = {
            prompt_position = "top",
        },
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
    pickers = {
        buffers ={
            theme = 'dropdown',
            previewer = false
        }
    },
    extensions = {
    }
}

require'telescope'.load_extension('fzf')
require'telescope'.load_extension('file_browser')
require'telescope'.load_extension('neoclip')
