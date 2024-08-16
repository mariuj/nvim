return function(use)
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      local ts = require'telescope'
      ts.setup{
        defaults = {
          mappings = {
            i = {}
          }
        },
        pickers = {},
        extensions = {}
      }
        end,
  }
end
