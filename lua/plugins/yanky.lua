-- Yanky Configuration
require("yanky").setup({
  highlight = {
    on_put = true,
    on_yank = true,
    timer = 500,
  },
})

-- Keymaps
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", { desc = "Put After" })
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", { desc = "Put Before" })
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", { desc = "Put After Selection" })
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", { desc = "Put Before Selection" })
vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousAnyEntry)", { desc = "Previous Yank" })
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextAnyEntry)", { desc = "Next Yank" })
