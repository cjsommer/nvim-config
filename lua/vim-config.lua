vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set mouse=")
vim.g.mapleader = " "

-- Levels by name: "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "OFF"
vim.lsp.set_log_level("INFO")
