return function(use)
  use {
    'GCBallesteros/jupytext.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      local neovim_env_bin = os.getenv("HOME") .. "/.pyenv/versions/neovim/bin"
      if not string.find(vim.env.PATH, neovim_env_bin, 1, true) then
        vim.env.PATH = neovim_env_bin .. ":" .. vim.env.PATH
      end
      require('jupytext').setup({
        style = "percent", 
      })
    end
  }
end

