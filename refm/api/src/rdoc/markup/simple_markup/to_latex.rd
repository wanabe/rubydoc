require cgi

rdoc �����Υɥ�����Ȥ� LaTeX ���������뤿��Υ��֥饤�֥��Ǥ���

[[m:SM::SimpleMarkup#convert]] �ΰ����� [[c:SM::ToLaTeX]] �Υ��󥹥���
���Ϥ��ƻ��Ѥ��ޤ���

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_latex'

  m = SM::SimpleMarkup.new
  h = SM::ToLaTeX.new
  puts m.convert(input_string, h)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���

= class SM::ToLaTeX

rdoc �����Υɥ�����Ȥ� LaTeX �������������륯�饹�Ǥ���

== Class Methods

--- new -> SM::ToLaTeX

���Ȥ��������ޤ���

�ºݤ�ʸ������Ѵ�����ݤˤϡ�[[m:SM::SimpleMarkup#convert]] �ΰ����˼�
�Ȥ��Ϥ��ޤ���

@see [[m:SM::SimpleMarkup#convert]]
