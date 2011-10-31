category FileFormat

[[lib:yaml]] �ΥХå�����ɥ饤�֥��Ǥ���YAML �С������ 1.0 �򰷤������Ǥ��ޤ���

#@since 1.9.2
���Υ饤�֥��� obsolete �Ǥ���[[lib:psych]] ����Ѥ��Ƥ���������
#@end

#@since 1.9.2
= module Syck
#@else
= module YAML::Syck
#@end

[[lib:yaml]] �ΥХå�����ɤΤ���Υ⥸�塼��Ǥ���

#@since 1.9.2
#@include(yaml/YAML.inside)
#@end

== Constants

#@until 1.9.2
--- VERSION -> String

[[lib:syck]] �ΥС��������֤��ޤ���
#@end

--- DefaultResolver -> YAML::Syck::Resolver
#@todo

--- GenericResolver -> YAML::Syck::Resolver
#@todo

== Module Functions

--- compile(io)
#@todo

Convert YAML to bytecode

#@since 1.9.2
= class Syck::Resolver
#@else
= class YAML::Syck::Resolver
#@end

== Class Methods

--- new -> YAML::Syck::Resolver
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- tags
#@todo

--- tags=(val)
#@todo

--- add_type(taguri, cls)
#@todo

--- use_types_at(hsh)
#@todo

--- detect_implicit(val)
#@todo

--- transfer(type, val)
#@todo

--- node_import(node)
#@todo

--- tagurize(val) -> String
#@todo

#@since 1.9.2
= class Syck::Parser
#@else
= class YAML::Syck::Parser
#@end

== Class Methods

--- new(options = {}) -> YAML::Syck::Parser
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- options(val)
#@todo

--- options=(val)
#@todo

--- resolver(val)
#@todo

--- resolver=(val)
#@todo

--- input(val)
#@todo

--- input=(val)
#@todo

--- bufsize(val)
#@todo

--- bufsize=(val)
#@todo

--- load(io)
#@# --- load(io) { ... }

--- load_documents(io)
--- load_documents(io) { |doc| ... }
#@todo

--- set_resolver(resolver)
#@todo

#@since 1.9.2
= class Syck::Node
#@else
= class YAML::Syck::Node
#@end

== Instance Methods

#@until 1.9.3
--- initialize_copy(orig) -> YAML::Syck::Node
#@todo

Cloning method for all node types
#@end

--- emitter
#@todo

--- emitter=(val)
#@todo

--- resolver
#@todo

--- resolver=(val)
#@todo

--- kind
#@todo

--- kind=(val)
#@todo

--- type_id
#@todo

--- type_id=(val)
#@todo

--- value
#@todo

--- value=(val)
#@todo

--- type_id=(val)
#@todo

--- transform
#@todo

#@since 1.9.2
= class Syck::Scalar
#@else
= class YAML::Syck::Scalar
#@end

== Class Methods

--- new(type_id, val, style) -> YAML::Syck::Scalar
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- value=(val)
#@todo

--- style=(val)
#@todo

#@since 1.9.2
= class Syck::Seq
#@else
= class YAML::Syck::Seq
#@end

== Class Methods

--- new(type_id, val, style) -> YAML::Syck::Seq
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- value=(val)
#@todo

--- add(key, val)
#@todo

--- style=(val)
#@todo

#@since 1.9.2
= class Syck::Map
#@else
= class YAML::Syck::Map
#@end

== Class Methods

--- new(type_id, val, style) -> YAML::Syck::Map
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- value=(val)
#@todo

--- add(key, val)
#@todo

--- style=(val)
#@todo

#@since 1.9.2
= class Syck::PrivateType
#@else
= class YAML::PrivateType
#@end

== Class Methods

--- new(type_id, val) -> YAML::PrivateType
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- type_id
#@todo

--- type_id=(val)
#@todo

--- value
#@todo

--- value=(val)
#@todo

#@since 1.9.2
= class Syck::DomainType
#@else
= class YAML::DomainType
#@end

== Class Methods

--- new(domain, type_id, val) -> YAML::DomainType
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- domain
#@todo

--- domain=(val)
#@todo

--- type_id
#@todo

--- type_id=(val)
#@todo

--- value
#@todo

--- value=(val)
#@todo

#@since 1.9.2
= class Syck::Object
#@else
= class YAML::Object
#@end

== Class Methods

--- new(klass, ivars) -> YAML::Object
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- class
#@todo

--- class=(val)
#@todo

--- ivars
#@todo

--- ivars=(val)
#@todo

--- yaml_initialize(klass, ivars) -> YAML::Object
#@todo

#@since 1.9.2
= class Syck::BadAlias
#@else
= class YAML::Syck::BadAlias
#@end

include Comparable

== Class Methods

--- new(name) -> YAML::Syck::BadAlias
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- name -> String
#@todo

--- name=(val)
#@todo

--- <=>(other) -> Integer | nil

���Ȥ�̾������Ӥ��ޤ���

@see [[m:String#<=>]]

#@since 1.9.2
= class Syck::MergeKey

= class Syck::DefaultKey

= class Syck::Out
#@else
= class YAML::Syck::MergeKey

= class YAML::Syck::DefaultKey

= class YAML::Syck::Out
#@end

== Class Methods

--- new(emitter) -> YAML::Syck::Out
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- emitter -> YAML::Syck::Emitter
#@todo

--- emitter=(val)
#@todo

--- map(type_id, style = nil)
#@todo

--- seq(type_id, style = nil)
#@todo

--- scalar(type_id, str, style = nil)
#@todo

#@since 1.9.2
= class Syck::Emitter
#@else
= class YAML::Syck::Emitter
#@end

== Class Methods

--- new(*options) -> YAML::Syck::Emitter
#@todo

���Ȥ��������ޤ���

== Instance Methods

--- level
#@todo

--- level=(value)
#@todo

--- reset(*options) -> YAML::Syck::Emitter
#@todo

--- emit(object_id)
#@todo

--- set_resolver(resolver) -> YAML::Syck::Emitter
#@todo

--- node_export(node)
#@todo

#@since 1.9.2
#@include(yaml/Kernel)
#@end
