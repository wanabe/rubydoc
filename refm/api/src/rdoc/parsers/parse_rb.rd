Ruby �Υ����������ɤ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���

= module RubyToken

�饤�֥��������ǻ��Ѥ��ޤ���

= class RubyLex

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

= class RDoc::RubyParser

extend RDoc::ParserFactory
include RubyToken
#@# include TokenStream

Extract code elements from a source file, returning a TopLevel
object containing the constituent file elements.

This file is based on rtags

== Class Methods

--- new(top_level, file_name, body, options, stats) -> RDoc::RubyParser

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- scan -> RDoc::TopLevel

Ruby�Υ����������ɤ��饯�饹/�⥸�塼��Υɥ�����Ȥ���Ϥ��ޤ���

@return RDoc::TopLevel ���֥������Ȥ��֤��ޤ���
