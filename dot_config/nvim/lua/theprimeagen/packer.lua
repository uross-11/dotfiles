-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

  use "blazkowolf/gruber-darker.nvim"

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = false,
			})
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- use("nvim-treesitter/playground")
	use("theprimeagen/harpoon")
	use("theprimeagen/refactoring.nvim")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("tpope/vim-commentary")

	use("github/copilot.vim")
	use("mhartington/formatter.nvim")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- use("eandrju/cellular-automaton.nvim")
	-- use({
	-- 	"folke/todo-comments.nvim",
	-- 	dependencies = { "nvim-lua/plenary.nvim" },
	-- 	config = function()
	-- 		require("todo-comments").setup({
	-- 			keywords = {
	-- 				FIX = { icon = "F" },
	-- 				TODO = { icon = "T" },
	-- 				HACK = { icon = "H" },
	-- 				WARN = { icon = "W" },
	-- 				PERF = { icon = "P" },
	-- 				NOTE = { icon = "N" },
	-- 				TEST = { icon = "T" },
	-- 			},
	-- 		})
	-- 	end,
	-- })
	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})
	-- use("nvim-treesitter/nvim-treesitter-context")
	-- use("folke/zen-mode.nvim")
	-- use("laytan/cloak.nvim")
end)
