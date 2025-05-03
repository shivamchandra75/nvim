return{
  'echasnovski/mini.indentscope',
  version = '*',
  event = { "BufReadPre", "BufNewFile" },
  enabled = vim.g.vscode == nil,
  pin = true,
  config = function()
    require("mini.indentscope").setup({
      symbol = "▎",
    })
  end,
}
