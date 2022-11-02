local catppuccin = require("catppuccin")

catppuccin.setup({
  flavour = "frappe", -- latte, frappe, macchiato, mocha
  integrations = {
    treesitter = true,
    mason = true,
    neotree = true,
    cmp = true,
    telescope = true,

  },
  styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
      },
--   background = { -- :h background
--       light = "latte",
--       dark = "mocha",
--   },
--   compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
--   transparent_background = false,
--   term_colors = false,
--   dim_inactive = {
--       enabled = false,
--       shade = "dark",
--       percentage = 0.15,
--   },
--   styles = {
--       comments = { "italic" },
--       conditionals = { "italic" },
--       loops = {},
--       functions = {},
--       keywords = {},
--       strings = {},
--       variables = {},
--       numbers = {},
--       booleans = {},
--       properties = {},
--       types = {},
--       operators = {},
--   },
--   color_overrides = {},
--   custom_highlights = {},
--   integrations = {
--       cmp = true,
--       gitsigns = true,
--       nvimtree = true,
--       telescope = true,
--       treesitter = true,
--       -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--   },
})
vim.api.nvim_command "colorscheme catppuccin"
