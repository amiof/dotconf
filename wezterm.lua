local wezterm = require 'wezterm';
return {
     font = wezterm.font("JetBrains Mono", {weight="Bold", italic=true}), 
     color_scheme = "tokyonight-storm",
       check_for_updates = true,
  check_for_updates_interval_seconds = 86400,
automatically_reload_config = false,
default_prog = { "C:/Program Files/Git/bin/sh.exe", '-l' },

window_background_image = 'C:/Users/Lion/Pictures/wp6826592-hd-4k-desktop-wallpapers.jpg',
window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.05,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },
window_background_opacity = 1.0,
}