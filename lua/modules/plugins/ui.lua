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

return ui
