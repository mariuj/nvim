local o = vim.o
local g = vim.g
local opt = vim.opt

g.python3_host_prog = os.getenv("HOME") .. "/.pyenv/versions/neovim/bin/python"


-- UI Configurations
o.clipboard = "unnamedplus"     -- Use the system clipboard
o.showmode = false              -- Do not show the current mode (e.g., -- INSERT --)
o.laststatus = 3                -- Global status line
opt.fillchars = { eob = " " }   -- Use a space for the end-of-buffer character
o.signcolumn = "yes"            -- Always show the sign column
o.number = true                 -- Show absolute line numbers
o.relativenumber = true         -- Show relative line numbers
o.cmdheight = 1                 -- Height of the command line
o.cursorline = true             -- Highlight the cursor line
opt.colorcolumn = "80"          -- Highlight the nth column
opt.shortmess:append "sI"       -- Shorten certain messages

o.wrap = true
o.linebreak = true
o.showbreak="▶"

-- Search Configurations
o.ignorecase = true             -- Ignore case in search patterns
o.smartcase = true              -- Override ignorecase when search pattern has uppercase letters
o.hlsearch = true               -- Highlight all search matches
o.incsearch = true              -- Show incremental search results
o.wrapscan = true               -- Searches wrap around the end of the file

-- Window Management
o.splitbelow = true             -- Open horizontal splits below the current window
o.splitright = true             -- Open vertical splits to the right of the current window

-- Timing
o.timeoutlen = 400              -- Time in milliseconds to wait for a mapped sequence to complete

-- Files and Backup
o.undofile = true               -- Enable persistent undo

-- Indentation
o.smartindent = true
o.autoindent = true
o.expandtab = true              -- Convert tabs to spaces
o.softtabstop = 4               -- Number of spaces for a tab (in insert mode)
o.shiftwidth = 4                -- Number of spaces for each indentation level
o.tabstop = 4                   -- Number of spaces for a tab (while editing)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.tabstop = 2
    end,
})

-- Miscellaneous
o.mouse = "a"                   -- Enable mouse support in all modes
o.errorbells = false            -- Disable the audible bell on errors
o.fileencoding = "utf-8"        -- Default file encoding
opt.completeopt = { "menuone", "noselect" } -- Customize insert mode completion behavior

-- Turn on spell checker for md files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true
  end,
})

return {}
