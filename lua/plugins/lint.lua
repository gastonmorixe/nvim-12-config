-- Lint Configuration
local lint = require("lint")
lint.linters_by_ft = {
  swift = { "swiftlint" },
  python = { "ruff" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  group = vim.api.nvim_create_augroup("lint", { clear = true }),
  callback = function()
    local ft = vim.bo.filetype
    if lint.linters_by_ft[ft] then lint.try_lint() end
  end,
})

vim.keymap.set("n", "<leader>l", function() lint.try_lint() end, { desc = "Trigger linting" })
