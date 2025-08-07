return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {"<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files within current working dir"},
    {"<leader>fc", function() require('fzf-lua').files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find files inside neovim config"},
    {"<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "Search inside open buffers"},
    {"<leader>fs", "<cmd>FzfLua live_grep<cr>", desc = "Live grep file content inside current dir"},
    {"<leader>/", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Live grep current file"},
    {"<leader>fv", "<cmd>FzfLua grep_visual<cr>", desc = "Search selected text"},
    {"<leader>fr", "<cmd>FzfLua registers<cr>", desc = "Find inside registers"},
    {"<leader>fz", "<cmd>FzfLua builtin<cr>", desc = "Find a particular fzf finder (i.e. fzf git branches)"},
  }
}
