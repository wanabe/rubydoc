#@since 1.8.1
require xsd/ns
require soap/soap
require soap/baseData
require soap/encodingstyle/handler

= class SOAP::SOAPGenerator

== Class Methods

--- new(opt = {})

--- assign_ns(attrs, ns, namespace, tag = nil)

== Instance Methods

--- charset
--- charset=(value)

--- default_encodingstyle
--- default_encodingstyle=(value)

--- generate_explicit_type
--- generate_explicit_type=(value)

#@since 1.8.3
--- use_numeric_character_reference
--- use_numeric_character_reference=(value)
#@end

--- generate(obj, io = nil)

--- encode_data(ns, obj, parent)

--- add_reftarget(name, node)

#@since 1.8.3
--- encode_child(ns, child, parent)
#@end

--- encode_element(ns, obj, parent)

#@since 1.8.3
--- encode_name(ns, data, attrs)

--- encode_name_end(ns, data)
#@end

--- encode_tag(elename, attrs = nil)

--- encode_tag_end(elename, cr = nil)

--- encode_rawstring(str)

--- encode_string(str)

#@since 1.8.3
--- element_local?(element)

--- element_qualified?(element)
#@end

== Constants

--- EncodeMap

--- EncodeCharRegexp

= class SOAP::SOAPGenerator::FormatEncodeError < SOAP::Error

#@end
