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

--- back_trace_limit
#@todo

�Хå��ȥ졼��ɽ����Хå��ȥ졼����Ƭ���� n,
����� n �����Ԥʤ�.
�ǥե���Ȥ� 16.

--- debug_level=(n)
#@todo

irb �ΥǥХå���٥������

--- ignore_eof
--- ignore_eof=(bool)
#@todo

Ctrl-D �����Ϥ��줿����ư������ꤹ��.
true �λ��� Ctrl-D ��̵�뤹��.
false �λ��� irb ��λ����.

--- ignore_sigint
--- ignore_sigint=(bool)
#@todo

Ctrl-C �����Ϥ��줿����ư������ꤷ�ޤ���
false ���� irb ��λ���ޤ���
true �λ���ư��ϰʲ��Τ褦�ˤʤ�.

: ������
    ����ޤ����Ϥ�����Τ򥭥�󥻥뤷�ȥåץ�٥�����.
: �¹���
    �¹Ԥ���ߤ���.

--- inf_ruby_mode
--- inf_ruby_mode=(bool)
#@todo

inf-ruby-mode �ѤΥץ��ץ�ɽ����Ԥʤ����ɤ�����ɽ���ޤ���
�ǥե�����ͤ� false �Ǥ���

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
