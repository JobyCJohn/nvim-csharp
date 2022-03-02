map('n', '<Leader>t', '<cmd>lua require"config.utils".project_files()<CR>', opts)
map('n', '<Leader>b', '<cmd>Telescope buffers<CR>', opts)
map('n', '<Leader>f', '<cmd>lua require("telescope").extensions.live_grep_raw.live_grep_raw()<CR>', opts)
map('n', '<Leader>C', '<cmd>Telescope commands<CR>', opts)
map('n', '<Leader>F', '<cmd>Telescope grep_string<CR>', opts)
map('n', '<Leader>K', '<cmd>Telescope keymaps<CR>', opts)
map('n', '<Leader>M', '<cmd>Telescope marks<CR>', opts)
map('n', '<Leader>R', '<cmd>Telescope registers<CR>', opts)
map('n', '<Leader>fc', '<cmd>lua require"config.utils".nvim_browser()<CR>', opts)
map('n', '<Leader>fn', '<cmd>lua require"config.utils".find_notes()<CR>', opts)

local actions = require'telescope.actions'
require'telescope'.setup {
    defaults = {
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        sorting_strategy = "ascending",
        wrap_results = true,
        layout_config = {
            prompt_position = "top",
            height = 0.80,
        },
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
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
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--trim"
        },
    },
    pickers = {
    },
    extensions = {
    }
}

require'telescope'.load_extension('fzf')
