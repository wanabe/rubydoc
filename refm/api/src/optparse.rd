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

@return argv ���֤��ޤ���

--- set_option(opt, eq) -> self

#@todo

--- args -> Array

���顼�Τ��ä����ץ����ΰ�����������֤��ޤ���

@return ���顼�Τ��ä����ץ����ΰ�����

--- reason -> String

���顼�����Ƥ�ʸ������֤��ޤ���

@return ʸ������֤��ޤ���

--- reason=(reason)

���顼�����Ƥ���ꤷ�ޤ���

@param reason ʸ����

--- inspect -> String

���Ȥ�ʹ֤��ɤߤ䤹������ʸ����ɽ���ˤ����֤��ޤ���

@return ʸ������֤��ޤ���

--- message -> String
--- to_s    -> String

ɸ�२�顼�˽��Ϥ����å��������֤��ޤ���

@return ʸ������֤��ޤ���

#@since 1.8.8
--- set_backtrace(array)

#@todo

@see [[m:OptionParser::ParseError.filter_backtrace]]

== Class Methods

--- filter_backtrace(array)

#@todo

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
