require rdoc/markup

rdoc �����Υɥ�����Ȥ��������뤿��Υ��֥饤�֥��Ǥ���

= class RDoc::Markup::Formatter

rdoc �����Υɥ�����Ȥ��������뤿��δ��ܥ��饹�Ǥ���

�ºݤ˥ɥ�����Ȥ���������ˤϡ�[[c:RDoc::Markup::ToHtml]] �Τ褦�ʡ�
�Ѿ��������饹�� convert �᥽�åɤ�¹Ԥ��Ƥ���������

== Class Methods

#@since 1.9.3
--- new(markup = nil) -> RDoc::Markup::Formatter
#@else
--- new -> RDoc::Markup::Formatter
#@end

���Ȥ��������ޤ���

#@since 1.9.3
@param markup [[c:RDoc::Markup]] ���֥������Ȥ���ꤷ�ޤ�����ά�������
              �Ͽ������������ޤ���
#@end

== Instance Methods

--- convert(content) -> ()

content �ǻ��ꤵ�줿ʸ������Ѵ����ޤ���

@param content �Ѵ�����ʸ�������ꤷ�ޤ���

#@since 1.9.2
--- add_tag(name, start, stop) -> ()

name ����Ͽ���줿��§�Ǽ������줿ʸ����� start �� stop �ǰϤ�褦�˻�
�ꤷ�ޤ���

@param name [[c:RDoc::Markup::ToHtml]] �ʤɤΥե����ޥå��˼��̤������
            ��̾���� [[c:Symbol]] �ǻ��ꤷ�ޤ���

@param start ���Ϥε����ʸ����ǻ��ꤷ�ޤ���

@param stop ��λ�ε����ʸ����ǻ��ꤷ�ޤ���

��:

  require 'rdoc/markup/to_html'

  # :STRIKE �Υե����ޥåȤ� <strike> �� </strike> �˻��ꡣ
  h = RDoc::Markup::ToHtml.new
  h.add_tag(:STRIKE, "<strike>", "</strike>")

#@end
