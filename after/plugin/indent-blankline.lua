local ok, indent_blankline= pcall(require, "indent_blankline")
if not ok then return end

require("indent_blankline").setup({
    show_current_context = true,
    show_trailing_blankline_indent = false,
    use_treesitter = true,
})
