return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  config = function()
    require('nvim-treesitter.install').prefer_git = false
    require('nvim-treesitter.install').compilers = { 'clang', 'gcc' }
    require('nvim-treesitter.configs').setup {
      auto_install = false,
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
      -- windwp/nvim-ts-autotag
      autotag = {
        enable = true,
      },
    }
  end,
}
