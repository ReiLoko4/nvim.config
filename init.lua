local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

require('lazy').setup {
  { import = 'plugins' },
  { import = 'plugins.lsp' },
}

require 'config.keymaps'

local set = vim.opt

vim.g.editorconfig = true

set.mouse = 'a'
set.number = true
set.relativenumber = true

set.incsearch = true
set.hlsearch = true -- highlight search

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Save undo history
vim.opt.undofile = true

set.modifiable = true

-- tabs
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd.colorscheme 'evergarden'
