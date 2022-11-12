local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed!")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- plugin manager
	use("github/copilot.vim") -- code autocomplete
	use("neovim/nvim-lspconfig") -- language server protocol
	use("williamboman/mason.nvim") -- LSP manager
	use("williamboman/mason-lspconfig.nvim") -- LSP manager config
	--    use 'prettier/vim-prettier'
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" } },
	}) -- file finder
	use("ggandor/lightspeed.nvim",{
    }) -- fast cursor movement
	-- use 'l3mon4d3/luasnip' -- snippets
	use("glepnir/lspsaga.nvim") -- lsp uis
	-- use 'hrsh7th/cmp-buffer' -- buffer source
	-- use 'hrsh7th/cmp-nvim-lsp' -- lsp source for nvim-cmp
	-- use 'hrsh7th/nvim-cmp' -- autocompletion
	use({ "nvim-treesitter/nvim-treesitter", run = ":tsupdate" }) -- treesitter
	use("jose-elias-alvarez/null-ls.nvim") -- null-ls for lsp
	use("muniftanjim/prettier.nvim") -- prettier plugin
	use("onsails/lspkind-nvim") -- vscode-like pictograms for neovim lsp completion items
	use({ "crag666/code_runner.nvim", requires = "nvim-lua/plenary.nvim" })

	-- which key plugin
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({
                -- change timeout
                timeout = 100,

	            })
		end,
	})

    -- harpoon
    use({
        "theprimeagen/harpoon",
        config = function()
            require("harpoon").setup({
                global_settings = {
                    save_on_toggle = false,
                    save_on_change = true,
                },
                projects = {
                    ["/home/username/projects"] = {
                        term = {},
                        files = {},
                        git = {},
                    },
                },
            })
        end,
    })

	-- color theme 1 (tokyonight-night)
	-- use {
	--     'folke/tokyonight.nvim',
	--     requires = { 'tjdevries/colorbuddy.nvim' }
	-- }
	--
	-- vim.cmd [[colorscheme tokyonight-night]]

	-- color theme 2 (gruvbox)
	-- use 'morhetz/gruvbox'
	-- vim.cmd [[colorscheme gruvbox]]

	-- -- color theme 3 (everforest-hard)
	-- use 'sainnhe/everforest'
	-- vim.g.everforest_background = 'soft'
	-- vim.g.everforest_enable_italic = 1
	-- vim.g.everforest_diagnostic_text_highlight = 1
	-- vim.g.everforest_better_performance = 1
	-- vim.cmd [[colorscheme everforest]]

	-- color theme 4 (sonokai)
	-- use 'sainnhe/sonokai'
	-- vim.g.sonokai_style = 'atlantis'
	-- vim.g.sonokai_enable_italic = 1
	-- vim.g.sonokai_diagnostic_text_highlight = 1
	-- vim.g.sonokai_better_performance = 1
	-- vim.cmd [[colorscheme sonokai]]

	-- color theme 5 (onedark)
	-- use 'navarasu/onedark.nvim'
	-- vim.cmd [[colorscheme onedark]]

	-- color theme 6 (dracula)
	-- use 'dracula/vim'
	-- vim.cmd [[colorscheme dracula]]

	-- color theme 7 (nightfox)
	-- use 'edeneast/nightfox.nvim'
	-- vim.cmd [[colorscheme nightfox]]

	-- color theme 8 {poimandres-olivercederborg}
	-- use {
	--     'olivercederborg/poimandres.nvim',
	--     config = function()
	--         require('poimandres').setup {
	--             bold_vert_split = true, -- use bold vertical separators
	--             dim_nc_background = true, -- dim 'non-current' window backgrounds
	--             disable_background = false, -- disable background
	--             disable_float_background = false, -- disable background for floats
	--             disable_italics = false, -- disable italics
	--         }
	--     end
	-- }
	-- vim.cmd [[colorscheme poimandres]]

	-- color theme 9 (horizon)
	use("lunarvim/horizon.nvim")
	vim.cmd([[colorscheme horizon]])

	use("lewis6991/gitsigns.nvim") -- git signs
	-- for commenting toggles
	use("terrortylor/nvim-comment")
	use("joosepalviste/nvim-ts-context-commentstring")

	-- for auto saving
	use({
		"pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup({
				-- your config goes here
				-- or just leave it empty :)
			})
		end,
	})

	-- autoclose bracket pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- bufferline tabs
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" })

	-- smooth scrolling
	use("karb94/neoscroll.nvim")

    -- for nvim-neo-tree
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"muniftanjim/nui.nvim",
			{
				-- only needed if you want to use the commands with "_with_window_picker" suffix
				"s1n7ax/nvim-window-picker",
				tag = "v1.*",
				config = function()
					require("window-picker").setup({
						autoselect_one = true,
						include_current = false,
						filter_rules = {
							-- filter using buffer options
							bo = {
								-- if the file type is one of following, the window will be ignored
								filetype = { "neo-tree", "neo-tree-popup", "notify" },
								-- if the buffer type is one of following, the window will be ignored
								buftype = { "terminal", "quickfix" },
							},
						},
						other_win_hl_color = "#e35e4f",
					})
				end,
			},
		},
		config = function()
			-- unless you are still migrating, remove the deprecated commands from v1.x
			vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
			-- if you want icons for diagnostic errors, you'll need to define them somewhere:
			vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticsignerror" })
			vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticsignwarn" })
			vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticsigninfo" })
			vim.fn.sign_define("diagnosticsignhint", { text = "", texthl = "diagnosticsignhint" })
			-- note: this is changed from v1.x, which used the old style of highlight groups
			-- in the form "lspdiagnosticssignwarning"
			require("neo-tree").setup({
				close_if_last_window = true, -- close neo-tree if it is the last window left in the tab
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				sort_case_insensitive = false, -- used when sorting files and directories in the tree
				sort_function = nil, -- use a custom function for sorting files and directories in the tree
				-- sort_function = function (a,b)
				--       if a.type == b.type then
				--           return a.path > b.path
				--       else
				--           return a.type > b.type
				--       end
				--   end , -- this sorts files and directories descendantly
				default_component_configs = {
					container = {
						enable_character_fade = true,
					},
					indent = {
						indent_size = 2,
						padding = 1, -- extra padding on left hand side
						-- indent guides
						with_markers = true,
						indent_marker = "│",
						last_indent_marker = "└",
						highlight = "neotreeindentmarker",
						-- expander config, needed for nesting files
						with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "neotreeexpander",
					},
					icon = {
						folder_closed = "",
						folder_open = "",
						folder_empty = "ﰊ",
						-- the next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
						-- then these will never be used.
						default = "*",
						highlight = "neotreefileicon",
					},
					modified = {
						symbol = "[+]",
						highlight = "neotreemodified",
					},
					name = {
						trailing_slash = false,
						use_git_status_colors = true,
						highlight = "neotreefilename",
					},
					git_status = {
						symbols = {
							-- change type
							added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
							modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
							deleted = "✖", -- this can only be used in the git_status source
							renamed = "", -- this can only be used in the git_status source
							-- status type
							untracked = "",
							ignored = "",
							unstaged = "",
							staged = "",
							conflict = "",
						},
					},
				},
				window = {
					position = "right",
					width = 20,
					mapping_options = {
						noremap = true,
						nowait = true,
					},
					mappings = {
						["<space>"] = {
							"toggle_node",
							nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
						},
						["<2-leftmouse>"] = "open",
						["<cr>"] = "open",
						["<esc>"] = "revert_preview",
						["p"] = { "toggle_preview", config = { use_float = true } },
						["s"] = "open_split",
						["s"] = "open_vsplit",
						-- ["s"] = "split_with_window_picker",
						-- ["s"] = "vsplit_with_window_picker",
						["t"] = "open_tabnew",
						-- ["<cr>"] = "open_drop",
						-- ["t"] = "open_tab_drop",
						["w"] = "open_with_window_picker",
						--["p"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
						["c"] = "close_node",
						["z"] = "close_all_nodes",
						--["z"] = "expand_all_nodes",
						["a"] = {
							"add",
							-- some commands may take optional config options, see `:h neo-tree-mappings` for details
							config = {
								show_path = "none", -- "none", "relative", "absolute"
							},
						},
						["a"] = "add_directory", -- also accepts the optional config.show_path option like "add".
						["d"] = "delete",
						["r"] = "rename",
						["y"] = "copy_to_clipboard",
						["x"] = "cut_to_clipboard",
						["p"] = "paste_from_clipboard",
						["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
						-- ["c"] = {
						--  "copy",
						--  config = {
						--    show_path = "none" -- "none", "relative", "absolute"
						--  }
						--}
						["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
						["q"] = "close_window",
						["r"] = "refresh",
						["?"] = "show_help",
						["<"] = "prev_source",
						[">"] = "next_source",
					},
				},
				nesting_rules = {},
				filesystem = {
					filtered_items = {
						visible = true, -- when true, they will just be displayed differently than normal items
						hide_dotfiles = false,
						hide_gitignored = false,
						hide_hidden = false, -- only works on windows for hidden files/directories
						hide_by_name = {
							--"node_modules"
						},
						hide_by_pattern = { -- uses glob style patterns
							--"*.meta",
							--"*/src/*/tsconfig.json",
						},
						always_show = { -- remains visible even if other settings would normally hide it
							--".gitignored",
						},
						never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
							--".ds_store",
							--"thumbs.db"
						},
						never_show_by_pattern = { -- uses glob style patterns
							--".null-ls_*",
						},
					},
					follow_current_file = false, -- this will find and focus the file in the active buffer every
					-- time the current file is changed while the tree is open.
					group_empty_dirs = false, -- when true, empty folders will be grouped together
					hijack_netrw_behavior = "open_current", -- netrw disabled, opening a directory opens neo-tree
					-- in whatever position is specified in window.position
					-- "open_current",  -- netrw disabled, opening a directory opens within the
					-- window like netrw would, regardless of window.position
					-- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
					use_libuv_file_watcher = false, -- this will use the os level file watchers to detect changes
					-- instead of relying on nvim autocmd events.
					window = {
						mappings = {
							["<bs>"] = "navigate_up",
							["."] = "set_root",
							["h"] = "toggle_hidden",
							["/"] = "fuzzy_finder",
							["d"] = "fuzzy_finder_directory",
							["f"] = "filter_on_submit",
							["<c-x>"] = "clear_filter",
							["[g"] = "prev_git_modified",
							["]g"] = "next_git_modified",
						},
					},
				},
				buffers = {
					follow_current_file = true, -- this will find and focus the file in the active buffer every
					-- time the current file is changed while the tree is open.
					group_empty_dirs = true, -- when true, empty folders will be grouped together
					show_unloaded = true,
					window = {
						mappings = {
							["bd"] = "buffer_delete",
							["<bs>"] = "navigate_up",
							["."] = "set_root",
						},
					},
				},
				git_status = {
					window = {
						position = "float",
						mappings = {
							["a"] = "git_add_all",
							["gu"] = "git_unstage_file",
							["ga"] = "git_add_file",
							["gr"] = "git_revert_file",
							["gc"] = "git_commit",
							["gp"] = "git_push",
							["gg"] = "git_commit_and_push",
	                        ["<Esc>"] = "close_window",
						},
					},
				},
				-- to close the tree when you open a file
				vim.cmd("autocmd filetype nvimtree setlocal nobuflisted"),
			})
			-- vim.cmd([[nnoremap \ :neotree reveal<cr>]])
		end,
	})
end)

-- vim.cmd [[colorscheme poimandres]]

vim.g.copilot_node_command = "~/.nvm/versions/node/v16.18.0/bin/node"
