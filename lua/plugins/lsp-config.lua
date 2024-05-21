return {
  {
    "williamboman/mason.nvim",
    init = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    init = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "cssls",
          "html",
          "jsonls",
          "tsserver",
          "lua_ls",
          "pyright",
          "somesass_ls",
          "tailwindcss",
        }
      })
    end,

  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.jsonls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.somesass_ls.setup({ capabilities = capabilities })
      lspconfig.tailwindcss.setup({ capabilities = capabilities })
    end
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    init = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          require("none-ls.diagnostics.eslint"),
        },
      })
    end,
  },
}
