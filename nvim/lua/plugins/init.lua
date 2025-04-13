return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "andweeb/presence.nvim",
    lazy = false, -- Loads at startup; change to true if you prefer lazy-loading
    config = function()
      require("presence").setup({
        auto_update         = true,
        neovim_image_text   = "Arch Linux + Neovim = ❤️", -- Text displayed for the image
        main_image          = "neovim", -- Options: "file", "neovim", or "logo"
        client_id           = "793271441293967371",
        debounce_timeout    = 10,
        show_time           = true,
        editing_text        = "Editing files",
        file_explorer_text  = "Browsing directories",
        git_commit_text     = "Committing changes",
        plugin_manager_text = "Managing plugins",
        reading_text        = "",
        workspace_text      = "",
        line_number_text    = "",
      })
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "python-lsp-server",
        "dartls",
        "jdtls",
        "rust-analyzer",
        "clangd",
        "gopls",
        "kotlin-language-server",
        "intelephense",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "python",
        "dart",
        "java",
        "rust",
        "cpp",
        "go",
        "typescript",
        "kotlin",
        "php",
        "c",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
    run = ':TSUpdate',
  },
}


