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

--- parse(src, filename = '(ripper)', lineno = 1)
#@todo

���ꤵ�줿ʸ�������Ϥ��ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param filename src �Υե�����̾��ʸ����ǻ��ꤷ�ޤ�����ά����� "(ripper)" �ˤʤ�ޤ���

@param lineno src �γ��Ϲ��ֹ����ꤷ�ޤ�����ά����� 1 �ˤʤ�ޤ���

@see [[m:Ripper#parse]]

--- yydebug -> bool

yydebug�ι�ʸ���ϴ�����׵�ǽ��ͭ����̵�������֤��ޤ���

--- yydebug=(flag)

yydebug�ι�ʸ���ϴ�����׵�ǽ��ͭ��/̵������ꤷ�ޤ���

@param flag true �� false ����ꤷ�ޤ���

== Instance Methods

--- parse
#@todo

--- column
#@todo

--- lineno
#@todo

--- end_seen?
#@todo

== Private Instance Methods

--- warn(fmt, *args)
#@todo

--- warning(fmt, *args)
#@todo

--- compile_error(msg)
#@todo

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
