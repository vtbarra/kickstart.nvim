-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          'node_modules',
          '.cache',
          'build',
          'var',
          'vendor',
          '.DS_Store',
          '.idea',
          '.vscode',
        },
        hide_by_pattern = {}, -- uses glob style patterns
        always_show = {
          '.gitignored',
          '.env*',
        },
        never_show = {}, -- remains hidden even if visible is toggled to true, this overrides always_show
        never_show_by_pattern = {}, -- uses glob style patterns
      },
    },
    window = {
      position = 'right',
      width = 60,
      mappings = {
        ['d'] = 'delete',
        ['r'] = 'rename',
        ['m'] = 'move',
        ['n'] = 'add',
      },
    },
  },
}
