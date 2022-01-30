local M = {}

M.project_files = function()
    local opts = { previewer = false }
    local ok = pcall(require("telescope.builtin").git_files, opts)
    if not ok then require("telescope.builtin").find_files(opts) end
end

M.git_status = function()
    if require("nvim-tree.view").win_open() then
        vim.cmd('NvimTreeToggle')
    end
    vim.cmd('G')
end

M.nvim_browser = function()
  require("telescope.builtin").find_files {
    prompt_title = "NVim Config Browser",
    cwd = "~/AppData/Local/nvim",
    search_dirs = {
      "~/AppData/Local/nvim",
      "~/AppData/Roaming/alacritty/",
    },
  }
end

M.find_notes = function()
  require("telescope.builtin").find_files {
    prompt_title = "Find Notes",
    cwd = "~/OneDrive/Notes",
  }
end

return M
