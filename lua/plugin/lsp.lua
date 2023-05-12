require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})


require("mason-lspconfig").setup {
    ensure_installed = {
      "rust_analyzer",
      "lua_ls",
    },
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

-- C++
require("lspconfig").clangd.setup {}

-- rust
require("lspconfig").rust_analyzer.setup {}
