return {
	"projekt0n/github-nvim-theme",
	name = 'github-theme',
	priority = 1000,
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
	end
}
