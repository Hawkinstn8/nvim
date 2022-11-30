local status_ok, lspsaga = pcall(require, "lspsaga")
if not status_ok then
	return
end

lspsaga.init_lsp_saga({
    custom_kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
    code_action_icon = "🔧",
    code_action_lightbulb = {
        virtual_text = false,
    },
})