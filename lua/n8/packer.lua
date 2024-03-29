local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	-- use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("numToStr/Comment.nvim") -- comment hotkeys

	use("moll/vim-bbye") --well behaved close buffer
	use("kyazdani42/nvim-web-devicons") --dependancy
	use("MunifTanjim/nui.nvim") --dependancy
	use("lewis6991/impatient.nvim") --faster load times via cache
	use("nvim-neo-tree/neo-tree.nvim") --folder explorer
	use("TimUntersberger/neogit")

	-- LuaLine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- noice makes vim.ui_attach pretty, also makes notifications pretty
	use({
		"folke/noice.nvim",		
		requires = {
		  "MunifTanjim/nui.nvim",
		  "rcarriga/nvim-notify",
		  }
	  })

	-- dressing makes vim.select pretty and integrates telescope
	-- use {'stevearc/dressing.nvim'}

	-- better lsp ui
	use "glepnir/lspsaga.nvim"

	-- label inactive buffers
	use ('ldelossa/buffertag')

	-- mini 
	use 'echasnovski/mini.cursorword'

	-- zen mode
	use ("Pocco81/true-zen.nvim")
	use ("folke/twilight.nvim")


	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use { "nvim-telescope/telescope-file-browser.nvim" }

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- Colorschemes
	use({ "catppuccin/nvim", as = "catppuccin" })
	-- use("akinsho/bufferline.nvim") --fancy buffer tabs
	use {
		"mcchrish/zenbones.nvim",
		requires = "rktjmp/lush.nvim"
	}
  use("cideM/yui")
  use("jaredgorski/fogbell.vim")
  use "Hawkinstn8/nofrils"
	-- LSP Support
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use ("jose-elias-alvarez/typescript.nvim")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

  -- Terminal
  use("numToStr/FTerm.nvim")

	-- git
	use("lewis6991/gitsigns.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
