return function(use)
  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
        require("toggleterm").setup()
    end
    }
end
