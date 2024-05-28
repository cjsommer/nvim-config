vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set mouse=")
vim.cmd("set relativenumber")

vim.cmd("nnoremap <Up> <Nop>")
vim.cmd("nnoremap <Down> <Nop>")
vim.cmd("nnoremap <Left> <Nop>")
vim.cmd("nnoremap <Right> <Nop>")

vim.cmd("inoremap <Up> <Nop>")
vim.cmd("inoremap <Down> <Nop>")
vim.cmd("inoremap <Left> <Nop>")
vim.cmd("inoremap <Right> <Nop>")

vim.cmd("cnoremap <Up> <Nop>")
vim.cmd("cnoremap <Down> <Nop>")
vim.cmd("cnoremap <Left> <Nop>")
vim.cmd("cnoremap <Right> <Nop>")

vim.cmd("vnoremap <Up> <Nop>")
vim.cmd("vnoremap <Down> <Nop>")
vim.cmd("vnoremap <Left> <Nop>")
vim.cmd("vnoremap <Right> <Nop>")

vim.g.mapleader = " "

-- Levels by name: "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "OFF"
vim.lsp.set_log_level("WARN")

vim.diagnostic.config({
  virtual_text = false,
  signs = false
})
