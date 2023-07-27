local tool = {}
tool["nvim-tree/nvim-tree.lua"] = {
    lazy = true,
    cmd = {
        "NvimTreeToggle",
        "NvimTreeOpen",
        "NvimTreeFindFile",
        "NvimTreeFindFileToggle",
        "NvimTreeRefresh",
    },
    config = require("tool.nvim-tree"),
}

tool["nvim-telescope/telescope.nvim"] = {
    lazy = true,
    cmd = "Telescope",
    config = require("tool.telescope"),
    dependencies = {
        --     { "nvim-tree/nvim-web-devicons" },
        { "nvim-lua/plenary.nvim" },
        --     { "debugloop/telescope-undo.nvim" },
        --     {
        --         "ahmedkhalf/project.nvim",
        --         event = { "CursorHold", "CursorHoldI" },
        --         config = require("tool.project"),
        --     },
        --     { "nvim-telescope/telescope-fzf-native.nvim",    build = "make" },
        --     {
        --         "nvim-telescope/telescope-frecency.nvim",
        --         dependencies = {
        --             { "kkharji/sqlite.lua" },
        --         }
        --     },
        --     { "jvgrootveld/telescope-zoxide" },
        --     { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
}
return tool
