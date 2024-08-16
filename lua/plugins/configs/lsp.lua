return function(use)
  use {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')

      -- Python LSP
      lspconfig.pyright.setup{}

      -- C/C++ LSP (clangd)
      lspconfig.clangd.setup{
        filetypes = { "c", "cpp", "objc", "objcpp" },
        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
      }

      -- Bash LSP (bash-language-server)
      lspconfig.bashls.setup{
        filetypes = { "sh", "bash" },
      }

    end
  }
end

