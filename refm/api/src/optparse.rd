category CommandLine

���ޥ�ɥ饤��Υ��ץ������갷������Υ饤�֥��Ǥ���

#@include(optparse/optparse-tut)
#@include(optparse/Arguable)
#@include(optparse/OptionParser)

= class OptionParser::ParseError < StandardError

OptionParser ���㳰���饹�δ��쥯�饹�Ǥ���

== Instance Methods

--- recover(argv) -> Array

argv ����Ƭ�� self.args ���ᤷ�ޤ���

argv ���֤��ޤ���

@param argv [[m:OptionParser#parse]] ���Ϥ������֥������Ȥʤɤ��������ꤷ�ޤ���

@return argv ���֤��ޤ���

--- set_option(opt, eq) -> self

���顼�Τ��ä����ץ�������ꤷ�ޤ���

eq �����ξ�硢self ���������륨�顼�Τ��ä����ץ����ΰ�������Ƭ��
opt ���֤������ޤ��������Ǥʤ�������Ƭ�� opt ���ɲä��ޤ���

@param opt ���顼�Τ��ä����ץ�������ꤷ�ޤ���

@param eq self ���������륨�顼�Τ��ä����ץ����ΰ�������Ƭ���֤�����
          �뤫�ɤ�������ꤷ�ޤ���

@return self ���֤��ޤ���

--- args -> Array

���顼�Τ��ä����ץ����ΰ�����������֤��ޤ���

@return ���顼�Τ��ä����ץ����ΰ�����

--- reason -> String

���顼�����Ƥ�ʸ������֤��ޤ���

@return ʸ������֤��ޤ���

--- reason=(reason)

���顼�����Ƥ���ꤷ�ޤ���

@param reason ʸ�������ꤷ�ޤ���

--- inspect -> String

���Ȥ�ʹ֤��ɤߤ䤹������ʸ����ɽ���ˤ����֤��ޤ���

@return ʸ������֤��ޤ���

@see [[m:Object#inspect]]

--- message -> String
--- to_s    -> String

ɸ�२�顼�˽��Ϥ����å��������֤��ޤ���

@return ʸ������֤��ޤ���

#@since 1.8.8
--- set_backtrace(array) -> [String]

���Ȥ� array �ǻ��ꤷ���Хå��ȥ졼�������ꤷ�ޤ���

@param array �Хå��ȥ졼����ʸ���������ǻ��ꤷ�ޤ���

@return array ���֤��ޤ���

== Class Methods

--- filter_backtrace(array) -> [String]

array �ǻ��ꤵ�줿�Хå��ȥ졼������ optparse �饤�֥��˴ؤ���Ԥ��
�����ޤ���

�ǥХå��⡼��([[m:$DEBUG]]����)�ξ��ϲ��⤷�ޤ���

@param array �Хå��ȥ졼����ʸ���������ǻ��ꤷ�ޤ���

@return array ���֤��ޤ���

#@end

= class OptionParser::AmbiguousOption < OptionParser::ParseError

�䴰��ۣ��ˤ����Ǥ��ʤ����ץ���󤬤��ä������ꤲ���ޤ���

= class OptionParser::NeedlessArgument < OptionParser::ParseError

��������ʤ��Ϥ��Υ��ץ����˰�����Ϳ����줿�����ꤲ���ޤ���

= class OptionParser::MissingArgument < OptionParser::ParseError

������ɬ�פʥ��ץ����˰�����Ϳ�����ʤ��ä������ꤲ���ޤ���

= class OptionParser::InvalidOption < OptionParser::ParseError

�������Ƥ��ʤ����ץ����Ϳ����줿�����ꤲ���ޤ���

= class OptionParser::InvalidArgument < OptionParser::ParseError

���ץ����ΰ��������ꤵ�줿�ѥ�����˥ޥå����ʤ������ꤲ���ޤ���

= class OptionParser::AmbiguousArgument < OptionParser::ParseError

���ץ����ΰ�����ۣ��ˤ����䴰�Ǥ��ʤ������ꤲ���ޤ���

= redefine Kernel
== Constants
--- ARGV -> Array

Ruby ������ץȤ�Ϳ����줿������ɽ������Ǥ���

[[lib:optparse]] �� require ���뤳�Ȥˤ�ꡢARGV ��
OptionParser::Arguable �� [[m:Object#extend]] ���ޤ���

@see [[c:OptionParser::Arguable]]
