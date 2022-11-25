local status, comments = pcall(require, "Comment")

if not status then
	return
end

comments.setup({
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
