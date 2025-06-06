local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
local lazy_plugins = {
	require("popo.theme"),
	require("popo.formatting"),
	require("popo.lsp"),
	"folke/which-key.nvim",
	"folke/neodev.nvim",
	"tpope/vim-fugitive",
	"mbbill/undotree",
	"norcalli/nvim-colorizer.lua",
	"NvChad/nvim-colorizer.lua",
	--[[ { -- Magick rocks issue
		"3rd/image.nvim",
		opts = {},
	}, ]]
	{
		"theprimeagen/harpoon",
		config = function()
			require("harpoon").setup({
				global_settings = {
					-- global configs
					-- mark_branch = true, For branch specific marks
				},
			})
		end,
	},
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			bigfile = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			-- scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = { -- Comments current line
				line = "<C-_>",
				block = "<C-b>",
			},
			opleader = { -- Can select block to comment
				line = "gc",
				block = "gb",
			},
		},
		lazy = false,
	},
}

-- Setting up lazy plugins
require("lazy").setup(lazy_plugins)
