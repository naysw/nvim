return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("indent_blankline").setup({
      show_current_context = true,
      show_trailing_blankline_indent = false,
      use_treesitter = true,
    })
  end
}