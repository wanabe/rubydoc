require rdoc/markup/formatter
require cgi

rdoc �����Υɥ�����Ȥ� LaTeX ���������뤿��Υ��֥饤�֥��Ǥ���

  require 'rdoc/markup/to_latex'

  h = RDoc::Markup::ToLatex.new
  puts h.convert(input_string)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���

= class RDoc::Markup::ToLaTeX < RDoc::Markup::Formatter

rdoc �����Υɥ�����Ȥ� LaTeX �������������륯�饹�Ǥ���

== Class Methods

--- new -> RDoc::Markup::ToLaTeX

���Ȥ��������ޤ���
