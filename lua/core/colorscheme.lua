local status, _ = pcall(vim.cmd, "colorscheme rose-pine")

if not status then
	return
end
