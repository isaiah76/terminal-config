return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "php" },
          init_options = {
            configurationSection = { "html", "css", "javascript" },
            embeddedLanguages = { css = true, javascript = true },
            provideFormatter = true,
          },
        },
        cssls = {
          filetypes = { "css", "scss", "less", "php" },
          -- Tell cssls to understand <style> blocks inside PHP
          settings = {
            css = { validate = true },
            scss = { validate = true },
            less = { validate = true },
          },
        },
      },
    },
  },
}
