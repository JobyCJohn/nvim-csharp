local map = vim.api.nvim_set_keymap
local opts = { oremap = true, silent = true }

map('n', '<Leader>t', '<cmd>lua require"config.utils".project_files()<CR>', options)
map('n', '<Leader>b', '<cmd>Telescope buffers<CR>', options)
map('n', '<Leader>m', '<cmd>Telescope marks<CR>', options)
map('n', '<Leader>p', '<cmd>Telescope neoclip<CR>', options)
map('n', '<Leader>R', '<cmd>Telescope registers<CR>', options)
map('n', '<Leader>C', '<cmd>Telescope commands<CR>', options)
map('n', '<Leader>H', '<cmd>Telescope command_history<CR>', options)
map('n', '<Leader>M', '<cmd>Telescope keymaps<CR>', options)
map('n', '<Leader>fb', '<cmd>Telescope file_browser<CR>', options)
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', options)
map('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', options)
map('n', '<Leader>fs', '<cmd>Telescope grep_string<CR>', options)
map('n', '<Leader>fc', '<cmd>lua require"config.utils".nvim_browser()<CR>', options)
map('n', '<Leader>fn', '<cmd>lua require"config.utils".find_notes()<CR>', options)

local actions = require'telescope.actions'
require'telescope'.setup {
    defaults = {
        theme = "ivy",
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        sorting_strategy = "ascending",
        layout_strategy = "bottom_pane",
        layout_config = {
            height = 0.4
        },
        borderchars = {
            prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
            results = { " " },
            preview = { " " },
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
    }
}

require'telescope'.load_extension('fzf')
require'telescope'.load_extension('file_browser')
require'telescope'.load_extension('neoclip')
