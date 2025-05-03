-- local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettierd,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettierd,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettierd,
		},
    html = {
      require("formatter.filetypes.html").prettierd,
    },
    go = {
      require("formatter.filetypes.go").gofumpt,
    },
		-- c = {
		-- 	require("formatter.filetypes.c").clangformat,

		-- 	function()
		-- 		return {
		-- 			exe = "clang-format",
		-- 			args = {
		-- 				"-style=gnu",
		-- 				util.escape_path(util.get_current_buffer_file_path()),
		-- 			},
		-- 		}
		-- 	end,
		-- },
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
