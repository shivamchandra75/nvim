return {
  "lukas-reineke/indent-blankline.nvim",
  enabled = vim.g.vscode == nil,
  pin = true,
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    scope = { enabled = false },
    indent = { char = "▎" },
  },
}
