Ruby �ץ�����ȡ�����Υꥹ�ȤȤ��ƽ������뤿��Υ饤�֥��Ǥ���

= reopen Ripper

--- Ripper.lex(src, filename = '-', lineno = 1) -> [[Integer, Integer], Symbol, String]

Ruby �ץ���� str ��ȡ������ʬ�䤷�����Υꥹ�Ȥ��֤��ޤ���
������ [[m:Ripper.tokenize]] �Ȱ㤤���ȡ�����μ���Ȱ��־������°���ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param filename src �Υե�����̾��ʸ����ǻ��ꤷ�ޤ�����ά����� "-" �ˤʤ�ޤ���

@param lineno src �γ��Ϲ��ֹ����ꤷ�ޤ�����ά����� 1 �ˤʤ�ޤ���

������

  require 'ripper'
  require 'pp'

  pp Ripper.lex("def m(a) nil end")
      #=> [[[1, 0], :on_kw, "def"],
           [[1, 3], :on_sp, " "],
           [[1, 4], :on_ident, "m"],
           [[1, 5], :on_lparen, "("],
           [[1, 6], :on_ident, "a"],
           [[1, 7], :on_rparen, ")"],
           [[1, 8], :on_sp, " "],
           [[1, 9], :on_kw, "nil"],
           [[1, 12], :on_sp, " "],
           [[1, 13], :on_kw, "end"]]

Ripper.lex ��ʬ�䤷���ȡ������ܤ�������ȤȤ���֤��ޤ���
�֤��ͤ���������Ǥ� 3 ���Ǥ����� (��ǰŪ�ˤϥ��ץ�) �Ǥ���
����������ʲ��˼����ޤ���

: ���־��� (Integer,Integer)
    �ȡ������֤���Ƥ���� (1-origin) �ȷ� (0-origin) �� 2 ���Ǥ�����Ǥ���
: ���� (Symbol)
    �ȡ�����μ��ब��:on_XXX�פη����Υ���ܥ���Ϥ���ޤ���
: �ȡ����� (String)
    �ȡ�����ʸ����Ǥ���

--- Ripper.tokenize(src, filename = '-', lineno = 1) -> [String]

Ruby �ץ���� str ��ȡ������ʬ�䤷�����Υꥹ�Ȥ��֤��ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param filename src �Υե�����̾��ʸ����ǻ��ꤷ�ޤ�����ά����� "-" �ˤʤ�ޤ���

@param lineno src �γ��Ϲ��ֹ����ꤷ�ޤ�����ά����� 1 �ˤʤ�ޤ���

������

  require 'ripper'
  p Ripper.tokenize("def m(a) nil end")
      #=> ["def", " ", "m", "(", "a", ")", " ", "nil", " ", "end"]

Ripper.tokenize �϶���䥳���Ȥ�ޤᡢ
����ʸ����ˤ���ʸ���� 1 �Х��Ȥ�Ĥ�����ʬ�䤷�ޤ���
�������������Ϥ����㳰�Ȥ��ơ�__END__ �ʹߤ�ʸ������ۤäƼΤƤ��ޤ���
����ϸ��ߤΤȤ�����ͤȹͤ��Ƥ���������

--- Ripper.slice(src, pattern, n = 0) -> String | nil

Ruby �ץ���� src �Τ�����
�ѥ����� pattern �� n ���ܤγ�̤˥ޥå�����ʸ�������Ф��ޤ���

�ޥå����ʤ����� nil ���֤��ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param pattern ���Ф��ץ����Υѥ������ʸ����ǻ��ꤷ�ޤ���

@param n pattern �ǻ��ꤷ��ʸ������⡢n ���ܤγ�̤����ʸ���������ɬ
         �פʻ��˻��ꤷ�ޤ�����ά����� 0 (pattern ����)�ˤʤ�ޤ���

pattern �� Ripper �Υ��٥�� ID �Υꥹ�Ȥ�ʸ����ǵ��Ҥ��ޤ���
�ޤ� pattern �ˤ� Ruby ������ɽ����Ʊ���᥿ʸ����Ȥ��ޤ���
��������.�פ�Ǥ�դΥȡ����� 1 �Ĥ˥ޥå�����
����¾�Υ᥿ʸ���⤹�٤�ʸ��ñ�̤ǤϤʤ��ȡ�����ñ�̤�ư��ޤ���

������

  require 'ripper'
  p Ripper.slice(%(<<HERE\nstring\#{nil}\nHERE),
                 "heredoc_beg .*? nl $(.*?) heredoc_end", 1)
      # => "string\#{nil}\n"

���٥�� ID �� [[m:Ripper::SCANNER_EVENTS]] �ǳ�ǧ�Ǥ��ޤ���

--- Ripper.token_match(src, pattern) -> Ripper::TokenPattern::MatchData | nil

Ruby �ץ���� src ���Ф��ƥѥ����� pattern ��ޥå�����
�ޥå��ǡ������֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

= class Ripper::Lexer < Ripper

Ruby �ץ����λ�����ϴ�Ǥ���

== Instance Methods

--- tokenize -> [String]

���Ȥ����� Ruby �ץ�����ȡ������ʬ�䤷�����Υꥹ�Ȥ��֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ��� [[m:Ripper.tokenize]] ����Ѥ��Ƥ���������

--- lex -> [[Integer, Integer], Symbol, String]

���Ȥ����� Ruby �ץ�����ȡ������ʬ�䤷�����Υꥹ�Ȥ��֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ��� [[m:Ripper.lex]] ����Ѥ��Ƥ���������

--- parse -> [[Integer, Integer], Symbol, String]

���Ȥ����� Ruby �ץ�����ȡ������ʬ�䤷�����Υꥹ�Ȥ��֤��ޤ�����
���� [[m:Ripper::Lexer#lex]] �Ȱ㤤����̤򥽡��Ȥ��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���
