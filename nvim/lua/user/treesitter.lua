local treesiter_status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesiter_status_ok then
    return
end

treesitter.setup {
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indents = {
        enable = true,
        disable = { "" },
    },
    autopairs = {
        enable = true,
    },
    autotag = {
      enable = true,
    },
}

