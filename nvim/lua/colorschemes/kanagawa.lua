return {
	"rebelot/kanagawa.nvim", 
	enabled = false,
	config = function()
		-- Default options:
		require('kanagawa').setup({
			compile = true,             -- enable compiling the colorscheme
			undercurl = true,            -- enable undercurls
			commentStyle = { italic = false },
			functionStyle = {},
			keywordStyle = { italic = false },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true,         -- do not set background color
			dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
			terminalColors = true,       -- define vim.g.terminal_color_{0,17}
			colors = {                   -- add/modify theme and palette colors
				palette = {},
				theme = {
						wave = {}, lotus = {}, dragon = {}, 
						all = { ui = { bg_gutter = "none" } } 
					},
			},
			overrides = function(colors) -- add/modify highlights
				return {}
			end,
			theme = "dragon",              -- Load "wave" theme
			-- background = {               -- map the value of 'background' option to a theme
			-- 	dark = "dragon",           -- try "dragon" !
			-- 	light = "lotus"
			-- },
		})

		-- setup must be called before loading
		-- vim.cmd("colorscheme kanagawa")
	end,
	-- build = function() 
	-- 	vim.cmd("KanagawaCompile")
	-- end
}
