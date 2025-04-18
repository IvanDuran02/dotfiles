return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				sync_install = true,
				auto_install = true,
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"typescript",
					"javascript",
					"html",
					"tsx",
					"go",
					"rust",
					"css",
					"prisma",
					"cpp",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"ThePrimeagen/vim-be-good",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("mason").setup({
				opts = {
					ensure_installed = {
						"prettierd",
						"eslint-lsp",
						"tailwindcss-language-server",
						"typescript-language-server",
					},
					automatic_installation = true,
				},
			})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"golangci_lint_ls",
					"html",
					"marksman",
					"cssls",
					"clangd", -- C++
					"zls", -- Zig
					"pyright",
					"gopls",
				},
				automatic_installation = true,
				handlers = {
					function(server_name)
						local nvim_lsp = require("lspconfig")

						-- Set up TypeScript server
						if server_name == "ts_ls" then
							nvim_lsp.ts_ls.setup({
								-- other configuration options...

								-- Set the tab width for TypeScript files
								settings = {
									typescript = {
										tabSize = 4,
									},
									javascript = {
										tabSize = 4,
									},
								},
							})
						else
							-- Set up other language servers
							nvim_lsp[server_name].setup({
								on_attach = attach,
								-- other configuration options...
							})
						end
					end,
				},
			})

			-- Auto complete stuff
			local cmp = require("cmp")
			local cmp_select = { behavior = cmp.SelectBehavior.Select }
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- for luasnip.
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})

			vim.diagnostic.config({
				update_in_insert = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			})
		end,
	},
}
