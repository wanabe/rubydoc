= class IRB::Context

== Instance Methods

--- eval_history=(n)
#@todo

�¹Է�̤Υҥ��ȥ굡ǽ������.
n �������� nil �� n > 0 �Ǥ���Ф��ο������ҥ��ȥ�ˤ���롣
n = 0�λ���̵���¤˵�������.
n = nil ���ȥҥ��ȥ굡ǽ�Ϥ��� (�ǥե����).

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

--- math_mode
#@todo

ʬ���ȹ���η׻����Ǥ��� bc �⡼�ɤ��ɤ�����ɽ���ޤ���

--- use_loader
--- use_loader=(bool)
#@todo

load �ޤ��� require ����
irb �Υե������ɤ߹��ߵ�ǽ��Ȥ����ɤ����򼨤��ޤ���
�ǥե�����ͤ� false �Ǥ���

use_loader ���ͤ� irb ���Τ�ȿ�Ǥ���ޤ���

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
