local status_ok, fterm = pcall(require, "FTerm")
if not status_ok then
  return
end



local gitui = fterm:new({
    ft = 'fterm_gitui', -- You can also override the default filetype, if you want
    cmd = "gitui",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})

-- Use this to toggle gitui in a floating terminal
vim.keymap.set('n', '<A-g>', function()
    gitui:toggle()
end)
