local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end

vim.opt.foldmethod="expr"
vim.opt.foldexpr="nvim_treesitter#foldexpr()"
vim.opt.foldenable=false

treesitter.setup {
    ensure_installed = {
        "go",
    },
    indent = {
        enable = true,
    },
    auto_install = true,
    sync_install = false,
    highlight = {
        enable = true,
        --   -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        --   -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        --   -- Using this option may slow down your editor, and you may see some duplicate highlights.
        --   -- Instead of true it can also be a list of languages
        --   additional_vim_regex_highlighting = false,
    },
}
