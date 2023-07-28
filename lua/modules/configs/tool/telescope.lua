return function()
	local icons = { ui = require("modules.utils.icons").get("ui", true) }
    local fb_actions = require('telescope').extensions.file_browser.actions
	require("telescope").setup({
		defaults = {
			vimgrep_arguments = {
				"rg",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
			},
			pickers = {
				find_files = {
					-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
					find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
				},
			},
			initial_mode = "insert",
			prompt_prefix = " " .. icons.ui.Telescope .. " ",
			selection_caret = icons.ui.ChevronRight,
			scroll_strategy = "limit",
			results_title = false,
			layout_strategy = "horizontal",
			path_display = { "absolute" },
			selection_strategy = "reset",
			sorting_strategy = "ascending",
			color_devicons = true,
			file_ignore_patterns = { ".git/", ".cache", "build/", "%.class", "%.pdf", "%.mkv", "%.mp4", "%.zip" },
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
					results_width = 0.8,
				},
				vertical = {
					mirror = false,
				},
				width = 0.85,
				height = 0.92,
				preview_cutoff = 120,
			},
			file_previewer = require("telescope.previewers").vim_buffer_cat.new,
			grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
			qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		},
		extensions = {
			fzy_native = {
				override_generic_sorter = false,
				override_file_sorter = true,
			},
			file_browser = {
				mappings = {
					['n'] = {
						['c'] = fb_actions.create,
						['r'] = fb_actions.rename,
						['d'] = fb_actions.remove,
						['o'] = fb_actions.open,
						['u'] = fb_actions.goto_parent_dir,
					},
				},
			},
		},
	})

	require("telescope").load_extension("live_grep_args")
	require("telescope").load_extension("app")
	require('telescope').load_extension('dotfiles')
	require('telescope').load_extension('fzy_native')
	require('telescope').load_extension('file_browser')
end
