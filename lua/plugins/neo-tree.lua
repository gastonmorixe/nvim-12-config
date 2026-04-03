-- Neo-tree File Explorer Configuration
require("neo-tree").setup({
  default_component_configs = {
    indent = { with_expanders = true },
  },
  filesystem = {
    filtered_items = { visible = true, hide_dotfiles = false, hide_gitignored = false },
    follow_current_file = { enabled = true },
    use_libuv_file_watcher = true,
  },
  window = { width = 30, mappings = { ["<space>"] = "none" } },
})

-- Keymap
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })
vim.keymap.set("n", "<leader>fe", "<cmd>Neotree reveal<cr>", { desc = "Reveal file in Explorer" })
