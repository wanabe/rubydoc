require rdoc/markup/formatter
require cgi

RDoc �����Υɥ�����Ȥ� LaTeX ���������뤿��Υ��֥饤�֥��Ǥ���

  require 'rdoc/markup/to_latex'

  h = RDoc::Markup::ToLatex.new
  puts h.convert(input_string)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���

[���] rdoc 2.5 ���ѻߤ��줿���ᡢ1.9.2 ����
[[lib:rdoc/markup/to_latex]] ��ɸ��ź�ե饤�֥��˴ޤޤ�ʤ��ʤ�ޤ�����

= class RDoc::Markup::ToLaTeX < RDoc::Markup::Formatter

RDoc �����Υɥ�����Ȥ� LaTeX �������������륯�饹�Ǥ���

== Class Methods

--- new -> RDoc::Markup::ToLaTeX

���Ȥ��������ޤ���
