-- bootstrap lazy.nvim, LazyVim and your plugins
vim.env.PATH = "/opt/homebrew/opt/libpq/bin:" .. vim.env.PATH
require("config.lazy")
