return function(use)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'nvim --headless -c "TSUpdateSync" -c "q"',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline",
                             "python", "sql"," bash", "toml", "bicep",
                             "regex", "tsv", "csv", "html", "c"},

        sync_install = false,

        auto_install = true,

        indent = {
          enable = true
        },

        ignore_install = { },

        highlight = {
          enable = true,

          disable = function(lang, buf)
              local max_filesize = 100 * 1024 -- 100 KB
              local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_filesize then
                return true
              end
          end,

          additional_vim_regex_highlighting = false,
        },
      }
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter', 
    config = function()
      require'nvim-treesitter.configs'.setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
        },
      }
    end
  }

end
