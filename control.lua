-- This will add a tabbed-pane and 2 tabs with contents.
local tabbed_pane = game.player.gui.top.add{type="tabbed-pane"}
local tab1 = tabbed_pane.add{type="tab", caption="Tab 1"}
local tab2 = tabbed_pane.add{type="tab", caption="Tab 2"}
local label1 = tabbed_pane.add{type="label", caption="Label 1"}
local label2 = tabbed_pane.add{type="label", caption="Label 2"}
tabbed_pane.add_tab(tab1, label1)
tabbed_pane.add_tab(tab2, label2)