-- providers must be set before plugins
pcall(require, "config.providers")

-- Core config
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Plugins
require("plugins.init")
