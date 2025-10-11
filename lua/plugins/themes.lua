return {
  {
    { 'rebelot/kanagawa.nvim' },
    { 'morhetz/gruvbox' },
    { 'nyoom-engineering/oxocarbon.nvim' },
    { 'folke/tokyonight.nvim' },
    { 'catppuccin/nvim' },
    {
      'everviolet/nvim',
      name = 'evergarden',
      priority = 1000,
      opts = {
        theme = {
          variant = 'winter',
          accent = 'green',
        },
        editor = {
          transparent_background = false,
          override_terminal = true,
          sign = { color = 'none' },
          float = {
            color = 'mantle',
            solid_border = false,
          },
          completion = {
            color = 'surface0',
          },
        },
      },
    },
  },
}
