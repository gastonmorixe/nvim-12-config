# 🚀 Neovim 0.12 Pure Native Configuration

A zero-framework, minimalist, and hyper-fast Neovim 0.12 configuration. This setup is the result of a complete migration from Neovim 0.11 and LazyVim, moving away from third-party abstraction layers in favor of pure native APIs.

## ✨ Highlights

- **`vim.pack` Package Management:** Leveraging the new built-in Neovim 0.12 plugin manager. No more `lazy.nvim` or `packer.nvim` overhead.
- **Native LSP Configuration:** Using the state-of-the-box declarative `vim.lsp.config` and `vim.lsp.enable()` patterns.
- **Native Autocomplete:** Powered by the new 0.12 `'autocomplete'` option for a "batteries-included" feel.
- **Native Undo Tree:** Persistent, visual undo history accessible via `:Undotree`.
- **Decoupled Architecture:** Every plugin has its own isolated configuration file in `lua/plugins/`. Clean, readable, and modular.
- **Optimized for Swift/iOS:** Full development support for Apple's ecosystem including `sourcekit-lsp`, Treesitter, and custom Swift-specific indentation.

## 🛠️ Tech Stack

- **Theme:** [Catppuccin Mocha](https://github.com/catppuccin/nvim) (Black background variant)
- **Explorer:** [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- **Fuzzy Finder:** [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- **IDE Features:** [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [Mason](https://github.com/williamboman/mason.nvim), [Conform](https://github.com/stevearc/conform.nvim), [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- **Others:** [Bufferline](https://github.com/akinsho/bufferline.nvim), [Trouble](https://github.com/folke/trouble.nvim), [Dropbar](https://github.com/Bekaboo/dropbar.nvim), [Molten](https://github.com/benlubas/molten-nvim)

## 📂 File Structure

```text
~/.config/nvim/
├── init.lua                  # Core entry point
├── lua/
│   ├── config/
│   │   ├── options.lua       # Native 0.12 options (autocomplete, etc.)
│   │   ├── keymaps.lua       # Decoupled keybindings
│   │   ├── autocmds.lua      # Standard autocommands
│   │   └── providers.lua     # Early language provider setup
│   └── plugins/
│       ├── init.lua          # Central vim.pack plugin hub
│       ├── lspconfig.lua     # Native 0.12 LSP configuration
│       └── [plugin].lua      # Exactly one plugin configuration per file
└── docs/
    └── LSP-REFERENCE.md      # Consolidated research for all languages
```

## ⚙️ Installation & Management

1.  **Clone:** `git clone https://github.com/your-username/nvim-config ~/.config/nvim`
2.  **Bootstrap:** Launch Neovim. The `vim.pack` manager will automatically detect and install all plugins on the first run.
3.  **Update Plugins:** Run `:lua vim.pack.update()`. This will open a confirmation buffer; review the changes and run `:w` to apply the updates.
4.  **Restart:** Use the new 0.12 `:restart` command to apply structural changes without quitting Neovim.

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.
Copyright (c) 2026 Gaston Morixe.
