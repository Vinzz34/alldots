vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.cmd("set nowrap")
vim.cmd("set nu")
vim.cmd("set rnu")
vim.cmd("set numberwidth:1")
vim.cmd("set signcolumn=yes:1")
vim.cmd("set undofile")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set mouse=a")
vim.cmd("set nohlsearch")
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.opt.fillchars = { eob = " " }
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set({ "i" }, "jj", "<Esc>")
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
vim.keymap.set("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })
vim.keymap.set("n", "<leader>/", "gc", { desc = "comment toggle", remap = true })
vim.keymap.set("n", "<S-Tab>", "<Cmd>bprevious<CR>")
vim.keymap.set("n", "<Tab>", "<Cmd>bnext<CR>")
vim.keymap.set("n", "<leader>x", "<Cmd>bdelete<CR>")
