-- Outline Configuration
require("outline").setup({
  outline_window = { focus_on_open = false },
  keymaps = { up_and_jump = "<up>", down_and_jump = "<down>" },
})

-- Keymap
vim.keymap.set("n", "<leader>cs", "<cmd>Outline<cr>", { desc = "Toggle Outline" })
