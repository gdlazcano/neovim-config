vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("n", "<leader>e", ":NeoTreeFocusToggle<CR>")
vim.keymap.set("n", "<leader>h", ":nohl<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>fc", ":Telescope live_grep<CR>")

-- move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- bufferline
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", ">b", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "<b", ":BufferLineMovePrev<CR>")

vim.keymap.set("n", "<C-c>", function()
	require("bufdelete").bufdelete(0, false)
end)

-- gitsigns
local status, gitsigns = pcall(require, "gitsigns")
if not status then
	return
end

vim.keymap.set("n", "<leader>hd", gitsigns.diffthis)
