local ui = {}

ui["rebelot/kanagawa.nvim"] = {
    lazy = false,
    config = require("ui.kanagawa"),
}

ui["catppuccin/nvim"] = {
    lazy = false,
    config = require("ui.catppuccin"),
}

ui["nvim-lualine/lualine.nvim"] = {
    lazy = true,
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = require("ui.lualine"),
}

ui["akinsho/bufferline.nvim"] = {
    lazy = true,
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = require("ui.bufferline"),
}

ui["rcarriga/nvim-notify"] = {
    lazy = true,
    event = "VeryLazy",
    config = require("ui.notify"),
}
ui['glepnir/dashboard-nvim'] =
{
    event = 'VimEnter',
    config = require("ui.dashboard-nvim"),
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
return ui
