local builtin = require 'telescope.builtin'
local mini_pick = require 'mini.pick'

vim.keymap.set('n', '<leader><leader>', mini_pick.builtin.files, { remap = true, desc = 'Mini PiCk file fuzzer' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true, silent = true })
vim.keymap.set('v', '<C-_>', 'gcc', { remap = true, silent = true })
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<esc>', '<C-\\><C-N>', { noremap = true, silent = true })
