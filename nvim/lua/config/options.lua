local opt = vim.opt

-- Tab / indentation
opt.tabstop = 4     	-- how many spaces a tab character takes
opt.shiftwidth = 4  	-- how many spaces per indentation level (when pressing <,>,= or \t)
opt.softtabstop = 4 	-- how many spaces is tab in insertmode
opt.expandtab = true	-- convert tabs to spaces after opening a file
opt.smartindent = true	-- enables autoindentation
opt.autoindent = true   -- keep indentation from previous line
opt.wrap = false	    -- disables wrapping form long lines (see https://stackoverflow.com/questions/5989739/horizontal-navigation-in-long-lines)
opt.breakindent = true  -- enable break indent

-- Search
opt.incsearch = true	-- highlight search results (using / or :s) in real time
opt.ignorecase = true	-- ignore case when searching
opt.smartcase = true	-- if ignorecase=true, disable ignorecase if the search contains Uppercase letters
-- opt.hlsearch = false	-- disables permanent highlighting when searching
opt.inccommand = 'split'      -- Preview substitutions live, as you type 

-- Appearance
opt.relativenumber = true
opt.number = true
opt.termguicolors = true	-- full color support in the terminal
opt.signcolumn = 'yes:1'		-- shows the gutter on the left all the time to avoid width changes
opt.scrolloff = 10 		    -- Minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 10    -- Minimal number of screen columns to keep left and right of the cursor
opt.cursorline = true 	    -- highlight current row
opt.background = "dark"     -- or "light" for light mode
opt.showmode = false        -- don't show the current mode in the command bar (it is already visible in the status line)
-- opt.cmdheight = 0           -- Only shows the command line when needed
opt.list = false            -- Only show listchars whit :set list (:set nolist to disable)
opt.listchars = {
  tab = "› ",
  trail = "·",
  nbsp = "␣",
}
-- opt.fillchars:append { vert = " " }   -- remove borders from splits

-- Behaviour
opt.mouse = 'a'
opt.hidden = true 			-- change buffers without saving
opt.swapfile = false
opt.backup = false			-- disable swapfiles and backups
opt.backspace = "indent,eol,start"	-- allow backspace to work on those types of whitespace
opt.splitbelow = true			-- when opening an hsplit prefer the bottom halve to open it
opt.splitright = true			-- when opening an vsplit prefer the right side to open it
opt.autochdir = false			-- prevents vim to change the cwd to the dir of the currently opened file
opt.modifiable = true			-- always allows editing the current buffer
opt.encoding = "UTF-8"
opt.updatetime = 250

-- Config for undofiles
local undodir = vim.fn.expand("~/.vim/undodir")

-- Si no existe, crea el directorio
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- Asignar el directorio y activar undofile
opt.undodir = undodir
opt.undofile = true

-- Fold config with treesitter
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true








