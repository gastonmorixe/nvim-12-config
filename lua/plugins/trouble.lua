-- Trouble Configuration
require("trouble").setup({
  auto_close = false,
  auto_open = false,
  auto_preview = true,
  auto_refresh = true,
  auto_jump = false,
  focus = true,
  restore = true,
  follow = true,
  indent_guides = true,
  max_items = 200,
  multiline = true,
})

-- Keymaps
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc = "LSP Sidebar (Trouble)" })
