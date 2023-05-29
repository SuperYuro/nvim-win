local opts = { silent = true, noremap = true }
local silents = { silent = true }

vim.g.mapleader = "<Space>"

-- Increment/Decrement
vim.keymap.set("n", "+", "<C-a>", opts)
vim.keymap.set("n", "-", "<C-x>", opts)

-- cursor manipulation like Emacs
vim.keymap.set("i", "<C-f>", "<Right>", silents)
vim.keymap.set("i", "<C-b>", "<Left>", silents)
vim.keymap.set("i", "<C-p>", "<Up>", silents)
vim.keymap.set("i", "<C-n>", "<Down>", silents)

vim.keymap.set("i", "<C-a>", "<Home>", silents)
vim.keymap.set("i", "<C-e>", "<End>", silents)

vim.keymap.set("i", "<A-f>", "<C-Right>", silents)
vim.keymap.set("i", "<A-b>", "<C-Left>", silents)

-- Split buffer
vim.keymap.set("n", "ss", ":split<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Move windows
vim.keymap.set("n", "sh", "<C-w>h", opts)
vim.keymap.set("n", "sj", "<C-w>j", opts)
vim.keymap.set("n", "sk", "<C-w>k", opts)
vim.keymap.set("n", "sl", "<C-w>l", opts)

-- Tab
vim.keymap.set("n", "<C-t>", ":tabedit<space>")
vim.keymap.set("n", "<Tab>", ":tabnext")
vim.keymap.set("n", "<S-Tab>", ":tabprevious")

-- Redo with shift+u
vim.keymap.set("n", "U", "<C-r>", opts)

-- Don'y yank with x
vim.keymap.set("n", "x", '"_x')

-- Exit terminal insert mode with Esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
