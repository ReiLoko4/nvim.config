local mini_pick = require 'mini.pick'
local mini_files = require 'mini.files'

vim.keymap.set('n', '<leader>ff', mini_pick.builtin.files, { remap = true, desc = 'Mini.pick file fuzzer' })
vim.keymap.set('n', '<leader>fb', mini_pick.builtin.buffers, { remap = true, desc = 'Mini.pick buffers' })
vim.keymap.set('n', '<leader>fg', mini_pick.builtin.grep)
vim.keymap.set('n', '<leader>fh', mini_pick.builtin.help)
vim.keymap.set('n', '<leader>n', mini_files.open, { remap = true })

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help  tags' })
vim.keymap.set('n', '<C-/>', 'gcc', { remap = true, silent = true })
vim.keymap.set('v', '<C-/>', 'gc', { remap = true, silent = true })

vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Handle's
vim.keymap.set('t', '<ESC>', '<C-\\><C-N>', { noremap = true, silent = true })
vim.keymap.set('n', '<ESC>', ':nohlsearch<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz<CR>', { remap = true, silent = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz<CR>', { remap = true, silent = true })

-- LSP
vim.keymap.set('n', '<F2>', function()
  local input = vim.fn.input 'New name: ' -- prompt for new name
  if input ~= '' then
    vim.lsp.buf.rename(input) -- pass the typed name
  end
end, { remap = true })
local opts = { remap = true }
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover({focusable = true})<CR>', opts)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('i', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- map('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- map('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
vim.keymap.set('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
vim.keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.keymap.set('n', '<leader>c', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- map('v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.keymap.set('n', '<leader>[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', '<leader>]', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
-- map('n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
