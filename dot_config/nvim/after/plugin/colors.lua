-- require("rose-pine").setup({
-- 	disable_background = true,
-- })

vim.cmd.colorscheme("gruber-darker")

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalInactive", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#525252", bg = "none" })
	-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
	vim.api.nvim_set_hl(0, "diffAdded", { fg = "#50FA7B" })
	vim.api.nvim_set_hl(0, "diffRemoved", { fg = "#FA5057" })
	-- vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#000000" })
	-- vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#ff0000" })
	-- vim.api.nvim_set_hl(0, "TreesitterContextSeparator", { bg = "#00ff00" })
	-- vim.api.nvim_set_hl(0, "TreesitterContextBottom", { bg = "#0000ff" })
  -- vim.api.nvim_set_hl(0, "Folded", { bg = "#453935", fg = "#f6c177" })

	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = oxocarbon.base02, bg = oxocarbon.base02 })
	-- vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = oxocarbon.base05, bg = oxocarbon.base02 })
	-- vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = oxocarbon.base08, bg = oxocarbon.base02 })
	-- vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = oxocarbon.none, bg = oxocarbon.blend })
	-- vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = oxocarbon.base02, bg = oxocarbon.base12 })
	-- vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = oxocarbon.base02, bg = oxocarbon.base11 })
	-- vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = oxocarbon.blend, bg = oxocarbon.blend })
	-- vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#ee5396", bg = "#161616" })
	-- vim.api.nvim_set_hl(0, "TelescopePreviewLine", { fg = oxocarbon.none, bg = oxocarbon.base01 })
end

-- ColorMyPencils()
