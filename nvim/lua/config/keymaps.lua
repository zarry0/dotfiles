-- 'n' == normal mode, 'v' == visual mode

-- vim.keymap.set("n", "<leader>xx", "<cmd>source %<CR>", {desc = "Reloads the current config file (source %)"})
-- vim.keymap.set("n", "<leader>x", ":.lua<CR>", {desc = "Runs the current line as lua code"})
-- vim.keymap.set("v", "<leader>x", ":lua<CR>", {desc = "Runs the selected text as lua code"})

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')   -- Clear highlights on search when pressing <Esc> in normal mode

vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end, { desc = "Open dioagnostics in float" })

vim.keymap.set('n', '<leader>h', '<cmd>split<cr>', { desc = 'Open horizontal split' })
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<cr>', { desc = 'Open vertical split' })
vim.keymap.set('n', '<C-o>', '<C-w><C-o>', { desc = 'Close all other windows and [o]nly keep current' })
vim.keymap.set('n', '<C-c>', '<C-w><C-c>', { desc = 'Close current window' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<BS>H', '<C-w>H', { desc = 'Move left window' })
vim.keymap.set('n', '<BS>L', '<C-w>L', { desc = 'Move right window' })
vim.keymap.set('n', '<BS>J', '<C-w>J', { desc = 'Move lower window' })
vim.keymap.set('n', '<BS>K', '<C-w>K', { desc = 'Move upper window' })

-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- keymap for creating a new tab
vim.keymap.set('n', '<C-t>t', '<cmd>tabnew<cr>', { desc = 'Open a new empty tab' })
vim.keymap.set('n', '<C-t>c', '<cmd>tabclose<cr>', { desc = 'Close current tab' })

-- Copy filepath to the clipboard
vim.keymap.set("n", "<leader>yp", function()
  local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
  vim.fn.setreg("+", filePath) -- Copy the file path to the clipboard register
  print("File path copied to clipboard: " .. filePath) -- Optional: print message to confirm
end, { desc = "Copy file path to clipboard" })

-- Toggle LSP diagnostics visibility
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>ds", function()
    isLspDiagnosticsVisible = not isLspDiagnosticsVisible
    vim.diagnostic.config({
        virtual_text = isLspDiagnosticsVisible,
        underline = isLspDiagnosticsVisible
    })
end, { desc = "Toggle LSP diagnostics" })

-- for horizontal scroll (with set nowrap and sidescrolloff = int)
vim.keymap.set('n', 'zl', '20zl', { desc = 'Scroll 20 characters ->' })
vim.keymap.set('n', 'zh', '20zh', { desc = 'Scroll 20 characters <-' })
-- +-------------------------------+
-- |                               |
-- |c-e (keep cursor)              |
-- |H(igh)             zt (top)    |
-- |                   ^           |
-- |           ze      |      zs   |
-- |M(iddle)  zh/zH <--zz--> zl/zL |
-- |                   |           |
-- |                   v           |
-- |L(ow)              zb (bottom) |
-- |c-y (keep cursor)              |
-- |                               |
-- +-------------------------------+
