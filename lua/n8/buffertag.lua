local status_ok, buffertag = pcall(require, "buffertag")
if not status_ok then
  return
end

buffertag.setup({
    -- accepts any border options that `nvim_open_win` accepts.
    -- see ":help vim.api.nvim_open_win"
    border = "none",
    -- By default if the buffer name is too wide for the pane it's in, it will
    -- display and overlap the pane. By setting this to true, the buffer name will
    -- be truncated to fit within the pane, ensuring the floating window does not
    -- overlap any other panes.
    limit_width = false,
})