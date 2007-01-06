#@since 1.8.2

require tk
require tkextlib/blt

= module Tk::BLT::DnD

extend TkCore
extend TkItemConfigMethod

== Singleton Methods

--- cancel(win)



--- cget(win, option)



--- configinfo(win, slot = nil)



--- configure(win, slot, value = None)



--- current_configinfo(win, slot = nil)



--- current_token_configinfo(win, slot = nil)



--- current_token_windowconfiginfo(win, slot = nil)



--- delete(*wins)



--- delete_source(*wins)



--- delete_target(*wins)



--- drag(win, x, y, token = None)



--- drop(win, x, y, token = None)



--- get_data(win, fmt = nil, cmd = nil)



--- names(pat = None)



--- pull(win, fmt)



--- register(win, keys = {})



--- select(win, x, y, timestamp)



--- set_data(win, fmt = nil, cmd = nil)



--- source_names(pat = None)



--- target_names(pat = None)



--- token(*args)



--- token_configinfo(win, slot = nil)



--- token_configure(win, slot, value = None)



--- token_windowconfiginfo(win, slot = nil)



--- token_windowconfigure(win, slot, value = None)



--- tokwn_cget(win, option)



#@end
