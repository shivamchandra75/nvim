return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	enabled = vim.g.vscode == nil,
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
			},
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = false,
			-- 	timeout_ms = 1000,
			-- },
		})

		vim.keymap.set({ "n", "v" }, "<leader>mk", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})

      -- Exit visual mode if in visual mode
      if vim.fn.mode() == 'v' or vim.fn.mode() == 'V' or vim.fn.mode() == '^V' then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
      end

		end, { desc = "Format file or range (in visual mode)" })
	end,
}
