require irb/workspace

irb ������򰷤�����Υ��֥饤�֥��Ǥ���

= class IRB::Context

irb ������򰷤�����Υ��饹�Ǥ���

irb ��� conf ���ޥ�ɤ�����ͤ� .irbrc �� IRB.conf �������������
���ѹ����ޤ���irb �ε�ư��� IRB.conf �����Ƥ򹹿����Ƥ��ѹ������Ƥ�ȿ
�Ǥ���ʤ�������դ��Ƥ���������

�ʤ���.irbrc ��˵��ҤǤ���ʲ��������ͤˤĤ��Ƥϡ�[[c:IRB::Context]]
���֥������ȤΥ᥽�åɤȤ������Ǥ��ޤ���

: IRB.conf[:AT_EXIT]

  irb �ν�λ��(���� irb ��ޤߤޤ���)���ܹ��ܤ����ꤵ�줿 [[c:Proc]] ��
  �֥������Ȥ�¹Ԥ��ޤ����֥�å������ˤϲ����Ϥ���ޤ���

  �ǥե�����ͤ� [] �Ǥ���

: IRB.conf[:IRB_LIB_PATH]

  �饤�֥�������ǻ��Ѥ��ޤ���

: IRB.conf[:IRB_RC]

  irb �ε�ư��(���� irb ��ޤߤޤ�)���ܹ��ܤ����ꤵ�줿 [[c:Proc]] ����
  �������Ȥ�¹Ԥ��ޤ����֥�å������ˤ� [[c:IRB::Context]] ���Ϥ���ޤ���
  ���Τ��ᡢ���� irb �������ޤȤ�Ƽ¹Ԥ���Τ˻��Ѥ��ޤ���

  �ǥե�����ͤ� nil �Ǥ���

  [[ref:lib:irb#configure_sub_irb]] ��ʻ���ƻ��Ȥ��Ƥ���������

: IRB.conf[:LC_MESSAGES]

  �饤�֥�������ǻ��Ѥ��ޤ���

: IRB.conf[:SCRIPT]

  �ե�����̾����ꤷ�� irb ��¹Ԥ������Υѥ���ʸ������֤��ޤ���

  �ǥե�����ͤ� nil �Ǥ���

#@# �ѹ����Ƥ�ƶ����ʤ������ά���ޤ������������٤ϵ��Ҥ������ᡢɬ��
#@# �ˤʤä��ݤ˥����ȥ��󤷤ޤ���
#@#: IRB.conf[:RC_NAME_GENERATOR]
#@#  ����ե��������ꤹ�뤿��� [[c:Proc]] ���֥������Ȥ���ꤷ�ޤ���
#@#
#@##@since 1.9.1
#@#: IRB.conf[:ENCODINGS]
#@#  �ǥե���Ȥγ���/�������󥳡��ǥ��󥰤ξ�����֤��ޤ�����ư���� -U
#@#  �� ��-E(--encoding) ���ץ����η�̤�ȿ�Ǥ��Ƥ��ޤ����ѹ����Ƥ��
#@#  ���Ϥ���ޤ���
#@##@end

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

[[m:IRB::Context#prompt_mode]] ���ѹ��˱ƶ�������������դ��Ƥ���������

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

--- inspect? -> bool

[[c:IRB::Context#inspect_mode]] ��ͭ�����ɤ������֤��ޤ���

#@since 1.9.2
@return ���Ϸ�̤� to_s ������Τ�ɽ��������� false ���֤��ޤ�������
        �ʳ��ξ��� true ���֤��ޤ���
#@else
@return ���Ϸ�̤� inspect ������Τ�ɽ��������� true ���֤��ޤ���
        to_s ������Τ�ɽ��������� false ���֤��ޤ���
#@end

@see [[c:IRB::Context#inspect_mode]], [[c:IRB::Context#inspect_mode=]]

#@since 1.9.2
--- inspect_mode -> object | nil
#@else
--- inspect_mode -> bool | nil
#@end

�¹Է�̤ν����������֤��ޤ���

@see [[m:IRB::Context#inspect_mode=]]

--- inspect_mode=(opt)

�¹Է�̤ν��������� opt �����ꤷ�ޤ���

@param opt �ʲ��Τ����줫����ꤷ�ޤ���
#@since 1.9.2
: false, :to_s, :raw
  ���Ϸ�̤� to_s ������Τ�ɽ�����ޤ���
: true, :p, :inspect
  ���Ϸ�̤� inspect ������Τ�ɽ�����ޤ���
: :pp, :pretty_inspect
  ���Ϸ�̤� pretty_inspect ������Τ�ɽ�����ޤ���
: :yaml, :YAML
  ���Ϸ�̤� YAML �����ˤ�����Τ�ɽ�����ޤ���
: :marshal, :Marshal, :MARSHAL, [[c:Marshal]]
  ���Ϸ�̤� [[m:Marshal.#dump]] ������Τ�ɽ�����ޤ���

@see [[ref:lib:irb#inspect_mode]]
#@else
: true, nil
  ���Ϸ�̤� inspect ������Τ�ɽ�����ޤ���
: false
  ���Ϸ�̤� to_s ������Τ�ɽ�����ޤ���
#@end

--- io -> IRB::InputMethod

�饤�֥�������ǻ��Ѥ��ޤ���

--- io=(val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- irb -> IRB::Irb

�饤�֥�������ǻ��Ѥ��ޤ���

--- irb=(val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- irb_name -> String

��ư���Ƥ��륳�ޥ��̾��ʸ������֤��ޤ���

#@# TODO: ���� irb �λ���ư��򵭽�

@see [[m:IRB::Context#irb_name=]]

--- irb_name=(val)

��ư���Ƥ��륳�ޥ��̾�� val �����ꤷ�ޤ���

@param val ���ޥ��̾�� [[c:String]] �ǻ��ꤷ�ޤ���

@see [[m:IRB::Context#irb_name]]

--- irb_path -> String

�饤�֥�������ǻ��Ѥ��ޤ���

--- irb_path=(val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- last_value -> object

irb ��ǤκǸ�μ¹Է�̤��֤��ޤ���

--- load_modules -> [String]

irb �ε�ư���� -r ���ץ���������ɤ߹��ޤ줿�饤�֥�ꡢ~/.irbrc �ʤ�
������ե�������� IRB.conf[:LOAD_MODULES] ������ɤ߹��ޤ줿�饤�֥��
��̾����������֤��ޤ���

#@# �ѹ����Ƥ�ƶ����ʤ������ά���ޤ�����
#@#--- load_modules=

--- main -> object

self �����ꤵ�줿���֥������Ȥ��֤��ޤ���

@see cwws ���ޥ��

--- prompt_c -> String

������³���Ƥ�����Υץ��ץȤ�ɽ������ե����ޥå�ʸ������֤��ޤ���

@see [[m:IRB::Context#prompt_c=]], [[ref:lib:irb#customize_prompt]]

--- prompt_c=(val)

������³���Ƥ�����Υץ��ץȤ�ɽ������ե����ޥå�ʸ����� val ������
���ޤ���

@param val �ե����ޥåȤ�ʸ����ǻ��ꤷ�ޤ�������Ǥ������ƤˤĤ��Ƥϡ�
           [[ref:lib:irb#customize_prompt]] �򻲾Ȥ��Ƥ���������

[[m:IRB::Context#prompt_mode]] ���ѹ��˱ƶ�������������դ��Ƥ���������

@see [[m:IRB::Context#prompt_mode]], [[m:IRB::Context#prompt_mode=]],
     [[m:IRB::Context#prompt_c]], [[ref:lib:irb#customize_prompt]]

--- prompt_i -> String

�̾�Υץ��ץȤ�ɽ������ե����ޥå�ʸ������֤��ޤ���

@see [[m:IRB::Context#prompt_i=]],[[ref:lib:irb#customize_prompt]]

--- prompt_i=(val)

�̾�Υץ��ץȤ�ɽ������ե����ޥå�ʸ����� val �����ꤷ�ޤ���

@param val �ե����ޥåȤ�ʸ����ǻ��ꤷ�ޤ�������Ǥ������ƤˤĤ��Ƥϡ�
           [[ref:lib:irb#customize_prompt]] �򻲾Ȥ��Ƥ���������

[[m:IRB::Context#prompt_mode]] ���ѹ��˱ƶ�������������դ��Ƥ���������

@see [[m:IRB::Context#prompt_mode]], [[m:IRB::Context#prompt_mode=]],
     [[m:IRB::Context#prompt_i]], [[ref:lib:irb#customize_prompt]]

--- prompt_mode -> Symbol

���ߤΥץ��ץȥ⡼�ɤ� [[c:Symbol]] ���֤��ޤ���

���ꥸ�ʥ�Υץ��ץȥ⡼�ɤ�������Ƥ������Ϥ��Υ⡼�ɤ��֤��ޤ���
�����Ǥʤ����ϡ�:DEFAULT��:CLASSIC��:SIMPLE��:INF_RUBY��:XMP��:NULL
�Τ����줫���֤��ޤ���

����ѤߤΥץ��ץȥ⡼�ɤ����ƤˤĤ��Ƥϡ�IRB.conf[:PROMPT][mode] ��
���Ȥ��Ƥ���������

@see [[m:IRB::Context#prompt_mode=]], [[ref:lib:irb#customize_prompt]]

--- prompt_mode=(mode)

�ץ��ץȥ⡼�ɤ� mode �����ꤷ�ޤ���

@param mode �ץ��ץȥ⡼�ɤ� [[c:Symbol]] �ǻ��ꤷ�ޤ������ꥸ�ʥ��
            �ץ��ץȥ⡼�ɤ���:DEFAULT��:CLASSIC��:SIMPLE��:INF_RUBY��
            :XMP��:NULL �Τ��������ꤷ�Ƥ���������

@see [[m:IRB::Context#prompt_mode]], [[ref:lib:irb#customize_prompt]]

--- prompt_n -> String

��³�ԤΥץ��ץȤ�ɽ������ե����ޥå�ʸ������֤��ޤ���

@see [[m:IRB::Context#prompt_n=]], [[ref:lib:irb#customize_prompt]]

--- prompt_n=(val)

��³�ԤΥץ��ץȤ�ɽ������ե����ޥå�ʸ����� val �����ꤷ�ޤ���

[[m:IRB::Context#prompt_mode]] ���ѹ��˱ƶ�������������դ��Ƥ���������

@see [[m:IRB::Context#prompt_mode]], [[m:IRB::Context#prompt_mode=]],
     [[m:IRB::Context#prompt_n]], [[ref:lib:irb#customize_prompt]]

--- prompt_s -> String

ʸ������Υץ��ץȤ�ɽ������ե����ޥå�ʸ������֤��ޤ���

@see [[m:IRB::Context#prompt_s=]], [[ref:lib:irb#customize_prompt]]

--- prompt_s=(val)

ʸ������Υץ��ץȤ�ɽ������ե����ޥå�ʸ����� val �����ꤷ�ޤ���

@param val �ե����ޥåȤ�ʸ����ǻ��ꤷ�ޤ�������Ǥ������ƤˤĤ��Ƥϡ�
           [[ref:lib:irb#customize_prompt]] �򻲾Ȥ��Ƥ���������

[[m:IRB::Context#prompt_mode]] ���ѹ��˱ƶ�������������դ��Ƥ���������

@see [[m:IRB::Context#prompt_mode]], [[m:IRB::Context#prompt_mode=]],
     [[m:IRB::Context#prompt_s]], [[ref:lib:irb#customize_prompt]]

--- prompting? -> bool

�饤�֥�������ǻ��Ѥ��ޤ���

--- rc  -> bool
--- rc? -> bool

~/.irbrc �ʤɤ�����ե����뤬������ɤ߹��ߤ�Ԥ����ɤ������֤��ޤ���

@return ����ե�������ɤ߹��ߤ�Ԥ����� true ���֤��ޤ����Ԥ�ʤ���
        ��(irb �ε�ư���� -f ���ץ�������ꤷ�����)�� false ���֤���
        ����

#@# �嵭�� .irbrc ��¸�ߤ��ʤ����� true ���֤������顢��.irbrc ���ɤ�
#@# ����Ǥ����� true ���֤��פȤ������Ҥ�ߤ�ޤ�����
#@#
#@# �ѹ����Ƥ�ƶ����ʤ������ά���ޤ�����
#@# --- rc=(val)

--- return_format -> String

irb �Υץ��ץȤǤ�ɾ����̤�ɽ������ݤΥե����ޥåȤ�ʸ������֤��ޤ���

@see [[m:IRB::Context#return_format=]], [[d:print_format]]

--- return_format=(val)

irb �Υץ��ץȤǤ�ɾ����̤�ɽ������ݤΥե����ޥåȤ� val �����ꤷ�ޤ���

@see [[m:IRB::Context#return_format]], [[d:print_format]]

[[m:IRB::Context#prompt_mode]] ���ѹ��˱ƶ�������������դ��Ƥ���������

--- set_last_value(value) -> object

�饤�֥�������ǻ��Ѥ��ޤ���

--- thread -> Thread

���ߤΥ���åɤ��֤��ޤ���

@see [[m:Thread.current]]

--- use_readline  -> bool | nil
--- use_readline? -> bool | nil

[[lib:readline]] ��Ȥ����ɤ������֤��ޤ���

@return ����ͤ�äưʲ��Τ褦��ư��ޤ���

: true
    readline �饤�֥���Ȥ�
: false
    readline �饤�֥���Ȥ�ʤ�
: nil
    inf-ruby-mode �ʳ��� readline �饤�֥������Ѥ��褦�Ȥ��� (�ǥե����)

ư����ѹ����뤿��ˤ� .irbrc �ե�������� IRB.conf[:USE_READLINE] ����
��� irb ��ư���� --readline ���ץ����--noreadline ���ץ����λ���
��Ԥ��ޤ���

#@# �ѹ����Ƥ�ƶ����ʤ������ά���ޤ�����
#@#--- use_readline=(opt)

--- verbose -> bool | nil

ɸ����Ϥ˾ܺ٤ʥ�å���������Ϥ���褦�����ꤵ��Ƥ��뤫�ɤ������֤�
�ޤ���

[[m:IRB::Context#verbose?]] �Ȥ��̤Υ᥽�åɤǤ��������դ��Ƥ���������

@return �ܺ٤ʥ�å���������Ϥ���褦�����ꤵ��Ƥ������ true ����
        ���ޤ��������Ǥʤ����� false �� nil ���֤��ޤ���

@see [[m:IRB::Context#verbose?]], [[m:IRB::Context#verbose=]]

--- verbose? -> bool | nil

ɸ����Ϥ˾ܺ٤ʥ�å���������Ϥ��뤫�ɤ������֤��ޤ���

@return �ܺ٤ʥ�å���������Ϥ������ true ���֤��ޤ��������Ǥʤ���
        ��� false �� nil ���֤��ޤ���

�����ԤäƤ������([[m:IRB::Context#verbose]] �� true �� false ���֤�
���)�����ꤷ���̤��ư��ޤ��������ԤäƤ��ʤ����ϡ��ե�������
�ꤷ�� irb ��¹Ԥ������ʤɤ� true ���֤��ޤ���

#@until 1.9.2
[���] 1.9.2 �ʲ��Ǥ� nil �ʳ��� [[m:IRB::Context#verbose=]] �˻��ꤹ��
�Ⱦ�� nil ���֤��Զ�礬���������դ��Ƥ���������
#@end

@see [[m:IRB::Context#verbose]], [[m:IRB::Context#verbose=]]

--- verbose=(val)

ɸ����Ϥ˾ܺ٤ʥ�å���������Ϥ��뤫�ɤ����� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:VERBOSE] �����ꤹ����Ǥ�Ʊ�ͤ����Ԥ�
�ޤ���

false �� nil ����ꤷ�����Ǥ⡢[[m:IRB::Context#verbose?]] �� true ��
�֤����Ͼܺ٤ʥ�å���������Ϥ��������դ��Ƥ���������

@param val true ����ꤷ����硢�ܺ٤ʥ�å���������Ϥ��ޤ���false ��
           nil ����ꤷ����硢�ܺ٤ʥ�å���������Ϥ��ޤ���

@see [[m:IRB::Context#verbose]], [[m:IRB::Context#verbose?]]

--- workspace -> IRB::WorkSpace

�饤�֥�������ǻ��Ѥ��ޤ���

--- workspace=(val)

�饤�֥�������ǻ��Ѥ��ޤ���

#@# ���Ѥ���Ƥ��ʤ������ά���ޤ�����
#@# --- workspace_home -> nil

== Constants

--- NOPRINTING_IVARS -> [String]

�饤�֥�������ǻ��Ѥ��ޤ���

--- NO_INSPECTING_IVARS -> [String]

�饤�֥�������ǻ��Ѥ��ޤ���

--- IDNAME_IVARS -> [String]

�饤�֥�������ǻ��Ѥ��ޤ���
