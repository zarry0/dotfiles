return {
    -- Mini pairs
    { "echasnovski/mini.pairs", version = "*", opts = {} },

    -- Surround
            -- mappings = {
            --     add = 'sa',            -- Add surrounding in Normal and Visual modes
            --     delete = 'ds',         -- Delete surrounding
            --     find = 'sf',           -- Find surrounding (to the right)
            --     find_left = 'sF',      -- Find surrounding (to the left)
            --     highlight = 'sh',      -- Highlight surrounding
            --     replace = 'sr',        -- Replace surrounding
            --     update_n_lines = 'sn', -- Update `n_lines`
            --
            --     suffix_last = 'l',     -- Suffix to search with "prev" method
            --     suffix_next = 'n',     -- Suffix to search with "next" method
            -- },
    -- {
    --     "echasnovski/mini.surround",
    --     event = { "BufReadPre", "BufNewFile" },
    --     opts = {
    --     },
    -- },

    -- Split & join
    {
        "echasnovski/mini.splitjoin",
        config = function()
            local miniSplitJoin = require("mini.splitjoin")
            miniSplitJoin.setup({
                mappings = { toggle = "" }, -- Disable default mapping
            })
            vim.keymap.set({ "n", "x" }, "gj", function() miniSplitJoin.join() end, { desc = "Join arguments" })
            vim.keymap.set({ "n", "x" }, "gk", function() miniSplitJoin.split() end, { desc = "Split arguments" })
        end,
    },
}
