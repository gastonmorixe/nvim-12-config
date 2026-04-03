-- Mini.ai Configuration (Better text objects)
require("mini.ai").setup({
  n_lines = 500,
  custom_textobjects = {
    o = require("mini.ai").gen_spec.treesitter({
      a = { "@block.outer", "@conditional.outer", "@loop.outer" },
      i = { "@block.inner", "@conditional.inner", "@loop.inner" },
    }, {}),
    f = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
    c = require("mini.ai").gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
    t = { "<([%p%w]-)%f[^<%w][^<>]- >.-</%1 >", "<([%p%w]-)%f[^<%w][^<>]- />" },
  },
})
