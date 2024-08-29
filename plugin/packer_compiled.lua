-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/MARIUJ/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/Users/MARIUJ/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/Users/MARIUJ/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/Users/MARIUJ/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/MARIUJ/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\18\0\0\f\0(\1R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\b\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0006\t\24\0009\t\25\t9\t\26\t'\v\27\0B\t\2\2'\n\28\0&\b\n\bB\4\4\2>\4\5\0039\4\b\1'\6\29\0'\a\30\0'\b\23\0006\t\24\0009\t\25\t9\t\26\t'\v\27\0B\t\2\2'\n\31\0&\b\n\bB\4\4\2>\4\6\0039\4\b\1'\6 \0'\a!\0'\b\"\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2#\2'\3$\0=\3\5\0029\2%\0019\2%\2+\3\2\0=\3&\0029\2'\0009\4%\1B\2\2\1K\0\1\0\nsetup\14noautocmd\topts\18Neovim Loaded\vfooter\f:qa<CR>\14  Quit\6q\30/lua/user/keymaps.lua<CR>\22  Key-bindings\6k\31/lua/user/settings.lua<CR>\vconfig\fstdpath\afn\bvim\15<Cmd>edit \18  Settings\6s\19:WikiIndex<CR>\14  Wiki\6w\28:Telescope oldfiles<CR>\22  Recent files\6r\30:Telescope find_files<CR>\19  Find file\6f :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\fbuttons\1\14\0\0�\1  ██╗    ██╗   ██╗███████╗███████╗    ██╗   ██╗██╗███╗   ███╗ �\1  ██║    ██║   ██║██╔════╝██╔════╝    ██║   ██║██║████╗ ████║ �\1  ██║    ██║   ██║███████╗█████╗      ██║   ██║██║██╔████╔██║ �\1  ██║    ██║   ██║╚════██║██╔══╝      ╚██╗ ██╔╝██║██║╚██╔╝██║ �\1  ██║    ╚██████╔╝███████║███████╗     ╚████╔╝ ██║██║ ╚═╝ ██║ �\1  ╚═╝     ╚═════╝ ╚══════╝╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝ C                                                              o              ██████╗ ████████╗██╗    ██╗                     q              ██╔══██╗╚══██╔══╝██║    ██║                     i              ██████╔╝   ██║   ██║ █╗ ██║                     m              ██╔══██╗   ██║   ██║███╗██║                     \127              ██████╔╝   ██║   ╚███╔███╔╝ ██╗██╗██╗           y              ╚═════╝    ╚═╝    ╚══╝╚══╝  ╚═╝╚═╝╚═╝           \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\nicons\1\0\2\nicons\0\20maximum_padding\3\1\rfiletype\1\0\1\fenabled\2\1\0\2\rfiletype\0\17buffer_index\2\nsetup\vbarbar\frequire\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\14\0\"6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\t\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0B\0\2\0016\0\0\0009\0\n\0'\2\r\0B\0\2\1K\0\1\0.highlight NonText ctermfg=1 guifg=#800000\21gruvbox-material\16colorscheme\bcmd(gruvbox_material_better_performance\tnone,gruvbox_material_sign_column_background,gruvbox_material_transparent_background!gruvbox_material_enable_bold#gruvbox_material_enable_italic\vmedium gruvbox_material_background\6g\bvim\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["image.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\6\0\30\00016\0\0\0006\1\0\0009\1\1\1'\2\2\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\a\0&\1\4\1=\1\1\0006\0\0\0006\1\0\0009\1\1\1'\2\2\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\b\0&\1\4\1=\1\1\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0005\2\f\0005\3\16\0005\4\r\0005\5\14\0=\5\15\4=\4\17\0035\4\18\0005\5\19\0=\5\15\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\25hijack_file_patterns\1\a\0\0\n*.png\n*.jpg\v*.jpeg\n*.gif\v*.webp\v*.avif#window_overlap_clear_ft_ignore\1\4\0\0\rcmp_menu\rcmp_docs\5\17integrations\bcss\1\0\1\fenabled\2\thtml\1\0\1\fenabled\2\nneorg\1\2\0\0\tnorg\1\0\5\25clear_in_insert_mode\1\14filetypes\0 only_render_image_at_cursor\1\27download_remote_images\2\fenabled\2\rmarkdown\1\0\4\thtml\0\bcss\0\rmarkdown\0\nneorg\0\14filetypes\1\3\0\0\rmarkdown\fvimwiki\1\0\5\25clear_in_insert_mode\1\14filetypes\0 only_render_image_at_cursor\1\27download_remote_images\2\fenabled\2\1\0\b\17integrations\0\25hijack_file_patterns\0\fbackend\nkitty$tmux_show_only_in_active_window\1$editor_only_render_when_focused\1#window_overlap_clear_ft_ignore\0!window_overlap_clear_enabled\1!max_height_window_percentage\3P\nsetup\nimage\frequire$/.luarocks/share/lua/5.1/?.lua;)/.luarocks/share/lua/5.1/?/init.lua;\n$HOME\vexpand\afn\bvim\6;\tpath\fpackage\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/image.nvim",
    url = "https://github.com/3rd/image.nvim"
  },
  ["jupytext.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\14\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\2'\1\3\0&\0\1\0006\1\4\0009\1\5\0016\3\6\0009\3\a\0039\3\b\3\18\4\0\0)\5\1\0+\6\2\0B\1\5\2\14\0\1\0X\1\t�6\1\6\0009\1\a\1\18\2\0\0'\3\t\0006\4\6\0009\4\a\0049\4\b\4&\2\4\2=\2\b\0016\1\n\0'\3\v\0B\1\2\0029\1\f\0015\3\r\0B\1\2\1K\0\1\0\1\0\1\nstyle\fpercent\nsetup\rjupytext\frequire\6:\tPATH\benv\bvim\tfind\vstring /.pyenv/versions/neovim/bin\tHOME\vgetenv\aos\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/jupytext.nvim",
    url = "https://github.com/GCBallesteros/jupytext.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\b\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\t�9\2\3\0015\4\4\0005\5\5\0=\5\6\4B\2\2\2\14\0\2\0X\3\1�'\2\a\0L\2\2\0'\2\a\0L\2\2\0\5\18type_patterns\1\4\0\0\nclass\rfunction\vmethod\1\0\2\19indicator_size\3d\18type_patterns\0\15statusline\20nvim-treesitter\frequire\npcall<\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5\rfiletype\abo\bvim�\1\0\0\4\0\v\0\0226\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\18\2\0\0009\0\4\0'\3\5\0B\0\3\0026\1\0\0009\1\6\0019\1\a\1\a\1\b\0X\1\6�\6\0\t\0X\1\4�'\1\n\0\18\2\0\0&\1\2\1L\1\2\0'\1\t\0L\1\2\0\t \5\vpython\rfiletype\abo\t^%S+\nmatch\18pyenv version\vsystem\afn\bvimB\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\vpython\rfiletype\abo\bvim�\6\1\0\a\0%\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0005\5\n\0005\6\v\0=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\5>\5\3\4=\4\17\0035\4\18\0005\5\21\0003\6\19\0>\6\1\0053\6\20\0=\6\22\0055\6\23\0=\6\24\5>\5\2\4=\4\25\0035\4\26\0005\5\29\0003\6\27\0>\6\1\0053\6\28\0=\6\22\5>\5\3\4=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\3=\3\14\0025\3#\0=\3$\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\rquickfix\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\0\1\tcond\0\0\0\1\3\0\0\rencoding\rfiletype\14lualine_c\ncolor\1\0\2\afg\vyellow\bgui\tbold\tcond\1\0\2\tcond\0\ncolor\0\0\0\1\2\0\0\rfilename\14lualine_b\fsymbols\1\0\4\nerror\t \tinfo\t \twarn\t \thint\t \rsections\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\2\0\0\rnvim_lsp\1\2\6\0\16diagnostics\fcolored\2\fsymbols\0\19always_visible\2\21update_in_insert\1\rsections\0\fsources\0\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\6\14lualine_b\0\14lualine_z\0\14lualine_c\0\14lualine_x\0\14lualine_a\0\14lualine_y\0\1\2\0\0\tmode\foptions\1\0\3\15extensions\0\foptions\0\rsections\0\1\0\2\18icons_enabled\2\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["molten-nvim"] = {
    config = { "\27LJ\2\no\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1�\3=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\15image.nvim\26molten_image_provider!molten_output_win_max_height\6g\bvim\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/molten-nvim",
    url = "https://github.com/benlubas/molten-nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\t\1\0\n\0008\0�\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t��B\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0039\4\b\0009\4\28\0044\6\4\0005\a\29\0>\a\1\0065\a\30\0>\a\2\0065\a\31\0>\a\3\0064\a\3\0005\b \0>\b\1\aB\4\3\2=\4\28\3B\1\2\0019\1\2\0009\1!\1'\3\"\0005\4%\0009\5\b\0009\5\28\0054\a\3\0005\b#\0>\b\1\a4\b\3\0005\t$\0>\t\1\bB\5\3\2=\5\28\4B\1\3\0016\1\0\0'\3&\0B\1\2\0029\1\2\1B\1\1\0019\1\2\0009\1'\0015\3(\0005\4)\0009\5\14\0009\5\15\0059\5'\5B\5\1\2=\5\14\0044\5\3\0005\6*\0>\6\1\5=\5\28\4B\1\3\0019\1\2\0009\1'\1'\3+\0005\4,\0009\5\14\0009\5\15\0059\5'\5B\5\1\2=\5\14\0049\5\b\0009\5\28\0054\a\3\0005\b-\0>\b\1\a4\b\3\0005\t.\0>\t\1\bB\5\3\2=\5\28\0045\5/\0=\0050\4B\1\3\0016\1\0\0'\0031\0B\1\2\0029\1\2\0015\0032\0B\1\2\0016\1\0\0'\0033\0B\1\2\0029\0024\0\18\4\2\0009\0025\2'\0056\0009\0067\1B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\rcheck_ts\2\19nvim-autopairs\rmatching\1\0\1'disallow_symbol_nonprefix_matching\1\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\3\fmapping\0\rmatching\0\fsources\0\6:\1\0\1\tname\vbuffer\1\0\2\fmapping\0\fsources\0\1\3\0\0\6/\6?\fcmdline\fcmp_git\1\0\1\fsources\0\1\0\1\tname\vbuffer\1\0\1\tname\bgit\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\5\t<CR>\0\14<C-Space>\0\n<C-f>\0\n<C-b>\0\n<C-e>\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\2\15completion\0\18documentation\0\rbordered\vwindow\vconfig\fsnippet\1\0\4\fsnippet\0\vwindow\0\fmapping\0\fsources\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\2\0\0\b\0\18\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0015\3\6\0005\4\5\0=\4\a\0036\4\0\0'\6\b\0B\4\2\0029\4\t\0046\6\n\0009\6\v\0069\6\f\0069\6\r\6B\6\1\0A\4\0\2=\4\14\3B\1\2\0019\1\15\0009\1\3\0015\3\17\0005\4\16\0=\4\a\3B\1\2\1K\0\1\0\1\0\1\14filetypes\0\1\3\0\0\ash\tbash\vbashls\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\17cmp_nvim_lsp\14filetypes\1\0\2\17capabilities\0\14filetypes\0\1\5\0\0\6c\bcpp\tobjc\vobjcpp\vclangd\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\2B\0\2\1K\0\1\0\rrenderer\1\0\1\rrenderer\0\1\0\1\18highlight_git\2\nsetup\14nvim-tree\frequire\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\n�\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\a�\15\0\4\0X\5\5�9\5\6\4\1\2\5\0X\5\2�+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall��\f�\3\1\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0025\3\t\0003\4\n\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\14highlight\fdisable\0\1\0\3&additional_vim_regex_highlighting\1\venable\2\fdisable\0\19ignore_install\vindent\1\0\1\venable\2\21ensure_installed\1\0\6\vindent\0\17auto_install\2\14highlight\0\19ignore_install\0\21ensure_installed\0\17sync_install\1\1\16\0\0\blua\bvim\vvimdoc\rmarkdown\20markdown_inline\vpython\bsql\n bash\ttoml\nbicep\nregex\btsv\bcsv\thtml\6c\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\3\0005\5\4\0=\5\5\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\16textobjects\1\0\1\16textobjects\0\vselect\1\0\1\vselect\0\fkeymaps\1\0\4\aaf\20@function.outer\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\1\0\3\fkeymaps\0\14lookahead\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\a\0005\4\5\0005\5\3\0004\6\0\0=\6\4\5=\5\6\4=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3B\1\2\1K\0\1\0\15extensions\fpickers\rdefaults\1\0\3\fpickers\0\15extensions\0\rdefaults\0\rmappings\1\0\1\rmappings\0\6i\1\0\1\6i\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wiki.vim"] = {
    config = { "\27LJ\2\nR\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0+/Users/MARIUJ/OneDrive - Equinor/wiki/\14wiki_root\6g\bvim\0" },
    loaded = true,
    path = "/Users/MARIUJ/.local/share/nvim/site/pack/packer/start/wiki.vim",
    url = "https://github.com/lervag/wiki.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gruvbox-material
time([[Config for gruvbox-material]], true)
try_loadstring("\27LJ\2\n�\3\0\0\3\0\14\0\"6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\t\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0B\0\2\0016\0\0\0009\0\n\0'\2\r\0B\0\2\1K\0\1\0.highlight NonText ctermfg=1 guifg=#800000\21gruvbox-material\16colorscheme\bcmd(gruvbox_material_better_performance\tnone,gruvbox_material_sign_column_background,gruvbox_material_transparent_background!gruvbox_material_enable_bold#gruvbox_material_enable_italic\vmedium gruvbox_material_background\6g\bvim\0", "config", "gruvbox-material")
time([[Config for gruvbox-material]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\t\1\0\n\0008\0�\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t��B\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0039\4\b\0009\4\28\0044\6\4\0005\a\29\0>\a\1\0065\a\30\0>\a\2\0065\a\31\0>\a\3\0064\a\3\0005\b \0>\b\1\aB\4\3\2=\4\28\3B\1\2\0019\1\2\0009\1!\1'\3\"\0005\4%\0009\5\b\0009\5\28\0054\a\3\0005\b#\0>\b\1\a4\b\3\0005\t$\0>\t\1\bB\5\3\2=\5\28\4B\1\3\0016\1\0\0'\3&\0B\1\2\0029\1\2\1B\1\1\0019\1\2\0009\1'\0015\3(\0005\4)\0009\5\14\0009\5\15\0059\5'\5B\5\1\2=\5\14\0044\5\3\0005\6*\0>\6\1\5=\5\28\4B\1\3\0019\1\2\0009\1'\1'\3+\0005\4,\0009\5\14\0009\5\15\0059\5'\5B\5\1\2=\5\14\0049\5\b\0009\5\28\0054\a\3\0005\b-\0>\b\1\a4\b\3\0005\t.\0>\t\1\bB\5\3\2=\5\28\0045\5/\0=\0050\4B\1\3\0016\1\0\0'\0031\0B\1\2\0029\1\2\0015\0032\0B\1\2\0016\1\0\0'\0033\0B\1\2\0029\0024\0\18\4\2\0009\0025\2'\0056\0009\0067\1B\6\1\0A\2\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\rcheck_ts\2\19nvim-autopairs\rmatching\1\0\1'disallow_symbol_nonprefix_matching\1\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\3\fmapping\0\rmatching\0\fsources\0\6:\1\0\1\tname\vbuffer\1\0\2\fmapping\0\fsources\0\1\3\0\0\6/\6?\fcmdline\fcmp_git\1\0\1\fsources\0\1\0\1\tname\vbuffer\1\0\1\tname\bgit\14gitcommit\rfiletype\1\0\1\tname\vbuffer\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\5\t<CR>\0\14<C-Space>\0\n<C-f>\0\n<C-b>\0\n<C-e>\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\2\15completion\0\18documentation\0\rbordered\vwindow\vconfig\fsnippet\1\0\4\fsnippet\0\vwindow\0\fmapping\0\fsources\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\18\0\0\f\0(\1R6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\b\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0'\b\14\0B\4\4\2>\4\2\0039\4\b\1'\6\15\0'\a\16\0'\b\17\0B\4\4\2>\4\3\0039\4\b\1'\6\18\0'\a\19\0'\b\20\0B\4\4\2>\4\4\0039\4\b\1'\6\21\0'\a\22\0'\b\23\0006\t\24\0009\t\25\t9\t\26\t'\v\27\0B\t\2\2'\n\28\0&\b\n\bB\4\4\2>\4\5\0039\4\b\1'\6\29\0'\a\30\0'\b\23\0006\t\24\0009\t\25\t9\t\26\t'\v\27\0B\t\2\2'\n\31\0&\b\n\bB\4\4\2>\4\6\0039\4\b\1'\6 \0'\a!\0'\b\"\0B\4\4\0?\4\0\0=\3\5\0029\2\3\0019\2#\2'\3$\0=\3\5\0029\2%\0019\2%\2+\3\2\0=\3&\0029\2'\0009\4%\1B\2\2\1K\0\1\0\nsetup\14noautocmd\topts\18Neovim Loaded\vfooter\f:qa<CR>\14  Quit\6q\30/lua/user/keymaps.lua<CR>\22  Key-bindings\6k\31/lua/user/settings.lua<CR>\vconfig\fstdpath\afn\bvim\15<Cmd>edit \18  Settings\6s\19:WikiIndex<CR>\14  Wiki\6w\28:Telescope oldfiles<CR>\22  Recent files\6r\30:Telescope find_files<CR>\19  Find file\6f :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\fbuttons\1\14\0\0�\1  ██╗    ██╗   ██╗███████╗███████╗    ██╗   ██╗██╗███╗   ███╗ �\1  ██║    ██║   ██║██╔════╝██╔════╝    ██║   ██║██║████╗ ████║ �\1  ██║    ██║   ██║███████╗█████╗      ██║   ██║██║██╔████╔██║ �\1  ██║    ██║   ██║╚════██║██╔══╝      ╚██╗ ██╔╝██║██║╚██╔╝██║ �\1  ██║    ╚██████╔╝███████║███████╗     ╚████╔╝ ██║██║ ╚═╝ ██║ �\1  ╚═╝     ╚═════╝ ╚══════╝╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝ C                                                              o              ██████╗ ████████╗██╗    ██╗                     q              ██╔══██╗╚══██╔══╝██║    ██║                     i              ██████╔╝   ██║   ██║ █╗ ██║                     m              ██╔══██╗   ██║   ██║███╗██║                     \127              ██████╔╝   ██║   ╚███╔███╔╝ ██╗██╗██╗           y              ╚═════╝    ╚═╝    ╚══╝╚══╝  ╚═╝╚═╝╚═╝           \bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\2\0\0\b\0\18\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0015\3\6\0005\4\5\0=\4\a\0036\4\0\0'\6\b\0B\4\2\0029\4\t\0046\6\n\0009\6\v\0069\6\f\0069\6\r\6B\6\1\0A\4\0\2=\4\14\3B\1\2\0019\1\15\0009\1\3\0015\3\17\0005\4\16\0=\4\a\3B\1\2\1K\0\1\0\1\0\1\14filetypes\0\1\3\0\0\ash\tbash\vbashls\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\17cmp_nvim_lsp\14filetypes\1\0\2\17capabilities\0\14filetypes\0\1\5\0\0\6c\bcpp\tobjc\vobjcpp\vclangd\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\nicons\1\0\2\nicons\0\20maximum_padding\3\1\rfiletype\1\0\1\fenabled\2\1\0\2\rfiletype\0\17buffer_index\2\nsetup\vbarbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: wiki.vim
time([[Config for wiki.vim]], true)
try_loadstring("\27LJ\2\nR\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0+/Users/MARIUJ/OneDrive - Equinor/wiki/\14wiki_root\6g\bvim\0", "config", "wiki.vim")
time([[Config for wiki.vim]], false)
-- Config for: jupytext.nvim
time([[Config for jupytext.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\14\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\2'\1\3\0&\0\1\0006\1\4\0009\1\5\0016\3\6\0009\3\a\0039\3\b\3\18\4\0\0)\5\1\0+\6\2\0B\1\5\2\14\0\1\0X\1\t�6\1\6\0009\1\a\1\18\2\0\0'\3\t\0006\4\6\0009\4\a\0049\4\b\4&\2\4\2=\2\b\0016\1\n\0'\3\v\0B\1\2\0029\1\f\0015\3\r\0B\1\2\1K\0\1\0\1\0\1\nstyle\fpercent\nsetup\rjupytext\frequire\6:\tPATH\benv\bvim\tfind\vstring /.pyenv/versions/neovim/bin\tHOME\vgetenv\aos\0", "config", "jupytext.nvim")
time([[Config for jupytext.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\2B\0\2\1K\0\1\0\rrenderer\1\0\1\rrenderer\0\1\0\1\18highlight_git\2\nsetup\14nvim-tree\frequire\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: image.nvim
time([[Config for image.nvim]], true)
try_loadstring("\27LJ\2\n�\a\0\0\6\0\30\00016\0\0\0006\1\0\0009\1\1\1'\2\2\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\a\0&\1\4\1=\1\1\0006\0\0\0006\1\0\0009\1\1\1'\2\2\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\b\0&\1\4\1=\1\1\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0005\2\f\0005\3\16\0005\4\r\0005\5\14\0=\5\15\4=\4\17\0035\4\18\0005\5\19\0=\5\15\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\25hijack_file_patterns\1\a\0\0\n*.png\n*.jpg\v*.jpeg\n*.gif\v*.webp\v*.avif#window_overlap_clear_ft_ignore\1\4\0\0\rcmp_menu\rcmp_docs\5\17integrations\bcss\1\0\1\fenabled\2\thtml\1\0\1\fenabled\2\nneorg\1\2\0\0\tnorg\1\0\5\25clear_in_insert_mode\1\14filetypes\0 only_render_image_at_cursor\1\27download_remote_images\2\fenabled\2\rmarkdown\1\0\4\thtml\0\bcss\0\rmarkdown\0\nneorg\0\14filetypes\1\3\0\0\rmarkdown\fvimwiki\1\0\5\25clear_in_insert_mode\1\14filetypes\0 only_render_image_at_cursor\1\27download_remote_images\2\fenabled\2\1\0\b\17integrations\0\25hijack_file_patterns\0\fbackend\nkitty$tmux_show_only_in_active_window\1$editor_only_render_when_focused\1#window_overlap_clear_ft_ignore\0!window_overlap_clear_enabled\1!max_height_window_percentage\3P\nsetup\nimage\frequire$/.luarocks/share/lua/5.1/?.lua;)/.luarocks/share/lua/5.1/?/init.lua;\n$HOME\vexpand\afn\bvim\6;\tpath\fpackage\0", "config", "image.nvim")
time([[Config for image.nvim]], false)
-- Config for: molten-nvim
time([[Config for molten-nvim]], true)
try_loadstring("\27LJ\2\no\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1�\3=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\15image.nvim\26molten_image_provider!molten_output_win_max_height\6g\bvim\0", "config", "molten-nvim")
time([[Config for molten-nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\b\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\15\0\0\0X\2\t�9\2\3\0015\4\4\0005\5\5\0=\5\6\4B\2\2\2\14\0\2\0X\3\1�'\2\a\0L\2\2\0'\2\a\0L\2\2\0\5\18type_patterns\1\4\0\0\nclass\rfunction\vmethod\1\0\2\19indicator_size\3d\18type_patterns\0\15statusline\20nvim-treesitter\frequire\npcall<\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\a\0\3\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\5\rfiletype\abo\bvim�\1\0\0\4\0\v\0\0226\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\18\2\0\0009\0\4\0'\3\5\0B\0\3\0026\1\0\0009\1\6\0019\1\a\1\a\1\b\0X\1\6�\6\0\t\0X\1\4�'\1\n\0\18\2\0\0&\1\2\1L\1\2\0'\1\t\0L\1\2\0\t \5\vpython\rfiletype\abo\t^%S+\nmatch\18pyenv version\vsystem\afn\bvimB\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\vpython\rfiletype\abo\bvim�\6\1\0\a\0%\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0005\5\n\0005\6\v\0=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\5>\5\3\4=\4\17\0035\4\18\0005\5\21\0003\6\19\0>\6\1\0053\6\20\0=\6\22\0055\6\23\0=\6\24\5>\5\2\4=\4\25\0035\4\26\0005\5\29\0003\6\27\0>\6\1\0053\6\28\0=\6\22\5>\5\3\4=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\3=\3\14\0025\3#\0=\3$\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\rquickfix\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\0\1\tcond\0\0\0\1\3\0\0\rencoding\rfiletype\14lualine_c\ncolor\1\0\2\afg\vyellow\bgui\tbold\tcond\1\0\2\tcond\0\ncolor\0\0\0\1\2\0\0\rfilename\14lualine_b\fsymbols\1\0\4\nerror\t \tinfo\t \twarn\t \thint\t \rsections\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\2\0\0\rnvim_lsp\1\2\6\0\16diagnostics\fcolored\2\fsymbols\0\19always_visible\2\21update_in_insert\1\rsections\0\fsources\0\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\6\14lualine_b\0\14lualine_z\0\14lualine_c\0\14lualine_x\0\14lualine_a\0\14lualine_y\0\1\2\0\0\tmode\foptions\1\0\3\15extensions\0\foptions\0\rsections\0\1\0\2\18icons_enabled\2\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\a\0005\4\5\0005\5\3\0004\6\0\0=\6\4\5=\5\6\4=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\3B\1\2\1K\0\1\0\15extensions\fpickers\rdefaults\1\0\3\fpickers\0\15extensions\0\rdefaults\0\rmappings\1\0\1\rmappings\0\6i\1\0\1\6i\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\1\0\2\t\0\a\1\21*\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\0056\6\1\0009\6\4\0069\6\5\6\18\b\1\0B\6\2\0A\3\1\3\15\0\3\0X\5\a�\15\0\4\0X\5\5�9\5\6\4\1\2\5\0X\5\2�+\5\2\0L\5\2\0K\0\1\0\tsize\22nvim_buf_get_name\bapi\ffs_stat\tloop\bvim\npcall��\f�\3\1\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\0025\3\t\0003\4\n\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\14highlight\fdisable\0\1\0\3&additional_vim_regex_highlighting\1\venable\2\fdisable\0\19ignore_install\vindent\1\0\1\venable\2\21ensure_installed\1\0\6\vindent\0\17auto_install\2\14highlight\0\19ignore_install\0\21ensure_installed\0\17sync_install\1\1\16\0\0\blua\bvim\vvimdoc\rmarkdown\20markdown_inline\vpython\bsql\n bash\ttoml\nbicep\nregex\btsv\bcsv\thtml\6c\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textobjects ]]

-- Config for: nvim-treesitter-textobjects
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\6\0005\4\3\0005\5\4\0=\5\5\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\16textobjects\1\0\1\16textobjects\0\vselect\1\0\1\vselect\0\fkeymaps\1\0\4\aaf\20@function.outer\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\1\0\3\fkeymaps\0\14lookahead\2\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter-textobjects")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
