return {
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascriptreact", "typescriptreact", "php" },
    init = function()
      vim.g.user_emmet_expandabbr_key = "<C-y>"
      vim.g.user_emmet_install_global = 0
      -- Remove use_treesitter = 0, let emmet detect context naturally
      vim.g.user_emmet_settings = {
        php = {
          extends = "html", -- treat PHP files as HTML for emmet expansion
        },
      }
    end,
  },
}
