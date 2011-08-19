require e2mmap
require irb/slex
#@# require rdoc/code_objects
#@# require rdoc/markup/simple_markup/preprocess
#@since 1.9.1
require rdoc/parser
#@else
require rdoc/parsers/parserfactory
#@end
#@since 1.9.3
require rdoc/token_stream
#@else
require rdoc/tokenstream
#@end

Ruby �Υ����������ɤ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���

��ĥ�Ҥ� .rb��.rbw �Υե��������Ϥ�������Ǥ��ޤ���

#@since 1.9.1
= module RDoc::RubyToken
#@else
= module RubyToken
#@end

�饤�֥��������ǻ��Ѥ��ޤ���

#@since 1.9.1
= class RDoc::RubyLex
#@else
= class RubyLex
#@end

�饤�֥��������ǻ��Ѥ��ޤ���

= reopen RDoc

== Constants

--- GENERAL_MODIFIERS  -> [String]

�饤�֥��������ǻ��Ѥ��ޤ���

--- CLASS_MODIFIERS    -> [String]

�饤�֥��������ǻ��Ѥ��ޤ���

--- ATTR_MODIFIERS     -> [String]

�饤�֥��������ǻ��Ѥ��ޤ���

--- CONSTANT_MODIFIERS -> [String]

�饤�֥��������ǻ��Ѥ��ޤ���

--- METHOD_MODIFIERS   -> [String]

�饤�֥��������ǻ��Ѥ��ޤ���

#@since 1.9.1
= class RDoc::Parser::Ruby < RDoc::Parser

include RDoc::RubyToken
include RDoc::TokenStream
#@since 1.9.2
include RDoc::Parser::RubyTools
#@end
#@else
= class RDoc::RubyParser

extend RDoc::ParserFactory

include RubyToken
include TokenStream
#@end

Ruby �Υ����������ɤ���Ϥ��뤿��Υ��饹�Ǥ���

#@since 1.9.1
== Constants

--- NORMAL -> "::"

RDoc::NormalClass type

--- SINGLE -> "<<"

RDoc::SingleClass type

#@end

== Class Methods

#@since 1.9.1
--- new(top_level, file_name, body, options, stats) -> RDoc::Parser::Ruby
#@else
--- new(top_level, file_name, body, options, stats) -> RDoc::RubyParser
#@end

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.1
@param options [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���
#@else
@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���
#@end

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- scan -> RDoc::TopLevel

Ruby �Υ����������ɤ��饯�饹/�⥸�塼��Υɥ�����Ȥ���Ϥ��ޤ���

@return [[c:RDoc::TopLevel]] ���֥������Ȥ��֤��ޤ���
