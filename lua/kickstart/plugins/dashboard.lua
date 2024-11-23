return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        config = {
          header = {
            [[                                                                       ]],
            [[  ██████   █████                   █████   █████  ███                  ]],
            [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
            [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
            [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
            [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
            [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
            [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
            [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
            [[                                                                       ]],
            '',
            vim.loop.cwd(),
            '',
          },
          shortcut = {
            { desc = '⇧ Quit', group = 'Normal', action = 'q', key = 'q' },
            { desc = '󰈙  New Buffer', group = 'Normal', action = 'enew', key = 'n' },
            {
              desc = '󰏓  Filetree',
              group = 'Directory',
              action = 'Neotree action=focus source=filesystem position=float toggle=true',
              key = 't',
            },
            { desc = '🔍 Find Files', group = 'Directory', action = 'Telescope find_files', key = 'f' },
            { desc = '📦 Lazy', group = 'Number', action = 'Lazy', key = 'l' },
            { desc = '🛠 Mason', group = 'Number', action = 'Mason', key = 'm' },
          },
          project = {
            enable = true,
            limit = 8,
            icon = '󰏓',
            label = '  Recent Folders',
            action = 'Telescope find_files cwd=',
          },
          mru = { limit = 10, icon = '', label = '  Recent Files' },
          footer = {
            '',
          },
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
