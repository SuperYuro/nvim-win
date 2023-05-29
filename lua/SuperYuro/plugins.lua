local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Colorscheme
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        undercurl = true,
        commentStyle = { italic = true },
        transparent = true,
        dimInactive = true,
        terminalColors = true,
        theme = "dragon",
        colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
      })
      vim.cmd([[colorscheme kanagawa]])
    end,
  },

  -- Jump anywhere
  {
    "phaazon/hop.nvim",
    branch = "v2",
    keys = { { "<Space>", mode = "n" } },
    config = function()
      require("hop").setup()
      vim.keymap.set("n", "<Space><Space>", ":HopWord<CR>", { silent = true, noremap = true })
    end,
  },

  -- Useful plugins
})
