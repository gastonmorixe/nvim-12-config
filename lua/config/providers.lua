-- Configure Neovim language providers early
-- Python (required by molten-nvim)
local py = vim.fn.exepath("python3")
if py and #py > 0 then
  -- Only set if pynvim is available to avoid startup errors
  local out = vim.fn.system({ py, "-c", "import pynvim" })
  if vim.v.shell_error == 0 then
    vim.g.python3_host_prog = py
  else
    vim.g.loaded_python3_provider = 0 -- Disable if pynvim missing
  end
else
  vim.g.loaded_python3_provider = 0
end

-- Optionally silence providers you don't use
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
