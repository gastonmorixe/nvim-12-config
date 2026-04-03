-- Neovim Options
local opt = vim.opt

-- Neovim 0.12 specific features
opt.autocomplete = true -- Enable native autocomplete
-- opt.ui2 = true          -- Experimental UI2 decoupling (removed as it caused errors)

-- Appearance
opt.number = true         -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.termguicolors = true  -- True color support
opt.colorcolumn = "90"
opt.wrap = true
opt.cursorline = true     -- Highlight the current line
opt.signcolumn = "yes"    -- Always show the signcolumn

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Behavior
opt.mouse = "a"           -- Enable mouse support
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.ignorecase = true     -- Ignore case in search
opt.smartcase = true      -- Override ignorecase if search has capitals
opt.splitright = true     -- Vertical splits to the right
opt.splitbelow = true     -- Horizontal splits below
opt.splitkeep = "screen"  -- Keep screen position when splitting
opt.laststatus = 3        -- Global statusline
opt.cmdheight = 0         -- Hide command line when not in use
opt.undofile = true       -- Persistent undo
vim.cmd("packadd nvim.undotree") -- Load native 0.12 visualizer

-- Fillchars for clean UI
opt.fillchars:append({
  vert = "│",
  vertleft = "│",
  vertright = "│",
  verthoriz = "┼",
})

-- NeoTree Separator Fix (if neo-tree is present)
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local ok, win_sep = pcall(vim.api.nvim_get_hl, 0, { name = "WinSeparator" })
    if ok then
      vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", win_sep)
    end
  end,
})

-- Initial WinSeparator setup
local ok, win_sep = pcall(vim.api.nvim_get_hl, 0, { name = "WinSeparator" })
if ok then
  vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", win_sep)
end
