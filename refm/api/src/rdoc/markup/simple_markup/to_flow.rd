rdoc �����Υɥ�����Ȥ� ri ���ޥ�ɤν��ϤΤ褦���������뤿��Υ��֥饤�֥��Ǥ���

#@todo: �⤦������ǧ���롣

[[m:SM::SimpleMarkup#convert]] �ΰ����� [[c:SM::ToFlow]] �Υ��󥹥���
���Ϥ��ƻ��Ѥ��ޤ���

  require 'rdoc/ri/ri_formatter'
  require 'rdoc/ri/ri_options'
  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_flow'

  p = SM::SimpleMarkup.new
  h = SM::ToFlow.new
  flow = p.convert(input_string, h)
  options = RI::Options.instance
  formatter = options.formatter.new(options, "")
  formatter.display_flow(flow)

= class SM::ToFlow

== Class Methods

--- new -> SM::ToFlow

���Ȥ��������ޤ���

@see [[m:SM::SimpleMarkup#convert]]
