return {
    "rmagatti/auto-session",
    opts = {
        lazy_support = true,
        auto_save = false,
        auto_restore = false,
        auto_create = false,
        suppressed_dirs = {},
        -- HACK: delete sessions after 4 days
        purge_after_minutes = 5760, -- Sessions older than purge_after_minutes will be deleted asynchronously on startup, (time format days * 24 * 60) 
    },
    keys = {
        { "<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session for cwd" },  -- restore last workspace session for current directory
        { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for auto session root dir" }  -- save workspace session for current working directory
    },
}
