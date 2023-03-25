local wezterm = require 'wezterm'
local act = wezterm.action

-- Show which key table is active in the status area
wezterm.on('update-right-status', function(window, pane)
  local name = window:active_key_table()
  if name then
    name = 'TABLE: ' .. name
  end
  window:set_right_status(name or '')
end)

return {
	keys = {
    		-- Vim-like panes operations
    		{ key = 'h', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left' },
    		{ key = 'h', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Left', 1 } },
    		{ key = 'l', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right' },
    		{ key = 'l', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Right', 1 } },
    		{ key = 'k', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up' },
    		{ key = 'k', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Up', 1 } },
    		{ key = 'j', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down' },
    		{ key = 'j', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize{ 'Down', 1 } },
    		-- Split with Ctrl+Shift+r and vertical split with Ctrl+Shift+d
    		{ key = 'd', mods = 'SHIFT|CTRL', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
    		{ key = 'r', mods = 'SHIFT|CTRL', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
	},

	color_scheme = 'MaterialDark',
	colors = {
		selection_fg = 'none',
		selection_bg = 'rgba(87% 26% 26% 40%)',
		cursor_border = '#d7bb15',
		cursor_bg = '#d7bb15',
		cursor_fg = '#000000',
		compose_cursor = '#ff0000',
		background = '#000000',
	},
	use_fancy_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	font = wezterm.font{
		family = 'Fira Code Retina',
	},
}
