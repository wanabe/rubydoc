require rdoc/markup/to_html

RDoc �����Υɥ�����Ȥ� HTML ���������뤿��Υ��֥饤�֥��Ǥ���

[[c:RDoc::Markup::ToHtml]] ���ĥ���ơ��ɥ��������Υ᥽�å�̾�䥯��
��̾��ưŪ�˥�󥯤ˤ��ޤ���

= class RDoc::Markup::ToHtmlCrossref < RDoc::Markup::ToHtml

RDoc �����Υɥ�����Ȥ� HTML ���������륯�饹�Ǥ���

== Class Methods

--- new(path, context, show_hash) -> RDoc::Markup::ToHtmlCrossref

���Ȥ��������ޤ���

@param path ��������ե�����Υѥ���ʸ����ǻ��ꤷ�ޤ���

@param context [[c:RDoc::Context]] ���֥������Ȥ����Υ��֥��饹�Υ��֥���
               ���Ȥ���ꤷ�ޤ���

@param show_hash true ����ꤷ����硢�᥽�å�̾�Υ�󥯤� # ��ɽ������
                 ����false �ξ���ɽ�����ޤ���

@raise ArgmentError path �� nil ����ꤷ������ȯ�����ޤ���
