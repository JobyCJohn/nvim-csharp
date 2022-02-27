local M = {}

M.project_files = function()
    local opts = {}
    local ok = pcall(require("telescope.builtin").git_files, opts)
    if not ok then require("telescope.builtin").find_files(opts) end
end

M.git_status = function()
    if require("nvim-tree.view").win_open() then
        vim.cmd('NvimTreeToggle')
    end
    vim.cmd('G')
end

local nvim_path = vim.fn.stdpath("config")
local alacritty_path = vim.fn.expand("$APPDATA") .. "/alacritty"
M.nvim_browser = function()
    require("telescope.builtin").find_files {
        prompt_title = "Find Configs",
        search_dirs = {
            nvim_path,
            alacritty_path
        },
    }
end

M.find_notes = function()
  require("telescope.builtin").find_files {
    prompt_title = "Find Notes",
    cwd = vim.fn.expand("$HOME") .. "/OneDrive/Notes"
  }
end

return M
