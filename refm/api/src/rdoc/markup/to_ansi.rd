RDoc �����Υɥ�����Ȥ� ANSI ���������ץ������󥹤ǿ��դ����륵�֥饤
�֥��Ǥ���

#@until 1.9.3
  require 'rdoc/markup/formatter'
#@end
  require 'rdoc/markup/to_ansi'

  h = RDoc::Markup::ToAnsi.new
  puts h.convert(input_string)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���

= class RDoc::Markup::ToAnsi < RDoc::Markup::ToRdoc

RDoc �����Υɥ�����Ȥ� ANSI ���������ץ������󥹤ǿ��դ����륯�饹��
����

== Class Methods

#@since 1.9.3
--- new(markup = nil) -> RDoc::Markup::ToAnsi
#@else
--- new -> RDoc::Markup::ToAnsi
#@end

���Ȥ��������ޤ���

#@since 1.9.3
@param markup [[c:RDoc::Markup]] ���֥������Ȥ���ꤷ�ޤ�����ά�������
              �Ͽ������������ޤ���
#@end
