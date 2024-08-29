return function(use)
  -- Dependencies, icons etc
  use { 'nvim-tree/nvim-web-devicons' }
  use { 'lewis6991/gitsigns.nvim' }

  -- theme (gruvbox)
  use {
    'sainnhe/gruvbox-material',
    config = function()
      vim.g.gruvbox_material_background = 'medium'  -- Background contrast: 'soft', 'medium', 'hard'
      vim.g.gruvbox_material_enable_italic = true   -- Enable italic text
      vim.g.gruvbox_material_enable_bold = true     -- Enable bold text
      vim.g.gruvbox_material_transparent_background = false  -- Disable transparent background
      vim.g.gruvbox_material_sign_column_background = 'none' -- Match sign column background with the editor
      vim.g.gruvbox_material_better_performance = true  -- Improve performance
      vim.cmd.colorscheme('gruvbox-material')
      vim.cmd('highlight NonText ctermfg=1 guifg=#800000')
    end
  }

  -- File Explorer (nvim-tree)
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      require('nvim-tree').setup({
        renderer = {
          highlight_git = true,
        },
      })
    end
  }

  -- Bufferline (barbar)
  use {
    'romgrk/barbar.nvim',
    config = function()
      require'barbar'.setup {
        icons = {
          buffer_index = true,
          filetype = { enabled = true },
        },
        maximum_padding = 1,
      }
    end
  }

  -- Statusline (lualine)
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
          icons_enabled = true,
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {
            'branch',
            'diff',
            {
              'diagnostics',
              sources = {'nvim_lsp'},
              sections = {'error', 'warn', 'info', 'hint'},
              symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
              colored = true,
              update_in_insert = false,
              always_visible = true,
            },
          },
          lualine_c = {
            'filename',
            {
              function()
                local status, ts_context = pcall(require, 'nvim-treesitter')
                if status then
                  return ts_context.statusline({
                    indicator_size = 100,
                    type_patterns = {'class', 'function', 'method'},
                  }) or ''
                end
                return ''
              end,
              cond = function()
                return vim.bo.filetype ~= ''
              end,
              color = {fg = 'yellow', gui = 'bold'},
            },
          },
          lualine_x = {
            'encoding',
            'filetype',
            {
              -- Custom pyenv component
              function()
                local pyenv_env = vim.fn.system("pyenv version"):match("^%S+")
                if vim.bo.filetype == 'python' and pyenv_env ~= "" then
                  return ' ' .. pyenv_env
                end
                return ''
              end,
              cond = function()
                return vim.bo.filetype == 'python'
              end,
            },
          },
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        extensions = {'nvim-tree', 'quickfix'}
      }
    end
  }

  -- Greeter(alpha-nvim)
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }, -- optional, for file icons
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      -- Set header
      dashboard.section.header.val = {
        "  ██╗    ██╗   ██╗███████╗███████╗    ██╗   ██╗██╗███╗   ███╗ ",
        "  ██║    ██║   ██║██╔════╝██╔════╝    ██║   ██║██║████╗ ████║ ",
        "  ██║    ██║   ██║███████╗█████╗      ██║   ██║██║██╔████╔██║ ",
        "  ██║    ██║   ██║╚════██║██╔══╝      ╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║    ╚██████╔╝███████║███████╗     ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝     ╚═════╝ ╚══════╝╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                              ",
        "              ██████╗ ████████╗██╗    ██╗                     ",
        "              ██╔══██╗╚══██╔══╝██║    ██║                     ",
        "              ██████╔╝   ██║   ██║ █╗ ██║                     ",
        "              ██╔══██╗   ██║   ██║███╗██║                     ",
        "              ██████╔╝   ██║   ╚███╔███╔╝ ██╗██╗██╗           ",
        "              ╚═════╝    ╚═╝    ╚══╝╚══╝  ╚═╝╚═╝╚═╝           ",
      }


      -- Set menu
      dashboard.section.buttons.val = {
          dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
          dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
          dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
          dashboard.button("w", "  Wiki", ":WikiIndex<CR>"),
          dashboard.button("s", "  Settings", "<Cmd>edit " .. vim.fn.stdpath('config') .. "/lua/user/settings.lua<CR>"),
          dashboard.button("k", "  Key-bindings", "<Cmd>edit " .. vim.fn.stdpath('config') .. "/lua/user/keymaps.lua<CR>"),
          dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Set footer
      dashboard.section.footer.val = "Neovim Loaded"

      -- Center elements
      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end
  }
end
