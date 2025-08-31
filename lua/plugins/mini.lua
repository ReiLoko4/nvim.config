return {
  'nvim-mini/mini.nvim',
  version = '*',
  config = function()
    require('mini.pick').setup()
    require('mini.move').setup()
    require('mini.files').setup()
    require('mini.starter').setup()
    require('mini.bracketed').setup()
    require('mini.indentscope').setup()
    -- require('mini.jump2d').setup()
    -- require('mini.jump').setup()
    -- require('mini.align').setup()
  end,
}
