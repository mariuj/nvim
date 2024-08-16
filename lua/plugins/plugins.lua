return function(use)
  require('plugins.configs.lsp')(use)
  require('plugins.configs.cmp')(use)
  require('plugins.configs.ui-configs')(use)
  require('plugins.configs.treesitter')(use)
  require('plugins.configs.markdown-preview')(use)
  require('plugins.configs.telescope')(use)
  require('plugins.configs.molten')(use)
  require('plugins.configs.jupytext')(use)
  require('plugins.configs.nvim-which-key')(use)
  require('plugins.configs.wiki')(use)
end

