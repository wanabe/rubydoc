require irb/workspace

irb ������򰷤�����Υ��֥饤�֥��Ǥ���

= class IRB::Context

irb ������򰷤�����Υ��饹�Ǥ���

irb ��� conf ���ޥ�ɤ�����ͤ� .irbrc �� IRB.conf �������������
���ѹ����ޤ���irb �ε�ư��� IRB.conf �����Ƥ򹹿����Ƥ��ѹ������Ƥ�ȿ
�Ǥ���ʤ�������դ��Ƥ���������

== Class Methods

--- new(irb, workspace = nil, input_method = nil, output_method = nil) -> IRB::Context

���Ȥ��������ޤ���

@param irb [[c:IRB::Irb]] ���֥������Ȥ���ꤷ�ޤ���

@param workspace [[c:IRB::WorkSpace]] ���֥������Ȥ���ꤷ�ޤ�����ά��
                 �����Ͽ�������������ޤ���

@param input_method [[c:String]]��[[c:IRB::InputMethod]] �Υ��֥��饹��
                    ���֥������ȡ�nil �Τ����줫����ꤷ�ޤ���

@param output_method [[c:IRB::OutputMethod]] �Υ��֥��饹�Υ��֥�������
                     ����ꤷ�ޤ�����ά��������
                     [[c:IRB::StdioOutputMethod]] ���֥������Ȥ�������
                     ��������ޤ���

== Instance Methods

--- __inspect__ -> String

���Ȥ�ʸ����ɽ���ˤ������֥������Ȥ��֤��ޤ���

--- __to_s__ -> String

���Ȥ�ʸ����ɽ���ˤ������֥������Ȥ��֤��ޤ���

--- ap_name -> String

���ȤΥ��ץꥱ�������̾���֤��ޤ���

�ǥե�����ͤ� "irb" �Ǥ���

@see [[m:IRB::Context#ap_name=]]

--- ap_name=(val)

���ȤΥ��ץꥱ�������̾�� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:AP_NAME] �����ꤹ����Ǥ�Ʊ�ͤ����Ԥ�
�ޤ���

@param val ���ץꥱ�������̾�� [[c:String]] �ǻ��ꤷ�ޤ���

@see [[m:IRB::Context#ap_name]]

--- auto_indent_mode -> bool

���Ϥ����ιԤ˷�³�������˼�ư�ǻ�������Ԥ����ɤ������֤��ޤ���

�ǥե�����ͤ� false �Ǥ���

@return ��ư�ǻ�������Ԥ����� true ���֤��ޤ����Ԥ�ʤ����� false
        ���֤��ޤ���

@see [[m:IRB::Context#auto_indent_mode=]]

--- auto_indent_mode=(val)

���Ϥ����ιԤ˷�³�������˼�ư�ǻ�������Ԥ����ɤ����� val �����ꤷ�ޤ���

@param val true ����ꤷ����硢��ư�ǻ�������Ԥ��ޤ���false ����ꤷ
           �����ϼ�ư�ǻ�������Ԥ��ޤ���

@see [[m:IRB::Context#auto_indent_mode]]

--- back_trace_limit -> Integer

���顼ȯ�����ΥХå��ȥ졼��ɽ������Ƭ�������ξ�¤ιԿ����֤��ޤ���

�ǥե�����ͤ� 16 �Ǥ���

@see [[m:IRB::Context#back_trace_limit=]]

--- back_trace_limit=(val)

���顼ȯ�����ΥХå��ȥ졼��ɽ������Ƭ�������ξ�¤ιԿ��򤽤줾�� val
�Ԥ����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:BACK_TRACE_LIMIT] �����ꤹ����Ǥ�Ʊ�ͤ�
���Ԥ��ޤ���

@param val �Хå��ȥ졼��ɽ������Ƭ�������ξ�¤� [[c:Integer]] �ǻ���
           ���ޤ���

@see [[m:IRB::Context#back_trace_limit]]

--- debug? -> bool

irb ���ǥХå��⡼��([[m:IRB::Context#debug_level]] �� 1 �ʾ�)��ư�
�Ƥ��뤫�ɤ������֤��ޤ���

�ǥե�����ͤ� true �Ǥ���

@see [[m:IRB::Context#debug_level]], [[m:IRB::Context#debug_level=]]

#@# TODO: 2.0 �ʹߤΥǥե�����ͤ� false �ˤʤ�Ȼפ��뤿�ᡢ�б����
#@# ʬ�����롣

--- debug_level -> Integer

irb �ΥǥХå���٥���֤��ޤ���

�ǥե�����ͤ� 1 �Ǥ���

@see [[m:IRB::Context#debug_level=]], [[m:IRB::Context#debug?]]

--- debug_level=(val)

irb �ΥǥХå���٥�� val �����ꤷ�ޤ���

#@# TODO: #6301 ���б��塢�ᤱ��� 2.0 ����ʬ����Ԥ���
#@# (IRB::Context#debug_level �Υǥե�����ͤ�Ʊ��)
#@# .irbrc �ե�������� IRB.conf[:DEBUG_LEVEL] �����ꤹ����Ǥ�Ʊ�ͤ����
#@# ���Ԥ��ޤ���

@see [[m:IRB::Context#debug_level]], [[m:IRB::Context#debug?]]

--- echo  -> bool
--- echo? -> bool

irb �Υץ��ץȤǤ�ɾ����̤�ɽ�����뤫�ɤ������֤��ޤ���

�ǥե�����ͤ� false �Ǥ���

@see [[m:IRB::Context#echo=]]

--- echo=(val)

irb �Υץ��ץȤǤ�ɾ����̤�ɽ�����뤫�ɤ��������ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:ECHO] �����ꤹ����Ǥ�Ʊ�ͤ����Ԥ���
����

@param val true ����ꤷ����硢irb �Υץ��ץȤǤ�ɾ����̤�ɽ������
           ����false ����ꤷ������ɽ�����ޤ���

@see [[m:IRB::Context#echo]]

--- evaluate(line, line_no) -> object

�饤�֥�������ǻ��Ѥ��ޤ���

--- exit(ret = 0) -> object

irb ��λ���ޤ���ret �ǻ��ꤷ�����֥������Ȥ��֤��ޤ���

@param ret ����ͤ���ꤷ�ޤ���

@see [[m:IRB.irb_exit]]

--- file_input? -> bool

�饤�֥�������ǻ��Ѥ��ޤ���

--- ignore_eof  -> bool
--- ignore_eof? -> bool

Ctrl-D(EOF) �����Ϥ��줿���� irb ��λ���뤫�ɤ������֤��ޤ���

true �λ��� Ctrl-D ��̵�뤷�ޤ���false �λ��� irb ��λ���ޤ���

�ǥե�����ͤ� false �Ǥ���

@see [[m:IRB::Context#ignore_eof=]]

--- ignore_eof=(val)

Ctrl-D(EOF) �����Ϥ��줿���� irb ��λ���뤫�ɤ����� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:IGNORE_EOF] �����ꤹ����Ǥ�Ʊ�ͤ���
�Ԥ��ޤ���

@param val true ����ꤷ����硢 Ctrl-D ��̵�뤷�ޤ���false ����ꤷ��
           ���� Ctrl-D �����ϻ��� irb ��λ���ޤ���

@see [[m:IRB::Context#ignore_eof]]

--- ignore_sigint  -> bool
--- ignore_sigint? -> bool

Ctrl-C �����Ϥ��줿���� irb ��λ���뤫�ɤ������֤��ޤ���

false �λ��� irb ��λ���ޤ���true �λ��ϰʲ��Τ褦��ư��ޤ���

: ������
    ����ޤ����Ϥ�����Τ򥭥�󥻥뤷�ȥåץ�٥�����.
: �¹���
    �¹Ԥ���ߤ���.

�ǥե�����ͤ� true �Ǥ���

@see [[m:IRB::Context#ignore_sigint=]]

--- ignore_sigint=(val)

Ctrl-C �����Ϥ��줿���� irb ��λ���뤫�ɤ����� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:IGNORE_SIGINT] �����ꤹ����Ǥ�Ʊ�ͤ����
���Ԥ��ޤ���

@param val false ����ꤷ����硢Ctrl-C �����ϻ��� irb ��λ���ޤ���
           true ����ꤷ����硢Ctrl-C �����ϻ��˰ʲ��Τ褦��ư��ޤ���

: ������
    ����ޤ����Ϥ�����Τ򥭥�󥻥뤷�ȥåץ�٥�����.
: �¹���
    �¹Ԥ���ߤ���.

@see [[m:IRB::Context#ignore_sigint]]

--- inspect -> String
--- to_s -> String

���Ȥ�ʹ֤��ɤߤ䤹��ʸ����ˤ����֤��ޤ���

--- inspect_mode=(val)
#@todo

���󥹥ڥ��ȥ⡼�ɤ����ꤹ��.

: true
    inspect �η�̤�ɽ������
: false
    to_s �η�̤�ɽ������
: nil
    irb ���̾�⡼�ɤǤ���� inspect mode��
    math �⡼�ɤʤ� non inspect mode

--- prompt_c
#@todo

if ��ľ��ʤ�, �Ԥ���³���Ƥ�����Υץ��ץȤ�
ɽ������ե����ޥå�ʸ������֤��ޤ���

--- prompt_i
#@todo

�̾�Υץ��ץȤ�ɽ������ե����ޥå�ʸ������֤��ޤ���

--- prompt_s
#@todo

ʸ������Υץ��ץȤ�ɽ������ե����ޥå�ʸ������֤��ޤ���

--- rc
#@todo

~/.irbrc ���ɤ߹���Ǥ����� true ���֤��ޤ���
�ɤ߹���Ǥ��ʤ���� false ���֤��ޤ���

--- use_prompt
--- use_prompt=(bool)
#@todo

�ץ��ץȤ�ɽ�����뤫�ɤ�������ꤷ�ޤ���
use_prompt ���ͤ� true �ʤ�ץ��ץȤ�ɽ������
false �ʤ�ץ��ץȤ�ɽ�����ޤ���

�ǥե�����ͤ� true �Ǥ���

--- use_readline=(val)
#@todo

[[lib:readline]] ��Ȥ����ɤ�������ꤷ�ޤ���
val ���ͤˤ�äơ����Υ᥽�åɤθ��̤ϰʲ��Τ褦��ʬ����ޤ���

: true
    readline �饤�֥���Ȥ�
: false
    readline �饤�֥���Ȥ�ʤ�
: nil
    inf-ruby-mode �ʳ��� readline �饤�֥������Ѥ��褦�Ȥ��� (�ǥե����)

#@#--- verbose=(bool)
#@#
#@#irb���餤����ʥ�å���������Ϥ��뤫
#@#
== Constants

--- NOPRINTING_IVARS -> [String]

�饤�֥�������ǻ��Ѥ��ޤ���

--- NO_INSPECTING_IVARS -> [String]

�饤�֥�������ǻ��Ѥ��ޤ���

--- IDNAME_IVARS -> [String]

�饤�֥�������ǻ��Ѥ��ޤ���
