-- Dressing Configuration (Better UI for input/select)
require("dressing").setup({
  input = {
    enabled = true,
    default_prompt = "Input:",
    trim_prompt = true,
    start_in_insert = true,
    insert_only = true,
    relative = "cursor",
    prefer_width = 40,
    width = nil,
    max_width = { 140, 0.9 },
    min_width = { 20, 0.2 },
    buf_options = {},
    win_options = {
      winblend = 10,
      winhighlight = "",
    },
    mappings = {
      n = {
        ["<Esc>"] = "Close",
        ["<CR>"] = "Confirm",
      },
      i = {
        ["<C-c>"] = "Close",
        ["<CR>"] = "Confirm",
        ["<Up>"] = "HistoryPrev",
        ["<Down>"] = "HistoryNext",
      },
    },
  },
  select = {
    enabled = true,
    backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },
    trim_prompt = true,
    telescope = nil,
    fzf_lua = nil,
    fzf = nil,
    nui = {
      position = "50%",
      size = nil,
      relative = "editor",
      border = {
        style = "rounded",
      },
      buf_options = {},
      win_options = {
        winblend = 10,
        winhighlight = "",
      },
      max_width = 80,
      max_height = 40,
    },
    builtin = {
      anchor = "NW",
      relative = "editor",
      border = "rounded",
      winblend = 10,
      winhighlight = "",
      width = nil,
      max_width = { 140, 0.8 },
      min_width = { 40, 0.2 },
      height = nil,
      max_height = 0.9,
      min_height = { 10, 0.2 },
      mappings = {
        ["<Esc>"] = "Close",
        ["<C-c>"] = "Close",
        ["<CR>"] = "Confirm",
      },
    },
  },
})
