rdoc �����Υɥ�����Ȥ� HTML ���������뤿��Υ��֥饤�֥��Ǥ���

[[m:SM::SimpleMarkup#convert]] �ΰ����� [[c:SM::ToHtml]] �Υ��󥹥���
���Ϥ��ƻ��Ѥ��ޤ���

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'

  p = SM::SimpleMarkup.new
  h = SM::ToHtml.new
  puts p.convert(input_string, h)

= class SM::ToHtml

rdoc �����Υɥ�����Ȥ� HTML ���������륯�饹�Ǥ���

[[c:SM::SimpleMarkup]] �˽�����ܾ����ޤ���

#@todo �Ѿ��η�Ϥ⤦������ǧ���롣

== Class Methods

--- new -> SM::ToHtml

���Ȥ��������ޤ���

@see [[m:SM::SimpleMarkup#convert]]

#@todo: SM::ToHtml ��Ѿ�����������ͤ����뤿�ᡢ�Ѿ���ɬ�פʥ᥽�åɤ��ɲá�������ä��롣SimpleMarkup �ˡ�
