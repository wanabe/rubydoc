RDoc �����Υɥ�����Ȥ򥨥������ץ������󥹤������䥢������饤��θ�
�̤��������褦�˸����륵�֥饤�֥��Ǥ���

#@until 1.9.3
  require 'rdoc/markup/formatter'
#@end
  require 'rdoc/markup/to_bs'

  h = RDoc::Markup::ToBs.new
  puts h.convert(input_string)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ����ºݤ˸��̤��ǧ���뤿��ˤϥڡ�����
�ʤɤǽ��Ϥ��ǧ���ޤ���

�ƥ�������ΰʲ��Υޡ������å׵�ˡ�򥨥������ץ������󥹤� \b ���Ȥ߹�
�碌����ˤ�äƸ����ܤ��ѹ����ޤ���

 * ������å���(_word_): word �˥�������饤����դ���ɽ������("w\b_o\b_r\b_d\b_" ���Ѵ�����ޤ�)
 * �ܡ������(*word*): word ��������ɽ������("w\bwo\bor\brd\bd" ���Ѵ�����ޤ�)

= class RDoc::Markup::ToBs < RDoc::Markup::ToRdoc

RDoc �����Υɥ�����Ȥ򥨥������ץ������󥹤������䥢������饤��θ�
�̤��������褦�˸����륯�饹�Ǥ���

== Class Methods

#@since 1.9.3
--- new(markup = nil) -> RDoc::Markup::ToBs
#@else
--- new -> RDoc::Markup::ToBs
#@end

���Ȥ��������ޤ���

#@since 1.9.3
@param markup [[c:RDoc::Markup]] ���֥������Ȥ���ꤷ�ޤ�����ά�������
              �Ͽ������������ޤ���
#@end
