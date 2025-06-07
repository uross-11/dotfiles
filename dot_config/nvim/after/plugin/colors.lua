function ColorMyPencils(color)
	color = color or "gruber-darker" -- "rose-pine" -- "oxocarbon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalInactive", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "diffAdded", { fg = "#50FA7B" })
	vim.api.nvim_set_hl(0, "diffRemoved", { fg = "#FA5057" })
  vim.api.nvim_set_hl(0, "Folded", { bg = "#453935", fg = "#f6c177" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
end

ColorMyPencils()
