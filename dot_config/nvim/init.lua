require("core.options")
require("core.keymaps")
require("core.snippets")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- require 'plugins.bufferline',
	-- require 'plugins.lualine',
	-- require 'plugins.none-ls',
	-- require 'plugins.gitsigns',
	-- require 'plugins.alpha',
	-- require 'plugins.indent-blankline',
	-- require 'plugins.misc',
	-- require 'plugins.comment',

	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.color"),
	require("plugins.formatter"),
	require("plugins.fugitive"),
	require("plugins.harpoon"),
	-- require 'plugins.refactoring',
	-- require 'plugins.trouble',
	-- require 'plugins.undotree',
})

-- use("theprimeagen/refactoring.nvim")
-- use({
-- 	"folke/trouble.nvim",
-- 	config = function()
-- 		require("trouble").setup({
-- 			icons = false,
-- 		})
-- 	end,
-- })
-- use("mbbill/undotree")
