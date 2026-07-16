return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "php",
        "php_only",
        "html",
        "javascript",
        "typescript",
        "css",
        "lua",
      },
      highlight = {
        enable = true,
        -- helps with mixed PHP/HTML highlighting
        additional_vim_regex_highlighting = { "php" },
      },
      -- Enable indent so embedded HTML/CSS/JS in PHP indents correctly
      indent = { enable = true },
    },
    config = function(_, opts)
      local ok, ts = pcall(require, "nvim-treesitter.configs")
      if not ok then
        return
      end
      ts.setup(opts)
    end,
  },
}
