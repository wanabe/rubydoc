require rdoc/markup/formatter
require cgi

RDoc �����Υɥ�����Ȥ� LaTeX ���������뤿��Υ��֥饤�֥��Ǥ���

[���] rdoc 2.5 ���ѻߤ��줿���ᡢ1.9.2 ����
[[lib:rdoc/markup/to_latex]] ��ɸ��ź�ե饤�֥��˴ޤޤ�ʤ��ʤ�ޤ�����

= class RDoc::Markup::ToLaTeX < RDoc::Markup::Formatter

RDoc �����Υɥ�����Ȥ� LaTeX �������������륯�饹�Ǥ���

== Class Methods

--- new -> RDoc::Markup::ToLaTeX

���Ȥ��������ޤ���

[���] 1.9.1 �Ǥ� [[m:RDoc::Markup::ToLaTeX#initialize]] ���Զ�礬����
���ᡢ�������Ѵ����Ԥ��ޤ���

#@# ��˾�������硢�ʲ����ɵ����롣
#@#
#@# �ɤ����Ƥ���Ѥ�������硢�ʲ��Τ褦��
#@# [[m:RDoc::Markup::ToLaTeX#initialize]] �򼫸���Ǥ�Ǿ�񤭤��Ƥ�����
#@# ����
#@#
#@#   require 'rdoc/markup/to_latex'
#@#
#@#   class RDoc::Markup::ToLaTeX < RDoc::Markup::Formatter
#@#     def initialize
#@#       super
#@#       init_tags
#@#       @list_depth = 0
#@#       @prev_list_types = []
#@#     end
#@#   end
#@#
#@#   h = RDoc::Markup::ToLaTeX.new
#@#   puts h.convert(input_string)
#@#
#@# �Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���
