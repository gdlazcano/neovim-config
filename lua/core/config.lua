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

-- backspace
vim.opt.backspace = "indent,eol,start"

vim.opt.iskeyword:append("-")
vim.opt.clipboard = "unnamed"

-- make transparent background
vim.cmd([[
augroup transparent_background
  autocmd!
  autocmd ColorScheme * hi Normal ctermbg=none guibg=none
]])
