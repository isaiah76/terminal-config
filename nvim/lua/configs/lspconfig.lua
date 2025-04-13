require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- List of language servers to set up (excluding jdtls, which is handled separately)
local servers = {
  "html",
  "cssls",
  "pyright",                -- Python
  "ts_ls",                  -- Corrected from ts_ls to tsserver
  "dartls",                 -- Dart Language Server
  "rust_analyzer",          -- Rust Language Server
  "clangd",                 -- C/C++ Language Server
  "gopls",                  -- Go Language Server
  "kotlin_language_server", -- Kotlin Language Server
  "intelephense",           -- PHP Language Server
}

-- Setup LSP servers with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Custom configuration for Java LSP (jdtls)
lspconfig.jdtls.setup {
  cmd = {
    "/home/isaiah/.local/share/nvim/mason/bin/jdtls",
    "--add-opens=jdk.incubator.vector/jdk.incubator.vector=ALL-UNNAMED",
  },
  on_attach = function(client, bufnr)
    nvlsp.on_attach(client, bufnr)
    -- Optional: Enable Java-specific formatting
    client.server_capabilities["documentFormattingProvider"] = true
  end,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    java = {
      format = {
        enabled = true,
        settings = {
          url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java_google-style.xml"
        }
      }
    }
  }
}

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      analysis = {
        autoFormat = true, 
      },
    },
  },
}

lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = {
    "/home/isaiah/.local/share/nvim/mason/bin/clangd",
    "--background-index"
  },
}

return {}
