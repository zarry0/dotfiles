return {
	"projekt0n/github-nvim-theme",
	name = 'github-theme',
	priority = 1000,
	enabled = false,
	config = function()
		require('github-theme').setup({
			dim_inactive = true,
			options = {
				transparent = true,
				styles = {
					comments = 'italic',
					keywords = 'bold',
					types = 'bold'
				}
			}
		})
		-- vim.cmd("colorscheme github_dark")
		vim.cmd("colorscheme github_dark_default")
		-- vim.cmd("colorscheme github_dark_dimmed")
		-- vim.cmd("colorscheme github_dark_high_contrast")
	end
}
