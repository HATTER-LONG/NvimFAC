local api = vim.api
local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback
require("keymap.helpers")
local plug_map = {
    -- Plugin: nvim-tree
    ["n|<C-n>"] = map_cr("NvimTreeToggle"):with_noremap():with_silent():with_desc("filetree: Toggle"),
    ["n|<leader>nf"] = map_cr("NvimTreeFindFile"):with_noremap():with_silent():with_desc("filetree: Find file"),
    ["n|<leader>nr"] = map_cr("NvimTreeRefresh"):with_noremap():with_silent():with_desc("filetree: Refresh"),
    -- Plugin: telescope
    ["n|<C-p>"] = map_callback(function()
            _command_panel()
        end)
        :with_noremap()
        :with_silent()
        :with_desc("tool: Toggle command panel"),
    ["n|<leader>fw"] = map_callback(function()
			require("telescope").extensions.live_grep_args.live_grep_args()
		end)
		:with_noremap()
		:with_silent()
		:with_desc("find: Word in project"),
    ["n|<leader>fe"] = map_cu("Telescope oldfiles"):with_noremap():with_silent():with_desc("find: File by history"),
    ["n|<leader>ff"] = map_cu("Telescope find_files"):with_noremap():with_silent():with_desc("find: File in project"),
    ["n|<leader>fc"] = map_cu("Telescope colorscheme")
        :with_noremap()
        :with_silent()
        :with_desc("ui: Change colorscheme for current session"),
    ["n|<leader>fg"] = map_cu("Telescope git_files")
        :with_noremap()
        :with_silent()
        :with_desc("find: file in git project"),
    ["n|<leader>fb"] = map_cu("Telescope buffers"):with_noremap():with_silent():with_desc("find: Buffer opened"),
    ["n|<leader>fs"] = map_cu("Telescope grep_string"):with_noremap():with_silent():with_desc("find: Current word"),
    ["n|<leader>o"] = map_cu("Telescope lsp_document_symbols")
        :with_noremap()
        :with_silent()
        :with_desc("find: document symbols"),
    ["n|<leader>as"] = map_cu("Telescope lsp_dynamic_workspace_symbols")
        :with_noremap()
        :with_silent()
        :with_desc("find: all workspace symbols"),
    ["n|<leader>fd"] = map_cu("Telescope persisted"):with_noremap():with_silent():with_desc("find: Session"),
    ["n|<leader>e"] = map_callback(function()
         vim.cmd('Telescope file_browser')
        local esc_key = api.nvim_replace_termcodes('<Esc>', true, false, true)
         api.nvim_feedkeys(esc_key, 'n', false)
        end)
        :with_noremap()
        :with_silent()
        :with_desc("tool: Toggle command panel"),

}
bind.nvim_load_mapping(plug_map)
