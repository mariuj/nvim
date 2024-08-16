local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  print('This is the first time running Neovim on this system!')
  print('The package manager "Packer" and all plugins in "lua/plugins/" will now be installed..')
  print("Please restart for changes to take effect!")
  print("Press any key to start installing...")
  vim.cmd("call getchar()")
  vim.api.nvim_input('<CR>')
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.cmd([[packadd packer.nvim]])
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

function sync_plugins()
  require('packer').sync()
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | lua sync_plugins()
  augroup end
]])

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  require('plugins.plugins')(use)

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
