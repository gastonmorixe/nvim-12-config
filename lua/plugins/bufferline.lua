-- Bufferline Configuration
require("bufferline").setup({
  options = {
    always_show_bufferline = true,
    indicator = { style = "underline" },
    hover = { enabled = true, reveal = { "close" } },
    offsets = {
      {
        filetype = "neo-tree",
        text = "Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
})

-- Keymaps
vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLinePick<cr>", { desc = "Pick Buffer" })
vim.keymap.set("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Pick and Close Buffer" })
