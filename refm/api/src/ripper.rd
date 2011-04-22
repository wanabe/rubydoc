require ripper/filter
require ripper/lexer
require ripper/sexp

Ruby �ץ�������Ϥ��뤿��Υ饤�֥��Ǥ���

= class Ripper

Ruby �ץ����Υѡ����Ǥ���

�ʲ��򻲾Ȥ��Ʋ�������

  * [[url:http://i.loveruby.net/w/RipperTutorial.html]]
  * [[url:http://i.loveruby.net/w/RipperTutorial.TokenStreamInterface.html]]

Ruby �ץ�����ƥ����ȤȤ��ư���������硢
�㤨�Х��������դ���Ԥ��������ϡ�
[[c:Ripper::Filter]] ���饹��Ȥ��Ȥ褤�Ǥ��礦��

== Class Methods

--- new(src, filename = "(ripper)", lineno = 1) -> Ripper

Ripper ���֥������Ȥ�������ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param filename src �Υե�����̾��ʸ����ǻ��ꤷ�ޤ�����ά����� "(ripper)" �ˤʤ�ޤ���

@param lineno src �γ��Ϲ��ֹ����ꤷ�ޤ�����ά����� 1 �ˤʤ�ޤ���

src �β��Ϥ�Ԥ��ˤϹ��� [[m:Ripper#parse]] �ʤɤθƤӽФ���ɬ�פǤ���

@see [[m:Ripper.parse]], [[m:Ripper#parse]]

--- parse(src, filename = '(ripper)', lineno = 1) -> nil

���ꤵ�줿ʸ�������Ϥ��ޤ������ nil ���֤��ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param filename src �Υե�����̾��ʸ����ǻ��ꤷ�ޤ�����ά����� "(ripper)" �ˤʤ�ޤ���

@param lineno src �γ��Ϲ��ֹ����ꤷ�ޤ�����ά����� 1 �ˤʤ�ޤ���

@see [[m:Ripper#parse]]

--- yydebug -> bool

yydebug�ι�ʸ���ϴ�����׵�ǽ��ͭ����̵�������֤��ޤ���

--- yydebug=(flag)

yydebug�ι�ʸ���ϴ�����׵�ǽ��ͭ����̵��������ꤷ�ޤ���

@param flag true �� false ����ꤷ�ޤ���

== Instance Methods

--- parse -> nil

���Ȥλ��� Ruby �ץ�������Ϥ��ޤ������ nil ���֤��ޤ���

���֥��饹�ǥ����Х饤�ɤ��ƻ��Ѥ��ޤ���Ruby �ץ����β��ϤϹԤ��ޤ�
�������ΤޤޤǤϲ��Ϸ�̤����ѤǤ��ޤ��󡣤ޤ������֥��饹�ǥ��٥�ȥ�
��ɥ�Τߤ򥪡��Х饤�ɤ������ˡ��ϥ�ɥ�ǽ�����Ԥä���̤��֤���
����

@see [[m:Ripper.parse]]

--- column -> Integer | nil

���ߤΥȡ�����η��ֹ�� 0 ����Ϥޤ���ͤ��֤��ޤ���

���Υ᥽�åɤϥ��٥�ȥϥ�ɥ����ǤΤ߰�̣�Τ����ͤ��֤��ޤ������٥�
�ȥϥ�ɥ����� self.column ��¹Ԥ��Ƥ���������

--- filename -> String

���Ȥλ��� Ruby �ץ����Υե�����̾��ʸ������֤��ޤ���

--- lineno -> Integer | nil

���ߤΥȡ�����ι��ֹ�� 1 ����Ϥޤ���ͤ��֤��ޤ���

���Υ᥽�åɤϥ��٥�ȥϥ�ɥ����ǤΤ߰�̣�Τ����ͤ��֤��ޤ������٥�
�ȥϥ�ɥ����� self.lineno ��¹Ԥ��Ƥ���������

--- end_seen? -> bool

����ޤǤ˲��Ϥ��� Ruby �ץ�������� __END__ ���ޤޤ�Ƥ������ɤ���
���֤��ޤ���

--- encoding -> Encoding

���Ȥλ��� Ruby �ץ�����ʸ�����󥳡��ǥ��󥰤��֤��ޤ���

Ruby �ץ����β������� US-ASCII ���б����륨�󥳡��ǥ��󥰤��֤��ޤ���

== Private Instance Methods

--- warn(fmt, *args) -> nil

���Ϥ��� Ruby �ץ�������˷ٹ�([[m:$-w]] �� true �λ��������Ϥ����
�ٹ�)����Ϥ���褦�ʤ�Τ����ä����˼¹Ԥ���ޤ���

@param fmt ���顼��å������Υե����ޥå�ʸ����Ǥ���

@param args ���顼��å������Υե����ޥåȤ��������Ǥ���

���֥��饹�ǥ����Х饤�ɤ��ƻ��Ѥ��ޤ���

�����Υ��顼��å������� printf �ե����ޥåȤ˽��ä��Ϥ���ޤ���

--- warning(fmt, *args) -> nil

���Ϥ��� Ruby �ץ�������˽��פʷٹ�([[m:$-w]] �� false �λ�������
�Ϥ����ٹ�)����Ϥ���褦�ʤ�Τ����ä����˼¹Ԥ���ޤ���

@param fmt ���顼��å������Υե����ޥå�ʸ����Ǥ���

@param args ���顼��å������Υե����ޥåȤ��������Ǥ���

���֥��饹�ǥ����Х饤�ɤ��ƻ��Ѥ��ޤ���

�����Υ��顼��å������� printf �ե����ޥåȤ˽��ä��Ϥ���ޤ���

--- compile_error(msg) -> nil

���Ϥ��� Ruby �ץ�������˥���ѥ��륨�顼�����ä����˼¹Ԥ����
����

@param msg ���顼��å�������

���֥��饹�ǥ����Х饤�ɤ��ƻ��Ѥ��ޤ���

== Constants

--- Version -> String

ripper �ΥС�������ʸ������֤��ޤ���

--- EVENTS -> [Symbol]

ripper �ΰ������ƤΥ��٥�� ID (����ܥ�) �Υꥹ�Ȥ��֤��ޤ���

--- PARSER_EVENTS -> [Symbol]

�ѡ������٥�ȤΥ��٥�� ID (����ܥ�) �Υꥹ�Ȥ��֤��ޤ���

--- PARSER_EVENT_TABLE -> {Symbol => Integer}

�ѡ������٥�ȤΥ��٥�� ID (����ܥ�) ���б�����ϥ�ɥ�ΰ����θĿ���
�ꥹ�Ȥ�ϥå�����֤��ޤ���

--- SCANNER_EVENTS -> [Symbol]

������ʥ��٥�ȤΥ��٥�� ID (����ܥ�) �Υꥹ�Ȥ��֤��ޤ���

--- SCANNER_EVENT_TABLE -> {Symbol => Integer}

������ʥ��٥�ȤΥ��٥�� ID (����ܥ�) ���б�����ϥ�ɥ�ΰ����θĿ�
�Υꥹ�Ȥ�ϥå�����֤��ޤ���
