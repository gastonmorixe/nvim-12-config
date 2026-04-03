# Repository Guidelines

## Project Structure & Module Organization

- `init.lua` bootstraps `lazy.nvim` via `lua/config/lazy.lua`.
- `lua/config/` holds local `options.lua`, `keymaps.lua`, and `autocmds.lua` overrides.
- `lua/plugins/` contains Lazy specs (one plugin per file) that `return { "author/repo", opts = { … } }`.
- `lazyvim.json` enables LazyVim extras; edit to add/remove language or tooling packs.
- `lazy-lock.json` pins plugin versions; commit changes after `:Lazy sync`.
- `stylua.toml` defines formatting rules for Lua.

## Build, Test, and Development Commands

- Run this profile: `nvim` (from `~/.config/nvim`). Sandbox a copy: `NVIM_APPNAME=nvim-dev nvim` after copying this repo to `~/.config/nvim-dev`.
- Plugin ops: `:Lazy sync` (install/update), `:Lazy clean` (remove unused), `:Lazy check` (outdated), `:Mason`, `:TSUpdate`.
- Health: `:checkhealth` and `:Lazy health`.
- Format Lua: `stylua .` (uses `stylua.toml`).
- Useful local searches: `fd <name>` and `rg -n "pattern"`.

## Coding Style & Naming Conventions

- Lua: 2‑space indent, width 120 (see `stylua.toml`).
- Plugin specs: kebab‑case filenames under `lua/plugins/`; prefer `opts` over ad‑hoc `config` when possible; keep one concern per file.
- Avoid hard‑coded absolute paths; prefer tools on `$PATH` or Mason (e.g., use `ruby-lsp` from PATH rather than a user‑specific path).

## Testing Guidelines

- No automated tests; rely on editor health and smoke tests.
- Reproduce issues in isolation: `nvim -u NONE --noplugin` (baseline) or `NVIM_APPNAME=nvim-dev nvim` with a sandboxed copy.
- Verify key flows: open representative filetypes, LSP attaches, formatters run, and `:Lazy check` reports clean.

## Commit & Pull Request Guidelines

- Use Conventional Commits: `feat:`, `fix:`, `docs:`, `refactor:`, `chore:`.
- Example: `feat(ruby): enable ruby_lsp by default`.
- PRs include: summary, rationale, testing steps (commands run), and screenshots when UI/visual behavior changes (themes, statusline, etc.).

## Security & Config Tips

- Do not commit secrets or machine‑specific files; extend `.gitignore` if needed.
- Commit `lazy-lock.json` to keep contributors on the same plugin revisions.

# AGENTS.md — Tool Selection (Generic)

You write a NOTES.md file in your current directory: you use it to keep track of the progress of your work and ideas. It's your personal notebook. You don't remove text from it, you only add to it. You use markdown for your notes. You always use it. You separate each time you wirte to NOTES.md with a timestamp line like YYYY-MM-DD HH:MM (24-hour time). You always use UTC time.

When you need to call tools from the shell, use this rubric:

- Find Files: `fd`
- Find Text: `rg` (ripgrep)
- Find Code Structure: `ast-grep`
  - Default to TypeScript when in TS/TSX repos:
    - `.ts` → `ast-grep --lang ts -p '<pattern>'`
    - `.tsx` (React) → `ast-grep --lang tsx -p '<pattern>'`
  - Other common languages:
    - Python → `ast-grep --lang python -p '<pattern>'`
    - Bash → `ast-grep --lang bash -p '<pattern>'`
    - JavaScript → `ast-grep --lang js -p '<pattern>'`
    - Rust → `ast-grep --lang rust -p '<pattern>'`
    - JSON → `ast-grep --lang json -p '<pattern>'`
- Select among matches: pipe to `fzf`
- JSON: `jq`
- YAML/XML: `yq`
- Updated documentation: use search_documentation tool to search for latest specific documentation. it's better to use search_documentation tool with only one keyword rather than multiple, for example like 'NSView', 'UIKit', 'View', 'createContext' or 'Suspense', etc. Always passing the related docset identifier along the query. You should use the search_documentation tool as much the web search tool. Both both tools are important.

If `ast-grep` is available, avoid plain‑text searches (`rg`/`grep`) when you need syntax‑aware matching. Use `rg` only when a plain‑text search is explicitly requested.
