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
    c = {
      require("formatter.filetypes.c").clangformat,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})
