#@since 1.9.1
require rdoc/dot
#@else
require rdoc/dot/dot
require rdoc/options
#@end

�⥸�塼��䥯�饹�δط��������ޤ�������뤿��Υ��֥饤�֥��Ǥ���

�ܥ��֥饤�֥������Ѥ��뤿��ˤ� dot ���ޥ��
([[url:http://www.research.att.com/sw/tools/graphviz/]] ����)�ΥС�����
�� 1.8.6 �ʹߤ� PATH ���̤äƤ���ɬ�פ�����ޤ���

[���] 1.9.2 ���ѻߤ���ޤ�����

= class RDoc::Diagram

�⥸�塼��䥯�饹�δط��������ޤ�������뤿��Υ��饹�Ǥ���

== Constants

--- FONT -> "Arial"

[[c:RDoc::Diagram]] �����Ѥ���ե����̾���֤��ޤ���

--- DOT_PATH -> "dot"

������������륵�֥ǥ��쥯�ȥ�̾���֤��ޤ���

== Class Methods

--- new(info, options) -> RDoc::Diagram

���Ȥ��������ޤ���

@param info [[c:RDoc::TopLevel]] ���֥������Ȥ��������ꤷ�ޤ���

#@since 1.9.1
@param options [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���
#@else
@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���
#@end

== Instance Methods

--- draw -> ()

���Ȥ��������Ƥ� [[c:RDoc::TopLevel]] ���֥������Ȥ���Ϥ��ƥ⥸�塼��
�䥯�饹�δط��������ޤ�������ޤ���
