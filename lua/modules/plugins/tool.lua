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
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-live-grep-args.nvim" },
        { 'nvim-telescope/telescope-fzy-native.nvim' },
        { 'nvim-telescope/telescope-file-browser.nvim' },
    },
}
return tool
