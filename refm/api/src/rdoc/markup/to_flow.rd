require rdoc/markup/formatter
require cgi

rdoc �����Υɥ�����Ȥ�ɽ��������ʳ����ι�¤�����줿���֤ˤ��뤿���
���֥饤�֥��Ǥ���

  require 'stringio'
  require 'rdoc/ri/formatter'
  require 'rdoc/markup/to_flow'

  h = RDoc::Markup::ToFlow.new
  flow = h.convert(input_string)

  output = StringIO.new
  formatter = RDoc::RI::Formatter.new(output, 78, '  ')
  formatter.display_flow(flow)
  puts output.string

�Ѵ�������̤Ϲ�¤�Τ�����Ǽ����Ǥ��ޤ���[[c:RDoc::Markup::ToHtml]] ��
�ɤȤϰۤʤ� convert �᥽�åɤ�ʸ������֤��ʤ����ᡢ�嵭�Τ褦�˥ե���
�ޥå����Ѵ�������̤��Ϥ�ɬ�פ�����ޤ���

= class RDoc::Markup::ToFlow < RDoc::Markup::Formatter

rdoc �����Υɥ�����Ȥ�ɽ��������ʳ����ι�¤�����줿���֤ˤ��뤿���
���饹�Ǥ���

== Class Methods

--- new -> RDoc::Markup::ToFlow

���Ȥ��������ޤ���
