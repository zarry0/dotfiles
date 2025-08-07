return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            bigfile = { enabled = true },
            picker = {
                enabled = true,
                -- https://github.com/folke/snacks.nvim/discussions/860
                sources = { explorer = { layout = { layout = { position = "right" } } } }, -- place explorer on the right side of the screen
            },
            input = { enabled = true },
            explorer = { enabled = true },
            quickfile = { enabled = true },
            terminal = { enabled = true },
            lazygit = { enabled = true },
        },
        keys = {
            { "<leader>e",  function() Snacks.explorer() end, desc = "Open snacks explorer" },
            { "<leader>t",  function() Snacks.terminal.toggle() end, desc = "Open snacks explorer" },
            { "<leader>lg",  function() Snacks.lazygit() end, desc = "Open lazygit" },
            { "<leader>gl",  function() Snacks.lazygit.log() end, desc = "Open git logs" },
        },
    },
    {
        "folke/todo-comments.nvim",
        event = { "BufReadPre", "BufNewFile" },
        keys = {
            { "<leader>pt", function() require("snacks").picker.todo_comments() end, desc = "Todo" },
            { "<leader>pT", function() require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) end, desc = "Todo/Fix/Fixme" },
        },
    }
}
