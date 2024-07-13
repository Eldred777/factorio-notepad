local auto_sci_pack = data.raw["item"]["automation-science-pack"]
data:extend {
	{
		type = "custom-input",
		name = "eld-note-menu",
		key_sequence = "SHIFT + N",
		action = "lua",
	},
	{
		type = "shortcut",
		name = "eld-note-menu",
		action = "lua",
		icon = {
			filename = auto_sci_pack.icon,
			size = auto_sci_pack.icon_size,
			mipmap_count = auto_sci_pack.icon_mipmaps,
		},
		toggleable = true,
	}
}

local styles = data.raw["gui-style"].default
