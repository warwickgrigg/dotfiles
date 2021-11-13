require "paq" {
  "savq/paq-nvim", -- Let Paq manage itself
  "neovim/nvim-lspconfig", -- Mind the semi-colons
  "kyazdani42/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  "ckipp01/stylua-nvim",
}

require("nvim-tree").setup {}

-- key bindings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require('stylua-nvim').format_file()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<cr>", opts)

-- Behaviours

local set = vim.opt

-- Set the behaviour of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

-- Wrap on cursor keys
set.ww = "<,>,[,]"

-- mouse for all modes
set.mouse = "a"
