-- Treesitter Syntax Highlighting Configuration
require("nvim-treesitter").setup({
  ensure_installed = {
    "lua", "vim", "vimdoc", "query", "javascript", "typescript", "tsx", "json",
    "swift", "objc", "python", "rust", "go", "ruby", "cpp", "markdown",
    "markdown_inline", "html", "css", "bash", "yaml",
  },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
})

-- Swift-specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "swift",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
    vim.opt_local.smartindent = true
    vim.opt_local.autoindent = true
    vim.opt_local.cindent = false
    vim.opt_local.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
