-- Telescope Configuration
local telescope = require("telescope")
telescope.setup({
  defaults = {
    mappings = {
      i = { ["<C-j>"] = "move_selection_next", ["<C-k>"] = "move_selection_previous" },
    },
    path_display = { "truncate" },
  },
})

pcall(telescope.load_extension, "fzf")

-- Keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Old Files" })
vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Commands" })
vim.keymap.set("n", "<leader>f/", builtin.current_buffer_fuzzy_find, { desc = "Current Buffer Fuzzy Find" })
