-- Native Plugin Manager (vim.pack) Initialization
local pack = vim.pack

pack.add({
  -- UI & Theme
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
  { src = "https://github.com/akinsho/bufferline.nvim", name = "bufferline" },
  { src = "https://github.com/folke/trouble.nvim", name = "trouble" },
  { src = "https://github.com/Bekaboo/dropbar.nvim", name = "dropbar" },
  { src = "https://github.com/hedyhli/outline.nvim", name = "outline" },
  { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim", name = "render-markdown" },
  { src = "https://github.com/folke/which-key.nvim", name = "which-key" },
  { src = "https://github.com/nvim-lualine/lualine.nvim", name = "lualine" },
  { src = "https://github.com/lewis6991/gitsigns.nvim", name = "gitsigns" },
  { src = "https://github.com/folke/todo-comments.nvim", name = "todo-comments" },
  { src = "https://github.com/stevearc/dressing.nvim", name = "dressing" },

  -- Navigation & Explorer
  { src = "https://github.com/nvim-lua/plenary.nvim", name = "plenary" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons", name = "nvim-web-devicons" },
  { src = "https://github.com/MunifTanjim/nui.nvim", name = "nui" },
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim", name = "neo-tree" },
  { src = "https://github.com/nvim-telescope/telescope.nvim", name = "telescope" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", name = "telescope-fzf-native" },

  -- Treesitter
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "nvim-treesitter" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter-context", name = "nvim-treesitter-context" },

  -- LSP, Formatting, Linting
  { src = "https://github.com/neovim/nvim-lspconfig", name = "nvim-lspconfig" },
  { src = "https://github.com/williamboman/mason.nvim", name = "mason" },
  { src = "https://github.com/williamboman/mason-lspconfig.nvim", name = "mason-lspconfig" },
  { src = "https://github.com/stevearc/conform.nvim", name = "conform" },
  { src = "https://github.com/mfussenegger/nvim-lint", name = "nvim-lint" },

  -- Editing Enhancements
  { src = "https://github.com/echasnovski/mini.pairs", name = "mini-pairs" },
  { src = "https://github.com/echasnovski/mini.ai", name = "mini-ai" },
  { src = "https://github.com/echasnovski/mini.surround", name = "mini-surround" },
  { src = "https://github.com/gbprod/yanky.nvim", name = "yanky" },

  -- Advanced Features (Debug, Test, AI)
  { src = "https://github.com/mfussenegger/nvim-dap", name = "nvim-dap" },
  { src = "https://github.com/nvim-neotest/nvim-nio", name = "nvim-nio" },
  { src = "https://github.com/rcarriga/nvim-dap-ui", name = "nvim-dap-ui" },
  { src = "https://github.com/theHamsta/nvim-dap-virtual-text", name = "nvim-dap-virtual-text" },
  { src = "https://github.com/nvim-neotest/neotest", name = "neotest" },
  { src = "https://github.com/antoinemadec/FixCursorHold.nvim", name = "FixCursorHold" },
  { src = "https://github.com/zbirenbaum/copilot.lua", name = "copilot" },

  -- Others
  { src = "https://github.com/benlubas/molten-nvim", name = "molten" },
})

-- Safe load helper
local function safe_require(module)
  local ok, err = pcall(require, module)
  if not ok then
    vim.notify("Error loading " .. module .. ": " .. err, vim.log.levels.ERROR)
  end
end

-- Core Plugin Configs
safe_require("plugins.catppuccin")
safe_require("plugins.treesitter")
safe_require("plugins.neo-tree")
safe_require("plugins.bufferline")
safe_require("plugins.dropbar")
safe_require("plugins.outline")
safe_require("plugins.telescope")
safe_require("plugins.lspconfig")
safe_require("plugins.conform")
safe_require("plugins.lint")
safe_require("plugins.molten")
safe_require("plugins.trouble")
safe_require("plugins.markdown")

-- Restored Defaults & Extras
safe_require("plugins.which-key")
safe_require("plugins.lualine")
safe_require("plugins.gitsigns")
safe_require("plugins.todo-comments")
safe_require("plugins.dressing")
safe_require("plugins.mini-pairs")
safe_require("plugins.mini-ai")
safe_require("plugins.mini-surround")
safe_require("plugins.yanky")
safe_require("plugins.dap")
safe_require("plugins.neotest")
safe_require("plugins.copilot")
