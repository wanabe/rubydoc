�����ȥƥ����Ȥ�������뤿��Υ��֥饤�֥��Ǥ���

= module RDoc::Text

�����ȥƥ����Ȥ�������뤿��Υ��饹�Ǥ���

== Instance Methods

--- expand_tabs(text) -> String

������Υ���(\t)��ľ����Ϣ³���륹�ڡ����ȹ�פ��� 8 ʸ���Υ��ڡ����ˤ�
��褦���֤������ޤ���

@param text ʸ�������ꤷ�ޤ���

--- flush_left(text) -> String

��������ƹԤι�Ƭ�Υ��ڡ����������ޤ���

@param text ʸ�������ꤷ�ޤ���

--- markup(text) -> String

�������������ޤ���

include �������饹�� self#formatter �᥽�åɤ�ɬ�פǤ���

@param text ʸ�������ꤷ�ޤ���

--- normalize_comment(text) -> String

���������Ƭ�Υ��ڡ��������ʸ���ʤɤ������ޤ���

�ܤ����� [SEE ALSO] �γƥ᥽�åɤ򻲾Ȥ��Ƥ���������

@param text ʸ�������ꤷ�ޤ���

@see [[m:RDoc::Text#strip_hashes]], [[m:RDoc::Text#expand_tabs]],
     [[m:RDoc::Text#flush_left]], [[m:RDoc::Text#strip_newlines]]

--- parse(text) -> RDoc::Markup::Document | Array

�������� [[m:RDoc::Text#normalize_comment]] �ǥ��ڡ��������ʸ���ʤɤ��
��������˲��Ϥ�Ԥ��ޤ���

@param text ʸ�������ꤷ�ޤ���

@see [[m:RDoc::Text#normalize_comment]]

--- strip_hashes(text) -> String

��������ƹԤι�Ƭ�� # �������ޤ���

@param text ʸ�������ꤷ�ޤ���

--- strip_newlines(text) -> String

����������Ƭ�������β��Ԥ������ޤ���

@param text ʸ�������ꤷ�ޤ���

--- strip_stars(text) -> String

�������� /* �� */ �����Υ����Ȥ������ޤ���

@param text ʸ�������ꤷ�ޤ���
