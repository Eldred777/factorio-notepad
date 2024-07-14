local styles = data.raw["gui-style"].default

styles["notepad_content_frame"] = {
	type = "frame_style",
	parent = "inside_shallow_frame_with_padding",
	vertically_stretchable = "on"
}

styles["notepad_controls_flow"] = {
	type = "horizontal_flow_style",
	vertical_align = "center",
	horizontal_spacing = 16
}

styles["notepad_scroll_pane"] = {
	type = "scroll_pane_style",
	vertical_align = "center",
	horizontal_spacing = 16,
	vertically_stretchable = "on"
}

styles["notepad_controls_textbox"] = {
	type = "textbox_style",
	horizontally_stretchable = "stretch_and_expand",
	vertically_stretchable = "stretch_and_expand"
}

styles["notepad_deep_frame"] = {
	type = "frame_style",
	parent = "slot_button_deep_frame",
	vertically_stretchable = "on",
	horizontally_stretchable = "on",
	top_margin = 16,
	left_margin = 8,
	right_margin = 8,
	bottom_margin = 4
}
