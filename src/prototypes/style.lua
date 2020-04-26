local styles = data.raw["gui-style"].default

-- -----------------------------------------------------------------------------
-- BUTTON STYLES

styles.ee_disabled_dropdown_button = {
  type = "button_style",
  parent = "dropdown_button",
  disabled_font_color = styles.button.disabled_font_color,
  disabled_graphical_set = styles.button.disabled_graphical_set,
  left_padding = 8,
  width = 116
}

styles.ee_active_tool_button = {
  type = "button_style",
  parent = "tool_button",
  default_graphical_set = {
    base = {position={225,17}, corner_size=8},
    shadow = default_dirt
  },
  hovered_font_color = button_hovered_font_color,
  hovered_graphical_set = {
    base = {position={369,17}, corner_size=8},
    shadow = default_dirt
  },
  clicked_font_color = button_hovered_font_color,
  clicked_graphical_set = {
    base = {position={352,17}, corner_size=8},
    shadow = default_dirt
  },
}

-- REMOVE WHEN THE NEW CHARACTER GUI IS MERGED:
styles.filter_slot_button = {
  type = "button_style",
  parent = "quick_bar_slot_button"
}

local shadow = {
  position = {345, 103},
  corner_size = 16,
  top_outer_border_shift = 4,
  bottom_outer_border_shift = -4,
  left_outer_border_shift = 4,
  right_outer_border_shift = -4,
  draw_type = "outer"
}

styles.ee_filter_slot_button_inset = {
  type = "button_style",
  parent = "filter_slot_button",
  default_graphical_set = {
    base = {border=4, position={0,736}, size=80},
    shadow = shadow
  },
  hovered_graphical_set = {
    base = {border=4, position={80,736}, size=80},
    shadow = shadow,
    glow = offset_by_2_rounded_corners_glow(default_glow_color)
  },
  clicked_graphical_set = {
    base = {border=4, position={160,736}, size=80},
    shadow = shadow
  },
}

styles.ee_infinity_loader_filter_button = {
  type = "button_style",
  parent = "ee_filter_slot_button_inset",
  size = 38
}

styles.ee_active_filter_slot_button = {
  type = "button_style",
  parent = "filter_slot_button",
  default_graphical_set = {
    base = {border = 4, position = {80, 736}, size = 80},
    shadow = offset_by_2_rounded_corners_glow(default_dirt_color),
  },
  hovered_graphical_set = {
    base = {border = 4, position = {80, 736}, size = 80},
    shadow = offset_by_2_rounded_corners_glow(default_dirt_color),
    glow = offset_by_2_rounded_corners_glow(default_glow_color)
  },
  clicked_graphical_set = {
    base = {border = 4, position = {160, 736}, size = 80},
    shadow = offset_by_2_rounded_corners_glow(default_dirt_color),
  }
}

-- slightly smaller close button that looks WAY better ;)
styles.ee_frame_action_button = {
  type = "button_style",
  parent = "frame_action_button_no_border",
  size = 20,
  top_margin = 2
}

-- -----------------------------------------------------------------------------
-- EMPTY WIDGET STYLES

styles.ee_invisible_horizontal_pusher = {
  type = "empty_widget_style",
  horizontally_stretchable = "on"
}

styles.ee_invisible_vertical_pusher = {
  type = "empty_widget_style",
  vertically_stretchable = "on"
}

styles.ee_titlebar_draggable_space = {
  type = "empty_widget_style",
  parent = "draggable_space_header",
  horizontally_stretchable = "on",
  natural_height = 24,
  minimal_width = 24,
  right_margin = 6
}

-- -----------------------------------------------------------------------------
-- FLOW STYLES

styles.ee_vertically_centered_flow = {
  type="horizontal_flow_style",
  vertical_align = "center"
}

styles.ee_entity_window_content_flow = {
  type = "horizontal_flow_style",
  horizontal_spacing = 10
}

styles.ee_circuit_signals_flow = {
  type = "horizontal_flow_style",
  horizontal_spacing = 12
}

styles.ee_toolbar_flow = {
  type = "horizontal_flow_style",
  vertical_align = "center",
  horizontally_stretchable = "on"
}

styles.ee_toolbar_flow_for_switch = {
  type = "horizontal_flow_style",
  parent = "ee_toolbar_flow",
  left_padding = 8
}

-- -----------------------------------------------------------------------------
-- FRAME STYLES

styles.ee_ia_page_frame = {
  type = "frame_style",
  parent = "window_content_frame",
  vertically_stretchable = "on",
  horizontally_stretchable = "on",
  left_padding = 8,
  top_padding = 6,
  right_padding = 6,
  bottom_padding = 6
}

styles.ee_toolbar_frame = {
  type = "frame_style",
  parent = "subheader_frame",
  horizontal_flow_style = {
    type = "horizontal_flow_style",
    horizontally_stretchable = "on",
    vertical_align = "center"
  }
}

styles.ee_ic_current_signal_frame = {
  type = "frame_style",
  top_margin = 2,
  graphical_set = {
    base = {
      center = {position={76,8}, size=1},
      draw_type = "outer"
    }
  },
  horizontal_flow_style = {
    type = "horizontal_flow_style",
    horizontally_stretchable = "on",
    vertical_align = "center",
    horizontal_spacing = 6,
    bottom_padding = 2
  }
}

-- -----------------------------------------------------------------------------
-- SCROLLPANE STYLES

styles.ee_ic_signals_scroll_pane = {
  type = "scroll_pane_style",
  parent = "train_schedule_scroll_pane",
  padding = 0,
  minimal_width = (40 * 6) + 12, -- six columns + scrollbar
  height = 160, -- four rows
  extra_right_padding_when_activated = -12,
  graphical_set = {
    base = {
      position = {17,0},
      corner_size = 8,
      center = {position={42,8}, size=1},
      top = {},
      left_top = {},
      right_top = {},
      -- redefine bottom to be lighter so it transitions into the bottom pane seamlessly
      bottom = {position={93,9}, size={1,8}},
      draw_type = "outer"
    },
    shadow = {
      position = {183,128},
      corner_size = 8,
      tint = default_shadow_color,
      scale = 0.5,
      draw_type = "inner",
      -- overwrite the bottom to not have a shadow at all
      left_bottom = {},
      bottom = {},
      right_bottom = {}
    }
  },
  background_graphical_set = {
    base = {
      position = {282, 17},
      corner_size = 8,
      overall_tiling_horizontal_padding = 4,
      overall_tiling_horizontal_size = 32,
      overall_tiling_horizontal_spacing = 8,
      overall_tiling_vertical_padding = 4,
      overall_tiling_vertical_size = 32,
      overall_tiling_vertical_spacing = 8,
      custom_horizontal_tiling_sizes = {32, 32, 32, 32, 32, 32} -- to avoid little bumps in the scrollbar area
    }
  }
}

-- -----------------------------------------------------------------------------
-- SLIDER STYLES

styles.ee_update_rate_slider = {
  type = "slider_style",
  minimal_width = 50,
  natural_width = 50,
  horizontally_stretchable = "on",
  left_margin = 8
}

-- -----------------------------------------------------------------------------
-- TEXTFIELD STYLES

styles.ee_slider_textfield = {
  type = "textbox_style",
  parent = "short_number_textfield",
  width = 50,
  horizontal_align = "center",
  left_margin = 8
}

styles.ee_invalid_slider_textfield = {
  type = "textbox_style",
  parent = "ee_slider_textfield",
  default_background = {
    base = {position = {248,0}, corner_size=8, tint=warning_red_color},
    shadow = textbox_dirt
  },
  active_background = {
    base = {position={265,0}, corner_size=8, tint=warning_red_color},
    shadow = textbox_dirt
  },
  disabled_background = {
    base = {position = {282,0}, corner_size=8, tint=warning_red_color},
    shadow = textbox_dirt
  }
}

styles.ee_ic_value_textfield = {
  type = "textbox_style",
  natural_width = 50,
  minimal_width = 50,
  horizontally_stretchable = "on"
}