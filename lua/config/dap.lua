local dap = require'dap'
dap.adapters.netcoredbg = {
    type = 'executable',
    command = "C:/Tools/lsp/netcoredbg/netcoredbg",
    args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
    {
        type = "netcoredbg",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
    },
}

map('n', 'F5',  '<cmd>lua require"dap".continue()<CR>', options)
map('n', 'F9',  '<cmd>lua require"dap".toggle_breakpoint()<CR>', options)
map('n', 'F10', '<cmd>lua require"dap".step_over()<CR>', options)
map('n', 'F11', '<cmd>lua require"dap".step_into()<CR>', options)
map('n', 'F12', '<cmd>lua require"dap".step_out()<CR>', options)
