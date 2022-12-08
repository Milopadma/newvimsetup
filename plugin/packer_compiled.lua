-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/mylo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/mylo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/mylo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/mylo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/mylo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-save.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14auto-save\frequire\0" },
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/pocco81/auto-save.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["code_runner.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/crag666/code_runner.nvim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n�\1\0\0\6\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\n\0005\4\6\0004\5\0\0=\5\a\0044\5\0\0=\5\b\0044\5\0\0=\5\t\4=\4\v\3=\3\f\2B\0\2\1K\0\1\0\rprojects\28/home/username/projects\1\0\0\bgit\nfiles\tterm\1\0\0\20global_settings\1\0\0\1\0\2\19save_on_change\2\19save_on_toggle\1\nsetup\fharpoon\frequire\0" },
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["horizon.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/horizon.nvim",
    url = "https://github.com/lunarvim/horizon.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\21\0\0\a\0D\1h6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\0035\4%\0005\5$\0=\5&\0045\5'\0005\6(\0=\6)\5=\5*\0045\5+\0005\6,\0=\6)\5=\5-\4=\4.\3=\3/\0024\3\0\0=\0030\0025\0037\0005\0041\0004\5\0\0=\0052\0044\5\0\0=\0053\0044\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\4=\0048\0035\4:\0005\0059\0=\5.\4=\4/\3=\3;\0025\3<\0005\4>\0005\5=\0=\5.\4=\4/\3=\3?\0025\3B\0005\4@\0005\5A\0=\5.\4=\4/\3=\3\31\0026\3\0\0009\3\1\3'\5C\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0003autocmd filetype nvimtree setlocal nobuflisted\1\0\0\1\0\b\aga\17git_add_file\agp\rgit_push\agu\21git_unstage_file\6a\16git_add_all\agc\15git_commit\agg\24git_commit_and_push\agr\20git_revert_file\n<Esc>\17close_window\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\abd\18buffer_delete\6.\rset_root\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\1\0\0\1\0\t\t<bs>\16navigate_up\a]g\22next_git_modified\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\6.\rset_root\6h\18toggle_hidden\6f\21filter_on_submit\6d\27fuzzy_finder_directory\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_current\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\1\20hide_gitignored\1\18hide_dotfiles\1\fvisible\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6p\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\19\6x\21cut_to_clipboard\6c\tcopy\6t\16open_tabnew\6a\18add_directory\6w\28open_with_window_picker\6z\20close_all_nodes\6>\16next_source\6p\25paste_from_clipboard\n<esc>\19revert_preview\t<cr>\topen\18<2-leftmouse>\topen\6<\16prev_source\6s\16open_vsplit\6q\17close_window\6m\tmove\6?\14show_help\6y\22copy_to_clipboard\6r\frefresh\6d\vdelete\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\nright\nwidth\3\20\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\14untracked\b\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b\rmodified\5\tname\1\0\3\19trailing_slash\1\14highlight\20neotreefilename\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20neotreemodified\ticon\1\0\5\14highlight\20neotreefileicon\fdefault\6*\17folder_empty\bﰊ\16folder_open\b\18folder_closed\b\vindent\1\0\t\14highlight\24neotreeindentmarker\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20neotreeexpander\22expander_expanded\b\23expander_collapsed\b\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\23popup_border_style\frounded\25close_if_last_window\2\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23diagnosticsignhint\ttext\b\23diagnosticsignhint\1\0\2\vtexthl\23diagnosticsigninfo\ttext\t \23diagnosticsigninfo\1\0\2\vtexthl\23diagnosticsignwarn\ttext\t \23diagnosticsignwarn\1\0\2\vtexthl\24diagnosticsignerror\ttext\t \24diagnosticsignerror\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\3����\4\0" },
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/muniftanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/joosepalviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\19autoselect_one\2\23other_win_hl_color\f#e35e4f\20include_current\1\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/muniftanjim/prettier.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/mylo/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14auto-save\frequire\0", "config", "auto-save.nvim")
time([[Config for auto-save.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\n\0005\4\6\0004\5\0\0=\5\a\0044\5\0\0=\5\b\0044\5\0\0=\5\t\4=\4\v\3=\3\f\2B\0\2\1K\0\1\0\rprojects\28/home/username/projects\1\0\0\bgit\nfiles\tterm\1\0\0\20global_settings\1\0\0\1\0\2\19save_on_change\2\19save_on_toggle\1\nsetup\fharpoon\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\19autoselect_one\2\23other_win_hl_color\f#e35e4f\20include_current\1\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\21\0\0\a\0D\1h6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3=\3 \0025\3!\0005\4\"\0=\4#\0035\4%\0005\5$\0=\5&\0045\5'\0005\6(\0=\6)\5=\5*\0045\5+\0005\6,\0=\6)\5=\5-\4=\4.\3=\3/\0024\3\0\0=\0030\0025\0037\0005\0041\0004\5\0\0=\0052\0044\5\0\0=\0053\0044\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\4=\0048\0035\4:\0005\0059\0=\5.\4=\4/\3=\3;\0025\3<\0005\4>\0005\5=\0=\5.\4=\4/\3=\3?\0025\3B\0005\4@\0005\5A\0=\5.\4=\4/\3=\3\31\0026\3\0\0009\3\1\3'\5C\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0003autocmd filetype nvimtree setlocal nobuflisted\1\0\0\1\0\b\aga\17git_add_file\agp\rgit_push\agu\21git_unstage_file\6a\16git_add_all\agc\15git_commit\agg\24git_commit_and_push\agr\20git_revert_file\n<Esc>\17close_window\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\abd\18buffer_delete\6.\rset_root\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\1\0\0\1\0\t\t<bs>\16navigate_up\a]g\22next_git_modified\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\6.\rset_root\6h\18toggle_hidden\6f\21filter_on_submit\6d\27fuzzy_finder_directory\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_current\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\1\20hide_gitignored\1\18hide_dotfiles\1\fvisible\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6p\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\19\6x\21cut_to_clipboard\6c\tcopy\6t\16open_tabnew\6a\18add_directory\6w\28open_with_window_picker\6z\20close_all_nodes\6>\16next_source\6p\25paste_from_clipboard\n<esc>\19revert_preview\t<cr>\topen\18<2-leftmouse>\topen\6<\16prev_source\6s\16open_vsplit\6q\17close_window\6m\tmove\6?\14show_help\6y\22copy_to_clipboard\6r\frefresh\6d\vdelete\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\nright\nwidth\3\20\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\14untracked\b\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b\rmodified\5\tname\1\0\3\19trailing_slash\1\14highlight\20neotreefilename\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20neotreemodified\ticon\1\0\5\14highlight\20neotreefileicon\fdefault\6*\17folder_empty\bﰊ\16folder_open\b\18folder_closed\b\vindent\1\0\t\14highlight\24neotreeindentmarker\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20neotreeexpander\22expander_expanded\b\23expander_collapsed\b\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\23popup_border_style\frounded\25close_if_last_window\2\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\nsetup\rneo-tree\frequire\1\0\2\vtexthl\23diagnosticsignhint\ttext\b\23diagnosticsignhint\1\0\2\vtexthl\23diagnosticsigninfo\ttext\t \23diagnosticsigninfo\1\0\2\vtexthl\23diagnosticsignwarn\ttext\t \23diagnosticsignwarn\1\0\2\vtexthl\24diagnosticsignerror\ttext\t \24diagnosticsignerror\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\3����\4\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
