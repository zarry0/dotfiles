return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- opts = {},
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function()
      require("oil").setup({
     view_options = {
        show_hidden = true,
     },
    })

      -- Oil.nvim keymaps
      -- n = normal mode, v =visual mode
      vim.keymap.set("n", "-", "<cmd>Oil<cr>", {desc="Open parent directory in Oil.nvim"})
    end
  }
}
