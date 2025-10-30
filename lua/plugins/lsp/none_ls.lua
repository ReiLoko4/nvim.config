return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null = require 'null-ls'
    require('null-ls').setup {
      sources = {
        null.builtins.formatting.prettier,
      },
    }
  end,
}
