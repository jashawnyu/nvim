vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_footer = { 'https://github.com/jashawnyu/nvim' }

vim.g.dashboard_custom_section = {
    a = { description = { '  Projects              ' }, command = 'Telescope projects' },
    b = { description = { '  Recently files        ' }, command = 'Telescope oldfiles' },
    c = { description = { '  Edit keybindings      ' }, command = 'edit ~/.config/nvim/lua/keybindings.lua' },
    d = {
        description = { '  Edit Projects         ' },
        command = 'edit ~/.local/share/nvim/project_nvim/project_history',
    },
     e = { description = { "  Edit .zshrc          " }, command = "edit ~/.zshrc" },
     g = { description = { "  Edit init.lua         " }, command = "edit ~/.config/nvim/init.lua" },
     h = { description = {'  Find file          '}, command = 'Telescope find_files'},
     i = { description = {'  Find text          '}, command = 'Telescope live_grep'},
}

local db = require('dashboard')
db.custom_header = {
    [[          ▀████▀▄▄              ▄█ ]],
    [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    [[   █   █  █      ▄▄           ▄▀   ]],
}

db.custom_center = {
  {icon = '  ',
  desc = 'Recently files  ',
  action = "Telescope oldfiles"
  },
  {icon = '  ',
  desc = 'Projects        ',
  action = "Telescope projects"
  },
  {icon = '  ',
  desc = 'Edit keybindings' ,
  action = "edit ~/.config/nvim/lua/keybindings.lua"
  },
  {icon = '  ',
  desc = 'Edit zshrc      ',
  action = "edit ~/.zshrc"
  },
  {icon = '  ',
  desc = 'Find file       ' ,
  action = "Telescope find_files"
  },
  {icon = '  ',
  desc = 'Find text       ' ,
  action = "Telescope live_grep"
  },
}


db.custom_footer = { 'https://github.com/jashawnyu/nvim' }
