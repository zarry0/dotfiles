return {
	"cpea2506/one_monokai.nvim",
	enabled = true,
	config = function()
		require("one_monokai").setup({
			transparent = true,	
		})
vim.cmd("colorscheme one_monokai")
	end
}	
