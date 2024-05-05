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
        ensure_installed = { "lua_ls" } --, "powershell_es" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
--      lspconfig.powershell_es.setup({
--        filetypes = {"ps1", "psm1", "psd1"},
--        cmd = {
--          'pwsh',
--          '-NoLogo',
--          '-NoProfile',
--          '-Command',
--          "~/AppData/Local/nvim-data/mason/packages/powershell-editor-services/PowerShellEditorServices/Start-EditorServices.ps1"
--        },
--        -- bundle_path = "~/AppData/Local/nvim-data/mason/packages/powershell-editor-services",
--        settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } }
--      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
