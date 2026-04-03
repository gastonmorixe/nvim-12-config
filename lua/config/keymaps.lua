-- Keymaps
local map = vim.keymap.set

-- Set Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Native Autocomplete keymaps (adjust if needed)
-- Neovim 0.12 native autocomplete often uses <C-n> and <C-p>

-- Native UndoTree
map("n", "<leader>ut", "<cmd>Undotree<cr>", { desc = "Toggle Native Undotree" })

-- Molten keymaps
map("n", "<localleader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize Molten" })
map("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "evaluate operator selection" })
map("n", "<localleader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
map("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
map(
  "v",
  "<localleader>r",
  ":<C-u>MoltenEvaluateVisual<CR>gv",
  { silent = true, desc = "evaluate visual selection" }
)

-- Insert-mode Escape on 'jk'
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Better navigation between windows
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to top window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
