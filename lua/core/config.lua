-- no wrap
vim.opt.wrap = false

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tab settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursorline
vim.opt.cursorline = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- disable swap files
vim.opt.swapfile = false

-- backspace
vim.opt.backspace = "indent,eol,start"

vim.opt.iskeyword:append("-")
vim.opt.clipboard = "unnamed"

vim.g.copilot_filetypes = {
	["markdown"] = true,
	["yaml"] = true,
}

-- make transparent background
vim.cmd([[
augroup transparent_background
  autocmd!
  autocmd ColorScheme * hi Normal ctermbg=none guibg=none
]])

vim.cmd([[
  au BufNewFile,BufRead *.ejs set filetype=html
]])
