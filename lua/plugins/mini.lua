return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.pick').setup {
      options = {
        use_cache = true,
      },
    }
  end,
}
