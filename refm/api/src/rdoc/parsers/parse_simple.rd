#@# require rdoc/code_objects
#@# require rdoc/markup/simple_markup/preprocess

�����������ɰʳ��Υե��������Ϥ��뤿��Υ��֥饤�֥��Ǥ���

�ե���������Ƥ��٤Ƥ� 1 �Ĥ��礭�ʥ����ȤȤ��ƽ������ޤ������������ե�
�������Ƭ�� # �ǻϤޤäƤ�����硢��Ƭ�ԤϺ������ޤ���

= class RDoc::SimpleParser

�����������ɰʳ��Υե��������Ϥ��뤿��Υ��饹�Ǥ���

== Class Methods

--- new(top_level, file_name, body, options, stats) -> RDoc::SimpleParser

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body ���Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- scan -> RDoc::TopLevel

���Ȥλ��� [[c:RDoc::TopLevel]] �Υ����ȤȤ��ƥե���������Ƥ���Ϥ�
�ޤ���

@return [[c:RDoc::TopLevel]] ���֥������Ȥ��֤��ޤ���

--- remove_private_comments(comment) -> String

��Ƭ�� "--" ���� "++" �ǰϤޤ줿�����Ȥ� comment ������������̤���
���ޤ���

@param comment �оݤ�ʸ�������ꤷ�ޤ���

@return �����Ȥ�������줿ʸ������֤��ޤ���
