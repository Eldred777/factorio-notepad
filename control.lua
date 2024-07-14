local gui_handlers = require("gui_handlers")

local function skip_freeplay()
  local freeplay = remote.interfaces["freeplay"]
  if freeplay then -- Disable freeplay popup-message
    if freeplay["set_skip_intro"] then remote.call("freeplay", "set_skip_intro", true) end
    if freeplay["set_disable_crashsite"] then remote.call("freeplay", "set_disable_crashsite", true) end
  end
end

local function on_configuration_changed(config_changed_data)

end


script.on_init(function()
  skip_freeplay()
  gui_handlers.on_init()
end)
script.on_load(gui_handlers.on_load)
script.on_configuration_changed(on_configuration_changed)

script.on_event(defines.events.on_player_created, gui_handlers.on_player_created)
script.on_event(defines.events.on_gui_click, gui_handlers.on_gui_click)
script.on_event(defines.events.on_gui_value_changed, gui_handlers.on_gui_value_changed)
script.on_event(defines.events.on_gui_text_changed, gui_handlers.on_gui_text_changed)

script.on_event(defines.events.on_player_removed, function(event)
  global.players[event.player_index] = nil
end)
