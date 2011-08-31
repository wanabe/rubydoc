require e2mmap
require irb/slex
require rdoc/code_objects
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
=== �᥿�ץ���ߥ󥰤��줿�᥽�å�

ưŪ��������줿�᥽�åɤ�ɥ�����Ȥ˴ޤ᤿����硢## �ǥ����Ȥ򳫻Ϥ��ޤ���

  ##
  # This is a meta-programmed method!

  add_my_method :meta_method, :arg1, :arg2

[[c:RDoc::Parser::Ruby]] �Ͼ嵭�� :meta_method �褦�˥᥽�åɤ�������
���褦�ʼ��̻Ҥθ��³���ȡ������᥽�å�̾�Ȥ��Ʋ�ᤷ�ޤ����᥽�å�
̾�����Ĥ���ʤ��ä���硢�ٹ�ɽ������ޤ����ޤ������ξ��ϥ᥽�å�
̾�� 'unknown' �ˤʤ�ޤ���

:method: ̿���Ȥ����ǥ᥽�å�̾����ꤹ�����Ǥ��ޤ���

  ##
  # :method: woo_hoo!

�ǥե���ȤǤ�ưŪ��������줿�᥽�åɤϥ��󥹥��󥹥᥽�åɤȤ��Ʋ���
����ޤ����ðۥ᥽�åɤȤ��������ϡ�:singleton-method: ̿�����ꤷ��
����

  ##
  # :singleton-method:

�ʲ��Τ褦�˥᥽�å�̾����ꤹ�����Ǥ��ޤ���

  ##
  # :singleton-method: woo_hoo!

�ޤ���°���ˤĤ��Ƥ�Ʊ�ͤ� :attr:�� :attr_reader:�� :attr_writer:��
:attr_accessor: ����ꤹ������Ǥ��ޤ���°����̾���Ͼ�ά�Ǥ��ޤ���

  ##
  # :attr_reader: my_attr_name

=== �����᥽�åɡ�°��

:method:�� :singleton-method: �� :attr: ̿���Ȥ����Ǽºݤˤ��������
�Ƥ��ʤ��᥽�åɤ�ɥ�����Ȥ˴ޤ������Ǥ��ޤ���

  ##
  # :attr_writer: ghost_writer
  # There is an attribute here, but you can't see it!

  ##
  # :method: ghost_method
  # There is a method here, but you can't see it!

  ##
  # this is a comment for a regular method

  def regular_method() end
#@end

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

#@until 1.9.1
= reopen RDoc

== Constants

#@include(../RDoc__constants)
#@end

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
