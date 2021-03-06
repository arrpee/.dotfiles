local awful = require("awful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()

local theme = {}

theme.icon_path = awful.util.getdir("config") .. "/icons/"

-- Fonts
theme.base_font = "RobotoMono Nerd Font Medium "
theme.font = theme.base_font .. "10"
theme.notification_font = theme.base_font .. "12"

theme.fg_normal = xrdb.foreground
theme.notification_fg = theme.fg_normal
theme.notification_border_color = theme.fg_normal
theme.titlebar_fg = theme.fg_normal

theme.fg_focus = xrdb.color4
theme.border_focus = theme.fg_focus

theme.bg_normal = xrdb.background
theme.border_normal = theme.bg_normal
theme.titlebar_bg = theme.bg_normal
theme.notification_bg = theme.bg_normal

theme.bg_focus = xrdb.color8

theme.border_width = dpi(2)
theme.systray_icon_spacing = dpi(4)
theme.useless_gap = dpi(8)

-- regular
theme.titlebar_close_button_normal = theme.icon_path .. "titlebar/close/close_1.svg"
theme.titlebar_close_button_focus = theme.icon_path .. "titlebar/close/close_2.svg"
theme.titlebar_maximized_button_normal_inactive = theme.icon_path .. "titlebar/maximize/maximize_1.svg"
theme.titlebar_maximized_button_focus_inactive = theme.icon_path .. "titlebar/maximize/maximize_2.svg"
theme.titlebar_maximized_button_normal_active = theme.icon_path .. "titlebar/maximize/maximize_3.svg"
theme.titlebar_maximized_button_focus_active = theme.icon_path .. "titlebar/maximize/maximize_3.svg"
theme.titlebar_minimize_button_normal = theme.icon_path .. "titlebar/minimize/minimize_1.svg"
theme.titlebar_minimize_button_focus = theme.icon_path .. "titlebar/minimize/minimize_2.svg"
theme.titlebar_floating_button_normal_inactive = theme.icon_path .. "titlebar/floating/floating_3.svg"
theme.titlebar_floating_button_focus_inactive = theme.icon_path .. "titlebar/floating/floating_1.svg"
theme.titlebar_floating_button_normal_active = theme.icon_path .. "titlebar/floating/floating_3.svg"
theme.titlebar_floating_button_focus_active = theme.icon_path .. "titlebar/floating/floating_2.svg"

-- hover
theme.titlebar_close_button_normal_hover = theme.icon_path .. "titlebar/close/close_3.svg"
theme.titlebar_close_button_focus_hover = theme.icon_path .. "titlebar/close/close_3.svg"
theme.titlebar_maximized_button_normal_inactive_hover = theme.icon_path .. "titlebar/maximize/maximize_3.svg"
theme.titlebar_maximized_button_focus_inactive_hover = theme.icon_path .. "titlebar/maximize/maximize_3.svg"
theme.titlebar_maximized_button_normal_active_hover = theme.icon_path .. "titlebar/maximize/maximize_3.svg"
theme.titlebar_maximized_button_focus_active_hover = theme.icon_path .. "titlebar/maximize/maximize_3.svg"
theme.titlebar_minimize_button_normal_hover = theme.icon_path .. "titlebar/minimize/minimize_3.svg"
theme.titlebar_minimize_button_focus_hover = theme.icon_path .. "titlebar/minimize/minimize_3.svg"
theme.titlebar_floating_button_normal_inactive_hover = theme.icon_path .. "titlebar/floating/floating_2.svg"
theme.titlebar_floating_button_focus_inactive_hover = theme.icon_path .. "titlebar/floating/floating_2.svg"
theme.titlebar_floating_button_normal_active_hover = theme.icon_path .. "titlebar/floating/floating_1.svg"
theme.titlebar_floating_button_focus_active_hover = theme.icon_path .. "titlebar/floating/floating_1.svg"

theme.layout_dwindle        = theme.icon_path .. "layouts/dwindle.png"
theme.layout_fairh          = theme.icon_path .. "layouts/fairh.png"
theme.layout_fairv          = theme.icon_path .. "layouts/fairv.png"
theme.layout_floating       = theme.icon_path .. "layouts/floating.png"
theme.layout_magnifier      = theme.icon_path .. "layouts/magnifier.png"
theme.layout_max            = theme.icon_path .. "layouts/max.png"
theme.layout_spiral         = theme.icon_path .. "layouts/spiral.png"
theme.layout_tilebottom     = theme.icon_path .. "layouts/tilebottom.png"
theme.layout_tileleft       = theme.icon_path .. "layouts/tileleft.png"
theme.layout_tile           = theme.icon_path .. "layouts/tile.png"
theme.layout_tiletop        = theme.icon_path .. "layouts/tiletop.png"

return theme
