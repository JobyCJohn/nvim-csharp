-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\TEMP\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\TEMP\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\TEMP\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\TEMP\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\TEMP\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["goyo.vim"] = {
    commands = { "Goyo" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    needs_bufread = false,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n¤\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire+<cmd>lua require'hop'.hint_words()<cr>\14<Leader>h\6n\bmap\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.statusline\frequire\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.cmp\frequire\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.lsp\frequire\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nñ\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0'\3\2\0'\4\3\0006\5\4\0B\0\5\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0005\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\2B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\tview\1\0\1\nwidth\b20%\24update_focused_file\1\0\1\venable\2\1\0\1\15update_cwd\2\nsetup\14nvim-tree\frequire\foptions\29<cmd>:NvimTreeToggle<CR>\14<Leader>e\6n\bmap\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.treesitter\frequire\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nÛ\1\0\0\6\0\r\1\0186\0\0\0'\2\1\0'\3\2\0'\4\3\0006\5\4\0B\0\5\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\v\0006\3\b\0009\3\t\0039\3\n\3\24\3\0\3=\3\f\2B\0\2\1K\0\1\0\tsize\1\0\3\17open_mapping\n<c-`>\18close_on_exit\1\20start_in_insert\2\nlines\6o\bvim\nsetup\15toggleterm\frequire\foptions\18':<C-\\><C-n>'\n<Esc>\6t\bmapµæÌ™\19™³æþ\3\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\nÝ\2\0\0\6\0\15\0+6\0\0\0'\2\1\0'\3\2\0'\4\3\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\5\0'\4\6\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\a\0'\4\b\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\t\0'\4\n\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\v\0'\4\f\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\r\0'\4\6\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\14\0'\4\b\0006\5\4\0B\0\5\1K\0\1\0\r<A-Left>\14<A-Right>\a]c\r<A-Down>\a[c\v<A-Up>\21:diffget //3<CR>\15<Leader>gh\21:diffget //2<CR>\15<Leader>gl\foptions4<cmd>lua require'config.utils'.git_status()<CR>\15<Leader>gs\6n\bmap\0" },
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-markdown"] = {
    loaded = true,
    needs_bufread = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\ing10284\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-markdown
time([[Setup for vim-markdown]], true)
try_loadstring('\27LJ\2\nh\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\29vim_markdown_frontmatter"vim_markdown_folding_disabled\6g\bvim\0', "setup", "vim-markdown")
time([[Setup for vim-markdown]], false)
time([[packadd for vim-markdown]], true)
vim.cmd [[packadd vim-markdown]]
time([[packadd for vim-markdown]], false)
-- Setup for: gruvbox
time([[Setup for gruvbox]], true)
try_loadstring("\27LJ\2\nÁ\1\0\0\3\0\f\1\0246\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\t\0\0\0X\0\4€6\0\0\0009\0\4\0+\1\2\0=\1\5\0006\0\0\0009\0\4\0'\1\a\0=\1\6\0006\0\0\0009\0\4\0'\1\t\0=\1\b\0006\0\0\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0\24colorscheme gruvbox\bcmd\tdark\15background\venable\vsyntax\18termguicolors\bopt\nwin32\bhas\afn\bvim\2\0", "setup", "gruvbox")
time([[Setup for gruvbox]], false)
time([[packadd for gruvbox]], true)
vim.cmd [[packadd gruvbox]]
time([[packadd for gruvbox]], false)
-- Setup for: goyo.vim
time([[Setup for goyo.vim]], true)
try_loadstring("\27LJ\2\nQ\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\t100%\16goyo_height\b120\15goyo_width\6g\bvim\0", "setup", "goyo.vim")
time([[Setup for goyo.vim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nÝ\2\0\0\6\0\15\0+6\0\0\0'\2\1\0'\3\2\0'\4\3\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\5\0'\4\6\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\a\0'\4\b\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\t\0'\4\n\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\v\0'\4\f\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\r\0'\4\6\0006\5\4\0B\0\5\0016\0\0\0'\2\1\0'\3\14\0'\4\b\0006\5\4\0B\0\5\1K\0\1\0\r<A-Left>\14<A-Right>\a]c\r<A-Down>\a[c\v<A-Up>\21:diffget //3<CR>\15<Leader>gh\21:diffget //2<CR>\15<Leader>gl\foptions4<cmd>lua require'config.utils'.git_status()<CR>\15<Leader>gs\6n\bmap\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n¤\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0'\3\2\0'\4\3\0004\5\0\0B\0\5\0016\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire+<cmd>lua require'hop'.hint_words()<cr>\14<Leader>h\6n\bmap\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.statusline\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nÛ\1\0\0\6\0\r\1\0186\0\0\0'\2\1\0'\3\2\0'\4\3\0006\5\4\0B\0\5\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\v\0006\3\b\0009\3\t\0039\3\n\3\24\3\0\3=\3\f\2B\0\2\1K\0\1\0\tsize\1\0\3\17open_mapping\n<c-`>\18close_on_exit\1\20start_in_insert\2\nlines\6o\bvim\nsetup\15toggleterm\frequire\foptions\18':<C-\\><C-n>'\n<Esc>\6t\bmapµæÌ™\19™³æþ\3\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nñ\1\0\0\6\0\15\0\0196\0\0\0'\2\1\0'\3\2\0'\4\3\0006\5\4\0B\0\5\0016\0\5\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0005\3\t\0=\3\n\0025\3\v\0=\3\f\0025\3\r\0=\3\14\2B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\tview\1\0\1\nwidth\b20%\24update_focused_file\1\0\1\venable\2\1\0\1\15update_cwd\2\nsetup\14nvim-tree\frequire\foptions\29<cmd>:NvimTreeToggle<CR>\14<Leader>e\6n\bmap\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Goyo lua require("packer.load")({'goyo.vim'}, { cmd = "Goyo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
