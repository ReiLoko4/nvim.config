return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  config = function()
    require('nvim-treesitter').setup {
      auto_install = true,
      ensure_installed = {
        'c',
        'lua',
        'rust',
        'go',
        'javascript',
        'typescript',
        'svelte',
        'tsx',
        'markdown',
        'markdown_inline',
        'html',
        'css',
        'json',
        'toml',
        'bash',
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = {
        enable = true,
      },
      install = {
        compilers = 'clang',
      },
      -- windwp/nvim-ts-autotag
      autotag = {
        enable = true,
      },
    }
  end,
}
