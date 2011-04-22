���٥�ȥɥ�֥󥹥������ Ruby �ץ�����ù����뤿��Υ饤�֥��Ǥ���

= class Ripper::Filter

���٥�ȥɥ�֥󥹥������ Ruby �ץ�����ù����뤿��Υ��饹�Ǥ���

���Υ��饹��Ѿ����ơ�ɬ�פʥ��٥�Ȥ��б�����᥽�åɤ�������ƻ��Ѥ�
�ޤ���

=== ������

  require 'ripper'
  require 'cgi'
  
  class Ruby2HTML < Ripper::Filter
    def on_default(event, tok, f)
      f << CGI.escapeHTML(tok)
    end
  
    def on_comment(tok, f)
      f << %Q[<span class="comment">#{CGI.escapeHTML(tok)}</span>]
    end
  
    def on_tstring_beg(tok, f)
      f << %Q[<span class="string">#{CGI.escapeHTML(tok)}]
    end
  
    def on_tstring_end(tok, f)
      f << %Q[#{CGI.escapeHTML(tok)}</span>]
    end
  end
  
  Ruby2HTML.new(ARGF).parse('')

Ruby �ץ�������Ϥ��ơ�[[m:Ripper::SCANNER_EVENTS]] �ˤ��륹�����
���٥�Ȥ�¹Ԥ��ޤ������٥�Ȥϥץ����˽񤤤����֤Ǽ¹Ԥ���ޤ���

�嵭����Ǥϡ�parse �᥽�åɤ��Ϥ�����ʸ��������ͤȤ��ơ����٥�ȥ�
��ɥ餬 ARGF ���Ϥ��줿 Ruby �ץ����� HTML �ˤ����֤��ޤ���

== Class Methods

--- new(src, filename = '-', lineno = 1) -> Ripper::Filter

Ripper::Filter ���֥������Ȥ�������ޤ���

@param src Ruby �ץ�����ʸ���� IO ���֥������Ȥǻ��ꤷ�ޤ���

@param filename src �Υե�����̾��ʸ����ǻ��ꤷ�ޤ�����ά����� "-" �ˤʤ�ޤ���

@param lineno src �γ��Ϲ��ֹ����ꤷ�ޤ�����ά����� 1 �ˤʤ�ޤ���

== Instance Methods

--- filename -> String

Ruby �ץ����Υե�����̾��ʸ������֤��ޤ���

--- lineno -> Integer | nil

���ߤΥȡ�����ι��ֹ�� 1 ����Ϥޤ���ͤ��֤��ޤ���

���Υ᥽�åɤϥ��٥�ȥϥ�ɥ����ǤΤ߰�̣�Τ����ͤ��֤��ޤ������٥�
�ȥϥ�ɥ����� self.lineno ��¹Ԥ��Ƥ���������

--- column -> Integer | nil

���ߤΥȡ�����η��ֹ�� 0 ����Ϥޤ���ͤ��֤��ޤ���

���Υ᥽�åɤϥ��٥�ȥϥ�ɥ����ǤΤ߰�̣�Τ����ͤ��֤��ޤ������٥�
�ȥϥ�ɥ����� self.column ��¹Ԥ��Ƥ���������

--- parse(init = nil) -> object

���Ȥλ��� Ruby �ץ����β��Ϥ򳫻Ϥ��ޤ����Ƽ磻�٥�ȥϥ�ɥ�ǽ�
����Ԥä���̤��֤��ޤ���

@param init Ǥ�դ��ͤ����Ǥ��ޤ��������ͤ����٥�ȥϥ�ɥ���Ϥ���Ƥ����ޤ���

���� init �����ͤȤ��ƥ��٥�ȥϥ�ɥ���Ϥ���Ƥ����ޤ����Ƽ磻�٥�
�ȥϥ�ɥ������ͤϼ��Υ��٥�ȥϥ�ɥ���Ϥ���ޤ���
[[m:Enumerable#inject]] �Τ褦�ˡ��ǽ�Ū�ʷ�̤�����ͤȤ����֤��ޤ���

@see [[m:Ripper::Filter#on_default]], [[m:Ripper::Filter#on_XXX]]

== Private Instance Methods

--- on_default(event, token, data) -> object

���٥�ȥϥ�ɥ餬̤����Υ��٥�Ȥ��¹Ԥ��줿���˼¹Ԥ���륤�٥��
�ϥ�ɥ�Ǥ���

@param event �¹Ԥ��줿���٥�Ȥ� :on_XXX �����Υ���ܥ�ǻ��ꤵ��ޤ���

@param token ���ߤΥȡ����󤬻��ꤵ��ޤ���

@param data ���Υ��٥�ȥϥ�ɥ������ͤǤ����ǽ�Υ��٥�Ȥξ���
            [[m:Ripper::Filter#parse]] �ΰ����ˤʤ�ޤ���

���Υ᥽�åɤ�����ͤϼ��Υ��٥�ȥϥ�ɥ�� data �������Ϥ���ޤ���
on_default �򥪡��Х饤�ɤ��ʤ��ä����� data �����򤽤Τޤ��֤��ޤ���

@see [[m:Ripper::Filter#parse]], [[m:Ripper::Filter#on_XXX]]

--- on_XXX(token, data) -> object

�Ƽ凉����ʥ��٥�Ȥ�¹Ԥ��ޤ���

�ºݤˤ� on_XXX �Ȥ����᥽�åɤ�¸�ߤ��ޤ��󡣡�XXX�פ���ʬ��
[[m:Ripper::SCANNER_EVENTS]] �ˤ��륹����ʥ��٥�Ȥ��ɤ��ؤ��Ƥ���������

@param token ���ߤΥȡ����󤬻��ꤵ��ޤ���

@param data ���Υ��٥�ȥϥ�ɥ������ͤǤ����ǽ�Υ��٥�Ȥξ���
            [[m:Ripper::Filter#parse]] �ΰ����ˤʤ�ޤ���

�����Х饤�ɤ��ʤ��ä����� on_default ���¹Ԥ���ޤ���

���Υ᥽�åɤ�����ͤϼ��Υ��٥�ȥϥ�ɥ�� data �������Ϥ���ޤ���

@see [[m:Ripper::Filter#parse]], [[m:Ripper::Filter#on_default]], [[m:Ripper::SCANNER_EVENTS]]
