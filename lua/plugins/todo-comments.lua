-- Todo-comments Configuration
require("todo-comments").setup()

-- Keymaps
vim.keymap.set("n", "]t", function() require("todo-comments").jump_next() end, { desc = "Next Todo" })
vim.keymap.set("n", "[t", function() require("todo-comments").jump_prev() end, { desc = "Prev Todo" })
vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>", { desc = "Todo (Trouble)" })
vim.keymap.set("n", "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", { desc = "Todo/Fix/Fixme (Trouble)" })
vim.keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>", { desc = "Todo" })
vim.keymap.set("n", "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", { desc = "Todo/Fix/Fixme" })
