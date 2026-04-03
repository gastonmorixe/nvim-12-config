# Neovim LSP Configuration Reference (Consolidated)

This document contains a consolidated summary of historical research and configuration guides for specific language ecosystems in this Neovim environment. While originally developed for a LazyVim/0.11 setup, the insights and server choices remain relevant for the current 0.12 native configuration.

## 1. Swift & iOS Development

### Core Ecosystem
- **LSP Server:** `sourcekit-lsp` (installed via Xcode, managed via `xcrun sourcekit-lsp`).
- **Build System Bridge:** `xcode-build-server` is required to generate the `buildServer.json` compilation database that `sourcekit-lsp` uses to understand Xcode projects.
- **Key Plugin:** `xcodebuild.nvim` (Wojciech Kulik) is the definitive solution for building, testing, and debugging iOS apps in Neovim.
- **Debugging:** `nvim-dap` with `codelldb` (from Mason) is the standard for Swift debugging.

### Important Configuration (sourcekit-lsp)
- Requires `capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true` for full project-wide symbol support.
- Root markers include `buildServer.json`, `*.xcodeproj`, `*.xcworkspace`, `Package.swift`, and `.git`.

---

## 2. HTML & CSS Development

### Recommended LSP Servers (Mason)
- **`html-lsp` (vscode-html-language-server):** Best for general HTML; supports embedded CSS/JS.
- **`css-lsp` (vscode-css-language-server):** Best for CSS, SCSS, and LESS.
- **`emmet-language-server` (modern):** Highly recommended for Emmet abbreviations (replaces the older `emmet-ls`).

### Recommended Plugins
- **`nvim-html-css`:** Provides enhanced CSS IntelliSense by scanning external files and CDNs.

---

## 3. Python Development

### Key Insights
- **LSP Servers:** `pyright` (type checking) + `ruff` (linting/formatting).
- **Behavioral Findings:** 
  - LSP clients normally attach only when a project file is opened (not from the dashboard).
  - Workspace symbol search (`workspace/symbol`) requires at least one project buffer to be open for the client to attach and provide symbols.
  - Large project performance is improved by explicitly excluding junk directories like `build/`, `target/`, and `node_modules/` from analysis.

---

## 4. Native LSP Mappings (Neovim 0.12+)
Neovim 0.12 provides several default mappings that should be leveraged:
- `grn`: Rename (`vim.lsp.buf.rename`)
- `gra`: Code actions (`vim.lsp.buf.code_action`)
- `grr`: References (`vim.lsp.buf.references`)
- `gri`: Implementation (`vim.lsp.buf.implementation`)
- `grt`: Type definition (`vim.lsp.buf.type_definition`)
- `gO`: Document symbols (`vim.lsp.buf.document_symbol`)
- `gx`: Opens "documentLink" items (replaces old `gx` for URLs).
