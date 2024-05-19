vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set mouse=")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = " "

-- Levels by name: "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "OFF"
vim.lsp.set_log_level("WARN")

vim.diagnostic.config({
  virtual_text = false,
  signs = false
})
