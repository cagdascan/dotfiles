-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme_dirs = { '~/.config/color/schemes' }

-- For example, changing the color scheme:
config.color_scheme = 'Dracula (Official)'
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

-- Font
config.font_size = 18.0

-- Window
config.window_padding = {
  left = 4,
  right = 4,
  top = 8,
  bottom = 0
}
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true 

-- and finally, return the configuration to wezterm
return config

