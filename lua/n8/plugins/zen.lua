local zen_status_ok, zen = pcall(require, "true-zen")
if not zen_status_ok then
	return
end

local twilight_status_ok, twilight = pcall(require, "twilight")
if not twilight_status_ok then
	return
end

zen.setup({
    integrations = {
        twilight = true,
        lualine = true,
    }
})

twilight.setup()

