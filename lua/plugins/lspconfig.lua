-- Native LSP Configuration (Neovim 0.12+)

-- Initialize Mason
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls", "vtsls", "pyright", "ruff", "rust_analyzer", "gopls",
    "clangd", "html", "cssls", "emmet_language_server", "jsonls",
  },
})

-- Common LSP Settings
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true

-- Global LSP Config (equivalent to lspconfig defaults)
vim.lsp.config["*"] = {
  capabilities = capabilities,
}

-- Individual Server Configurations using the new declarative API
-- Note: nvim-lspconfig automatically populates vim.lsp.config for many servers.
-- We just need to enable them.

-- 1. Swift/ObjC (sourcekit-lsp)
vim.lsp.config.sourcekit = {
  cmd = { "xcrun", "sourcekit-lsp" },
  filetypes = { "swift", "objc", "objcpp" },
  root_markers = { "buildServer.json", "*.xcodeproj", "*.xcworkspace", "Package.swift", ".git" },
}
vim.lsp.enable("sourcekit")

-- 2. Lua
vim.lsp.config.lua_ls = {
  settings = { Lua = { diagnostics = { globals = { "vim" } } } },
}
vim.lsp.enable("lua_ls")

-- 3. Mason-installed servers
local servers = {
  "vtsls", "pyright", "ruff", "html", "cssls",
  "emmet_language_server", "rust_analyzer", "gopls", "clangd", "jsonls"
}
for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end

-- LSP UI/Diagnostics
vim.diagnostic.config({
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, prefix = "●" },
  severity_sort = true,
})

-- Global Mappings for LSP (using new 0.12 defaults where possible)
-- Neovim 0.12 already maps:
-- grn -> rename
-- gra -> code_action
-- grr -> references
-- gri -> implementation
-- gO  -> symbols

-- Custom additional mappings
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})
