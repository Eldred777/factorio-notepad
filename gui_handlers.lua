local handlers = {}


---Initialises the globals with default values
---@param player LuaEntity.player
local function initialise_global(player)
  global.players[player.index] = {
    num_tabs = 0,
    notes = ""
  }
end

local function build_gui(player)
  local player_global = global.players[player.index]
  local screen_element = player.gui.screen

  local main_frame = screen_element.add {
    type = "frame",
    name = "notepad_main_frame",
    caption = { "notepad.title" }
  }
  main_frame.style.size = { 165, 385 }
  main_frame.auto_center = true

  local content_frame = main_frame.add { type = "frame", name = "content_frame", direction = "vertical", style = "notepad_content_frame" }
  -- local controls_flow = content_frame.add { type = "flow", name = "controls_flow", direction = "horizontal", style = "notepad_controls_flow" }
  local scroll_pane = content_frame.add { type = "scroll-pane", name = "scroll_pane", style = "notepad_scroll_pane" }
  scroll_pane.add { type = "text-box", name = "notepad_textbox", text = player_global.notes, word_wrap = true, style = "notepad_controls_textbox" }
end

---comment
---@param event EventData.on_gui_text_changed
local function notepad_textbox_edited(event)
  local player_global = global.players[event.player_index]
  player_global.notes = event.text
end


handlers.on_init = function()
  global.players = {}

  for _, player in pairs(game.players) do
    initialise_global(player)
    build_gui(player)
  end
end

handlers.on_load = function() end

---comment
---@param event EventData.on_player_created
handlers.on_player_created = function(event)
  local player = game.get_player(event.player_index)
  initialise_global(player)
  build_gui(player)
end

handlers.on_gui_click = function(event)
  if event.element.name == "notepad_controls_toggle" then
    notepad_controls_toggle(event)
  end
end

handlers.on_gui_text_changed = function(event)
  if event.element.name == "notepad_textbox" then
    notepad_textbox_edited(event)
  end
end

return handlers
