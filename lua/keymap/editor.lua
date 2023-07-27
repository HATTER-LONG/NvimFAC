local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
local et = bind.escape_termcode

local plug_map = {
    -- Plugin: accelerate-jk
    ["n|j"] = map_callback(function()
        return et("<Plug>(accelerated_jk_gj)")
    end):with_expr(),
    ["n|k"] = map_callback(function()
        return et("<Plug>(accelerated_jk_gk)")
    end):with_expr(),
}
bind.nvim_load_mapping(plug_map)
