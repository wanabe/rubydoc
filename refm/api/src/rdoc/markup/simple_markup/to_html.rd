rdoc �����Υɥ�����Ȥ� HTML ���������뤿��Υ��֥饤�֥��Ǥ���

[[m:SM::SimpleMarkup#convert]] �ΰ����� [[c:SM::ToHtml]] �Υ��󥹥���
���Ϥ��ƻ��Ѥ��ޤ���

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'

  m = SM::SimpleMarkup.new
  h = SM::ToHtml.new
  puts m.convert(input_string, h)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���

= class SM::ToHtml

rdoc �����Υɥ�����Ȥ� HTML ���������륯�饹�Ǥ���

== Class Methods

--- new -> SM::ToHtml

���Ȥ��������ޤ���

�ºݤ�ʸ������Ѵ�����ݤˤϡ�[[m:SM::SimpleMarkup#convert]] �ΰ����˼�
�Ȥ��Ϥ��ޤ���

@see [[m:SM::SimpleMarkup#convert]]
