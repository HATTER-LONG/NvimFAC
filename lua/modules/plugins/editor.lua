local editor = {}

editor["rainbowhxch/accelerated-jk.nvim"] = {
    lazy = true,
    event = "VeryLazy",
    config = require("editor.accelerated-jk"),
}
editor["max397574/better-escape.nvim"] = {
    lazy = true,
    event = { "CursorHold", "CursorHoldI" },
    config = require("editor.better-escape"),
}
return editor
