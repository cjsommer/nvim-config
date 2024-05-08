return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "powershell_es", "terraformls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})

      lspconfig.powershell_es.setup({
        filetypes = {"ps1", "psm1", "psd1"},
        bundle_path = "~/AppData/Local/nvim-data/mason/packages/powershell-editor-services",
        settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } },
        init_options = {
          enableProfileLoading = false,
        },
      })

      lspconfig.terraformls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
