local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup(
{ 
  transparent_background = false,
  term_colors = false,
  styles = {
    comments = "NONE",
    conditionals = "italic",
    loops = "italic",
    functions = "bold",
    keywords = "italic",
    strings = "NONE",
    variables = "bold",
    numbers = "NONE",
    booleans = "italic",
    properties = "bold",
    types = "bold",
    operators = "NONE",
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = "NONE",
        hints = "NONE",
        warnings = "NONE",
        information = "NONE",
      },
      underlines = {
        errors = "underline",
        hints = "underline",
        warnings = "underline",
        information = "underline",
      },
    },
    lsp_trouble = false,
    cmp = true,
    lsp_saga = false,
    gitgutter = false,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = false,
      transparent_panel = false,
    },
    neotree = {
      enabled = false,
      show_root = false,
      transparent_panel = false,
    },
    which_key = false,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    dashboard = true,
    neogit = false,
    vim_sneak = false,
    fern = false,
    barbar = false,
    bufferline = true,
    markdown = true,
    lightspeed = false,
    ts_rainbow = false,
    hop = false,
    notify = true,
    telekasten = true,
    symbols_outline = true,
  }
})

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]
