return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.pick').setup()
    require('mini.files').setup()
    require('mini.move').setup()
    require('mini.starter').setup()
    require('mini.animate').setup()
    require('mini.indentscope').setup()
    require('mini.bracketed').setup()
    -- require('mini.jump2d').setup()
    -- require('mini.jump').setup()
    -- require('mini.align').setup()
  end,
}
