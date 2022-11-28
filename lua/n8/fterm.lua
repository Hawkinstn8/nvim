local status_ok, fterm = pcall(require, "FTerm")
if not status_ok then
  return
end

fterm.setup()

vim.keymap.set('n', '<leader>ii', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>ii', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

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
