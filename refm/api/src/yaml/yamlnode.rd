#@since 1.9.2
require syck/basenode
#@else
require yaml/basenode
#@end

YAML �ΥΡ��ɤ�ɽ�����뤿��Υ��֥饤�֥��Ǥ���

#@since 1.9.2
= class Syck::YamlNode
include Syck::BaseNode
#@else
= class YAML::YamlNode
include YAML::BaseNode
#@end

YAML �ΥΡ��ɤ�ɽ�����뤿��Υ��饹�Ǥ���

== class methods

#@since 1.9.2
--- new(type, val) -> Syck::YamlNode
#@else
--- new(type, val) -> YAML::YamlNode
#@end

���Ȥ��������ޤ���

@param type ������ʸ����ǻ��ꤷ�ޤ���

@param val �ͤ�ʸ����ǻ��ꤷ�ޤ���

== instance methods

--- anchor -> object

���Ѥ���Ƥ��ޤ���

--- anchor=(val)

���Ѥ���Ƥ��ޤ���

--- kind -> "map" | "seq" | "scalar"

�Ρ��ɤμ��̤�ʸ������֤��ޤ���

--- kind=(val)

�Ρ��ɤμ��̤�ʸ����ǻ��ꤷ�ޤ���

�桼����ľ�ܻ��Ѥ�����Ϥ���ޤ���

--- transform -> object

���Ȥ�ɽ�����륪�֥������Ȥ� Ruby �Υ��֥������Ȥˤ����֤��ޤ���

[���] ư��ޤ���

--- type_id -> String

���ȤΥ�����ʸ������֤��ޤ���

--- type_id=(val)

���ȤΥ�����ʸ����ǻ��ꤷ�ޤ���

�桼����ľ�ܻ��Ѥ�����Ϥ���ޤ���

--- value -> String | Array | Hash

�ͤ��֤��ޤ���

--- value=(val)

���Ȥ��ͤ� val �����ꤷ�ޤ���

�桼����ľ�ܻ��Ѥ�����Ϥ���ޤ���
