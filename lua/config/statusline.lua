require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = "",
        section_separators = "",
        disabled_filetypes = {'NvimTree', 'fugitive'},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype',
                    {'diagnostics', sources={'nvim_diagnostic', 'ale'}}},
        lualine_y = {'location'},
        lualine_z = {'progress'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'progress'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}
