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
tool["gelguy/wilder.nvim"] = {
    lazy = true,
    event = "CmdlineEnter",
    config = require("tool.wilder"),
    dependencies = { "romgrk/fzy-lua-native" },
}
tool["nvim-telescope/telescope.nvim"] = {
    lazy = true,
    cmd = "Telescope",
    config = require("tool.telescope"),
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-live-grep-args.nvim" },
        { "nvim-telescope/telescope-fzf-native.nvim",    build = "make" },
        {
            "nvim-telescope/telescope-frecency.nvim",
            dependencies = {
                { "kkharji/sqlite.lua" },
            }
        },
        {
            "ahmedkhalf/project.nvim",
            event = { "CursorHold", "CursorHoldI" },
            config = require("tool.project"),
        },
        { 'nvim-telescope/telescope-file-browser.nvim' },
    },
}
return tool
