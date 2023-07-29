local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

local mapping = {}
function mapping.lsp(buf)
	local map= {
		-- LSP-related keymaps, work only when event = { "InsertEnter", "LspStart" }
		["n|<leader>li"] = map_cr("LspInfo"):with_buffer(buf):with_desc("lsp: Info"),
		["n|<leader>lr"] = map_cr("LspRestart"):with_buffer(buf):with_nowait():with_desc("lsp: Restart"),
		-- normally vim.lsp
		["n|g["] = map_callback(function()
			vim.diagnostic.goto_prev()
		end):with_desc("lsp: Prev diagnostic"),
		["n|g]"] = map_callback(function()
			vim.diagnostic.goto_next()
		end):with_desc("lsp: Next diagnostic"),
		["n|gs"] = map_callback(function()
			vim.lsp.buf.signature_help()
		end):with_buffer(buf):with_desc("lsp: Signature help"),
		["n|gd"] = map_callback(function()
			vim.lsp.buf.definition()
		end):with_buffer(buf):with_desc("lsp: Goto definition"),
		["n|gD"] = map_callback(function()
			vim.lsp.buf.declaration()
		end):with_buffer(buf):with_desc("lsp: Show declaration"),
		["n|gi"] = map_callback(function()
			vim.lsp.buf.implementation()
		end):with_buffer(buf):with_desc("lsp: Show implementation"),
		["n|K"] = map_callback(function()
			vim.lsp.buf.hover()
		end):with_buffer(buf):with_desc("lsp: Show doc"),
		["nv|<leader>ca"] = map_callback(function()
			vim.lsp.buf.code_action()
		end):with_buffer(buf):with_desc("lsp: Code action for cursor"),
		["n|gr"] = map_callback(function()
			vim.lsp.buf.rename()
		end):with_buffer(buf):with_desc("lsp: Rename symbol"),
		["n|gh"] = map_callback(function()
			vim.lsp.buf.references()
		end):with_buffer(buf):with_desc("lsp: Show reference"),
		["n|gf"] = map_callback(function()
			vim.lsp.buf.format { async = true }
		end):with_buffer(buf):with_desc("lsp: Format by lsp"),
		-- lspsaga
		-- ["n|go"] = map_cr("Lspsaga outline"):with_buffer(buf):with_desc("lsp: Toggle outline"),
		-- ["n|g["] = map_cr("Lspsaga diagnostic_jump_prev"):with_buffer(buf):with_desc("lsp: Prev diagnostic"),
		-- ["n|g]"] = map_cr("Lspsaga diagnostic_jump_next"):with_buffer(buf):with_desc("lsp: Next diagnostic"),
		-- ["n|<leader>ld"] = map_cr("Lspsaga show_line_diagnostics ++unfocus")
		-- 	:with_buffer(buf)
		-- 	:with_desc("lsp: Line diagnostic"),
		-- ["n|gs"] = map_callback(function()
		-- 	vim.lsp.buf.signature_help()
		-- end):with_desc("lsp: Signature help"),
		-- ["n|gr"] = map_cr("Lspsaga rename"):with_buffer(buf):with_desc("lsp: Rename in file range"),
		-- ["n|gR"] = map_cr("Lspsaga rename ++project"):with_buffer(buf):with_desc("lsp: Rename in project range"),
		-- ["n|K"] = map_cr("Lspsaga hover_doc"):with_buffer(buf):with_desc("lsp: Show doc"),
		-- ["nv|ga"] = map_cr("Lspsaga code_action"):with_buffer(buf):with_desc("lsp: Code action for cursor"),
		-- ["n|gd"] = map_cr("Lspsaga peek_definition"):with_buffer(buf):with_desc("lsp: Preview definition"),
		-- ["n|gD"] = map_cr("Lspsaga goto_definition"):with_buffer(buf):with_desc("lsp: Goto definition"),
		-- ["n|gh"] = map_cr("Lspsaga finder"):with_buffer(buf):with_desc("lsp: Show reference"),
		-- ["n|<leader>ci"] = map_cr("Lspsaga incoming_calls"):with_buffer(buf):with_desc("lsp: Show incoming calls"),
		-- ["n|<leader>co"] = map_cr("Lspsaga outgoing_calls"):with_buffer(buf):with_desc("lsp: Show outgoing calls"),
	}
	bind.nvim_load_mapping(map)
end

return mapping
