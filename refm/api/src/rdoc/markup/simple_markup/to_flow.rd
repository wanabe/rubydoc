require cgi

rdoc �����Υɥ�����Ȥ�ɽ��������ʳ����ι�¤�����줿���֤ˤ��뤿���
���֥饤�֥��Ǥ���

[[m:SM::SimpleMarkup#convert]] �ΰ����� [[c:SM::ToFlow]] �Υ��󥹥���
���Ϥ��ƻ��Ѥ��ޤ���

  require 'rdoc/ri/ri_formatter'
  require 'rdoc/ri/ri_options'
  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_flow'

  m = SM::SimpleMarkup.new
  h = SM::ToFlow.new
  flow = m.convert(input_string, h)
  options = RI::Options.instance
  formatter = options.formatter.new(options, "")
  formatter.display_flow(flow)

�Ѵ�������̤Ϲ�¤�Τ�����Ǽ����Ǥ��ޤ���[[c:SM::ToHtml]] �ʤɤȤϰۤ�
�� [[m:SM::SimpleMarkup#convert]] ��ʸ������֤��ʤ����ᡢ�嵭�Τ褦��
�ե����ޥå����Ѵ�������̤��Ϥ�ɬ�פ�����ޤ���

= class SM::ToFlow

rdoc �����Υɥ�����Ȥ�ɽ��������ʳ����ι�¤�����줿���֤ˤ��뤿���
���饹�Ǥ���

== Class Methods

--- new -> SM::ToFlow

���Ȥ��������ޤ���

�ºݤ�ʸ������Ѵ�����ݤˤϡ�[[m:SM::SimpleMarkup#convert]] �ΰ����˼�
�Ȥ��Ϥ��ޤ���

@see [[m:SM::SimpleMarkup#convert]]
