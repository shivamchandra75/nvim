return {
  "numToStr/Comment.nvim",
  enabled = vim.g.vscode == nil,
  pin = true,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })
    -- Keymaps for line and block comments
    vim.keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { desc = "Toggle line comment" })
    vim.keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = "Toggle line comment (visual)" })
    vim.keymap.set("n", "<leader>?", "<cmd>lua require('Comment.api').toggle.blockwise.current()<CR>", { desc = "Toggle block comment" })
    vim.keymap.set("v", "<leader>?", "<esc><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>", { desc = "Toggle block comment (visual)" })
  end,
}
