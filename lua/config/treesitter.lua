require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c_sharp",
        "typescript", "tsx", "html", "css", "scss", "javascript",
        "python",
        "vim", "lua",
        "json", "yaml"
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
