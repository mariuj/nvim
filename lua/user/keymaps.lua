local map = vim.keymap.set 

-------------
-- leaders
-------------
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- navigation
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Comment
map("n", "<leader>c", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>c", "gc", { desc = "Toggle comment", remap = true })

-- nvimtree
map("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", { desc = "File tree" })

-- telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
map('n', '<leader>fg', builtin.live_grep, { desc = "Live grep" })
map('n', '<leader>fb', builtin.buffers, { desc = "List buffers" })
map('n', '<leader>fh', builtin.help_tags, { desc = "Find help tags" })

-- tabufline
map("n", "<leader>be", "<cmd>enew<cr>", { desc = "New tab" })
map("n", "<leader>bs", "<cmd>new<cr>", { desc = "New pane" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bc", "<cmd>BufferClose<cr>", { desc = "Close buffer" })
function BufferGoToPrompt()
  local buffer_number = vim.fn.input("nuffer number: ")
  if buffer_number ~= "" then
    vim.cmd("BufferGoto " .. buffer_number)
  else
    print("No buffer number entered.")
  end
end
vim.api.nvim_set_keymap("n", "<leader>bgt", ":lua BufferGoToPrompt()<CR>", { noremap = true, silent = true, desc = "Buffer Go To n" })

-- Molten 
map("n", "<localleader>mi", ":MoltenInfo<CR>", { silent = true, desc = "Show info" })
map("n", "<localleader>mk", ":MoltenInit<CR>", { silent = true, desc = "Initialize the kernel" })
map("n", "<localleader>mo", ":MoltenEnterOutput<CR>", { silent = true, desc = "Open output window" })
map("n", "<localleader>me", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "run operator selection" })
map("n", "<localleader>ml", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
map("n", "<localleader>mr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
map("v", "<localleader>mv", ":<C-u>MoltenEvaluateVisual<CR>gv", { silent = true, desc = "evaluate visual selection" })
map("n", "<localleader>md", ":MoltenDelete<CR>", { silent = true, desc = "evaluate visual selection" })
function select_and_evaluate()
  local start_line = vim.fn.search("# %%", "bW")
  if start_line == 0 then return end
  vim.fn.cursor(start_line, 0)
  vim.cmd("normal! V")
  local end_line = vim.fn.search("# %%", "W")
  if end_line == 0 then
    vim.cmd("normal! G")
  else
    vim.fn.cursor(end_line - 1, 0)
  end
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>:<C-u>MoltenEvaluateVisual<CR>", true, false, true), 'n', false)
end
vim.api.nvim_set_keymap("n", "<localleader>mc", ":lua select_and_evaluate()<CR>", { silent = true, desc = "Molten Run Cell" })

-- CMP
local cmp = require'cmp'

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- To confirm selection with Enter
  },
})

-- lsp:
map("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition" })
map("n", "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover Documentation" })
map("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to Implementation" })
map("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Go to References" })
map("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "Go to Type Definition" })
map("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "Signature Help" })
map("n", "<leader>gn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename Symbol" })
map("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" })
map("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", { desc = "Format Document" })

-- Diagnostics Mappings
map("n", "<leader>dd", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Line Diagnostics" })
map("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
map("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous Diagnostic" })
map("n", "<leader>ds", "<cmd>lua vim.diagnostic.setloclist()<CR>", { desc = "Show Diagnostics in LocList" })

-- Treesitter Keybindings
map("n", "<leader>ti", "<cmd>lua require'nvim-treesitter.incremental_selection'.init_selection()<CR>", { desc = "Init selection" })
map("n", "<leader>tn", "<cmd>lua require'nvim-treesitter.incremental_selection'.node_incremental()<CR>", { desc = "Next node" })
map("n", "<leader>tp", "<cmd>lua require'nvim-treesitter.incremental_selection'.node_decremental()<CR>", { desc = "Prev node" })
map("n", "<leader>ts", "<cmd>lua require'nvim-treesitter.incremental_selection'.scope_incremental()<CR>", { desc = "Next scope" })

map("o", "<leader>tfo", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.outer')<CR>", { desc = "Outer function" })
map("o", "<leader>tfi", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.inner')<CR>", { desc = "Inner function" })
map("o", "<leader>tco", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.outer')<CR>", { desc = "Outer class" })
map("o", "<leader>tci", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.inner')<CR>", { desc = "Inner class" })

map("v", "<leader>tfo", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.outer')<CR>", { desc = "Select outer function" })
map("v", "<leader>tfi", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@function.inner')<CR>", { desc = "Select inner function" })
map("v", "<leader>tco", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.outer')<CR>", { desc = "Select outer class" })
map("v", "<leader>tci", "<cmd>lua require'nvim-treesitter.textobjects.select'.select_textobject('@class.inner')<CR>", { desc = "Select inner class" })

-- pyright:
local utils = require('plugins.configs.pyright_config')
vim.api.nvim_set_keymap('n', '<leader>pr', ':lua require("plugins.configs.pyright_config").save_pyright_config()<CR>', { noremap = true, silent = true })

-- Markdown Preview
vim.api.nvim_set_keymap('n', '<localleader>mp', ':MarkdownPreviewToggle<CR>', { noremap = true, silent = true })

-- Which-key
local wk = require("which-key")

-- Normal mode bindings
wk.add({
  { "<leader>f", group = "File" },
  { "<leader>g", group = "Go-to" },
  { "<leader>d", group = "Diagnostics" },
  { "<leader>b", group = "Buffer" },
  { "<leader>t", group = "Treesitter" },
  { "<leader>t c", group = "Class" },
  { "<leader>t f", group = "Function" },
  { "<leader>p", group = "Pyright" },
  { "<leader>w", group = "Wiki" },
  { "<leader>c", group = "Toggle comment" },
  { "<localleader>m", group = "Molten" },
})

