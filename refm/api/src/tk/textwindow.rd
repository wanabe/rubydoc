#@since 1.8.2

require tk
require tk/text

= class TkTextWindow < TkObject
include TkText::IndexModMethods

== Class Methods

--- new(parent, index, keys = {})

== Instance Methods

--- id

--- mark

--- [](slot)

--- []=(slot, value)

--- cget(slot)

--- configure(slot, value = TkUtil::None)

---configinfo(slot = nil)

--- current_configinfo(slot = nil)

--- window

--- window=(value)

--- create

--- create=(value)

#@end
