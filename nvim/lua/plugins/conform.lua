return {
	"stevearc/conform.nvim",
	-- lazy = false,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		-- format_on_save = {		-- These options will be passed to conform.format()
		-- 	timeout_ms = 500,
		-- 	lsp_format = "fallback"
		-- },
	},
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({
					timeout_ms = 500,
					lsp_format = "fallback",
				})
			end,
			desc = "Format current file using conform defined formatter",
		},
	},
}
