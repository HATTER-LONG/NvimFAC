return function()
  require('dashboard').setup {
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      project = {
        enable = false,
      },
      disable_move = true,
      shortcut = {
        {
          desc = 'Update',
          icon = ' ',
          group = 'Include',
          action = 'Lazy update',
          key = 'u',
        },
        {
          icon = ' ',
          desc = 'Session',
          group = 'Function',
          action = 'Telescope persisted',
          key = 's',
        },
        {
          icon = '📁',
          desc = 'Files',
          group = 'tmp',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          icon = ' ',
          desc = 'Apps',
          group = 'String',
          action = 'Telescope app',
          key = 'a',
        },
        {
          icon = ' ',
          desc = 'dotfiles',
          group = 'Constant',
          action = 'Telescope dotfiles',
          key = 'd',
        },
        -- footer = {
        --   "https://github.com/HATTER-LONG",
        -- },
      },
    },
  }
end
