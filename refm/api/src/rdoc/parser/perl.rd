require rdoc/parser

Perl �Υ����������ɤ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���Perl �Υ���������
����˵��Ҥ��줿 POD (Plain old Documentation) �����Υ����Ȥ���Ϥ���
�����Ǥ��ޤ���

��ĥ�Ҥ� .pl��.pm �Υե��������Ϥ�������Ǥ��ޤ���

[���] rdoc 3.0.1 ���� rdoc-perl_pod ��ʬ���줿���ᡢ1.9.3 ����
[[lib:rdoc/parser/perl]] ��ɸ��ź�ե饤�֥��˴ޤޤ�ʤ��ʤ�ޤ�����
1.9.3 �ʹߤǤ���Ѥ��������� rdoc-perl_pod �� RubyGems �ǥ��󥹥ȡ���
���Ƥ���������

= class RDoc::Parser::PerlPOD < RDoc::Parser

Perl �Υ����������ɤ���Ϥ��뤿��Υ��饹�Ǥ���

== Class Methods

--- new(top_level, file_name, body, options, stats) -> RDoc::Parser::PerlPOD

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- scan -> RDoc::TopLevel

Perl ��������������˵��Ҥ��줿 POD (Plain old Documentation) �����Υ�
���Ȥ���Ϥ��ޤ���

@return [[c:RDoc::TopLevel]] ���֥������Ȥ��֤��ޤ���

--- filter(comment) -> String

Perl �Υ����ȤγƹԤΥޡ������åפ� rdoc �����Τ�Τ��Ѵ�����ʸ�����
�֤��ޤ���

���ߤϴ���Ū����ʬ�Τߤ�����Ǥ��ޤ����ޤ� C<<...>> �ʤɤ�Ŭ�ڤ˽�����
������Ǥ��ޤ���

@param comment �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���
