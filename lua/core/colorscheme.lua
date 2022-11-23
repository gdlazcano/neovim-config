local status, _ = pcall(vim.cmd, "colorscheme horizon")

if not status then
	return
end
