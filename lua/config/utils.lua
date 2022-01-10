local M = {}

M.project_files = function()
    local opts = { previewer = false }
    local ok = pcall(require'telescope.builtin'.git_files, opts)
    if not ok then require'telescope.builtin'.find_files(opts) end
end

local view = require'nvim-tree.view'
M.git_status = function ()
    if view.win_open() then
        vim.cmd('NvimTreeToggle')
    end
    vim.cmd('G')
end

return M
