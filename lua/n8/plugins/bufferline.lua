local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	-- highlights = require("catppuccin.groups.integrations.bufferline").get()
})
