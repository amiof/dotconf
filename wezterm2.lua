local wezterm = require 'wezterm';
local config = wezterm.config_builder()
-- Define the filled in variant of the < symbol
--   font = wezterm.font_with_fallback {
-- "JetBrains Mono",
--     'Fira Code',
--     "Arial",
--     "Arabic TypesSetting"


--   },
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })
-- config.color_scheme = "Gruvbox dark, hard (base16)"
config.color_scheme = "tokyonight_night"
-- config.color_scheme = "tokyonight_storm"
config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400
config.automatically_reload_config = false
config.default_prog = { "C:/Program Files/Git/bin/sh.exe", '-l' }
-- config.window_background_image = 'C:/Users/Lion/Pictures/wp6826592-hd-4k-desktop-wallpapers.jpg'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.03,

  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,

}
config.audible_bell = "Disabled"
config.visual_bell = {
  fade_in_duration_ms = 75,
  fade_out_duration_ms = 75,
  target = "BackgroundColor",
}
config.window_background_opacity = 1.0
config.text_background_opacity = 1.0
-- need crtl + shift + t for open new terminal
config.enable_tab_bar = true
config.initial_cols = 140
config.initial_rows = 35
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.switch_to_last_active_tab_when_closing_tab = true
config.window_close_confirmation = "NeverPrompt"
config.pane_focus_follows_mouse = true
config.enable_kitty_keyboard = true
config.enable_csi_u_key_encoding = false
-- config.term = "wezterm"
-- window_decorations = "RESIZE",
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = {
  font_size = 11,
  active_titlebar_bg = "#222436",
}

config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 0,
}
config.colors = {
  visual_bell = "#1e2030",
  tab_bar = {
    active_tab = {
      bg_color = "#222436",
      fg_color = "#82aaff",
    },
    inactive_tab = {
      bg_color = "#1e2030",
      fg_color = "#545c7e",
    },
    new_tab = {
      bg_color = "#191b28",
      fg_color = "#82aaff",
    },
    new_tab_hover = {
      bg_color = "#82aaff",
      fg_color = "#1e2030",
    },
    inactive_tab_hover = {
      bg_color = "#1e2030",
      fg_color = "#82aaff",
    },
  },
}
config.keys = {
  {
    key = "F11",
    action = wezterm.action("ToggleFullScreen")
  },
  { key = "F12", action = wezterm.action("Hide") },
}

-- tabbar
config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}


return config
