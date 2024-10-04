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
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    actions = { -- Add this "actions" table
      filesystem = {
        create = 'true', -- Enable file creation
        create_directory = 'true', -- Enable directory creation
        rename = 'true', -- Enable renaming
        delete = 'true', -- Enable deleting
      },
    },
  },
}
