vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("SuperYuro.base")
require("SuperYuro.plugins")
require("SuperYuro.maps")

vim.opt.shell = "pwsh"
vim.opt.clipboard:prepend({ "unnamed", "unnamedplus" })
