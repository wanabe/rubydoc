require irb/cmd/chws
require irb/cmd/help
require irb/cmd/load
require irb/cmd/pushws
require irb/cmd/subirb
require irb/ext/history
require irb/ext/tracer
require irb/ext/math-mode
require irb/ext/use-loader
require irb/ext/save-history

#@# irb/cmd/fork.rb �Ϥɤ������ require ����ʤ������ά���ޤ�����

irb ���ĥ���뤿��Υ��֥饤�֥��Ǥ���

= module IRB::ExtendCommandBundle

irb �Υ��ޥ�ɤ��ĥ���뤿��Υ⥸�塼��Ǥ���

== Singleton Methods

--- def_extend_command(cmd_name, cmd_class, load_file = nil, *aliases) -> object

irb �� cmd_name �ǻ��ꤷ���᥽�åɤ��¹ԤǤ���褦�˳�ĥ���ޤ���

@param cmd_name �᥽�å�̾�� [[c:Symbol]] ��ʸ����ǻ��ꤷ�ޤ���
                cmd_class �ǻ��ꤹ�륯�饹�� execute �᥽�åɤȤ�����
                �����Ƥ���ɬ�פ�����ޤ���

@param cmd_class ���ꤷ����ĥ��������줿���饹̾�� [[c:Symbol]]��
                 [[c:String]]��[[c:Class]] �Τ����줫�ǻ��ꤷ�ޤ���
                 �ʤ������Υ��饹�� [[c:IRB::ExtendCommand]] �ʲ������
                 ����ɬ�פ�����ޤ���

@param load_file ���ꤷ���᥽�åɤ�������줿�ե�����̾���
                 �ꤷ�ޤ������Υե�����ϼ�ưŪ�� require ����ޤ���

@param aliases cmd_name ����̾�� [[c:Symbol]] �ȥե饰������ǻ��ꤷ��
               ����ʣ�����ꤹ������Ǥ��ޤ����ե饰��
               [[m:IRB::ExtendCommandBundle::NO_OVERRIDE]]��
               [[m:IRB::ExtendCommandBundle::OVERRIDE_PRIVATE_ONLY]]��
               [[m:IRB::ExtendCommandBundle::OVERRIDE_ALL]] �Τ����줫
               ����ꤷ�ޤ���

--- extend_object(obj) -> IRB::ExtendCommandBundle

[[c:IRB::ExtendCommandBundle]] ������Ѥߤγ�ĥ�˻��ꤵ�줿�����ꥢ����
obj ��������ޤ���

@param obj [[c:IRB::ExtendCommandBundle]] �� extend �������֥�������

--- install_extend_commands -> object

����Ѥߤγ�ĥ���ɤ߹��ߤޤ���

irb �ǰʲ��Υ᥽�åɤ����ѤǤ���褦�ˤʤ�ޤ���(���줾�� 1 �Ĥ���ȴ��)

 * irb_current_working_workspace
 * irb_change_workspace
 * irb_workspaces
 * irb_push_workspace
 * irb_pop_workspace
 * irb_load
 * irb_require
 * irb_source
 * irb
 * irb_jobs
 * irb_fg
 * irb_kill
 * irb_help

[[lib:irb/extend-command]] �� require ���줿���˥饤�֥�������Ǽ�ưŪ
�˼¹Ԥ���ޤ���

@see [[m:IRB::ExtendCommandBundle.install_extend_commands]]

--- irb_original_method_name(method_name) -> String

method_name �ǻ��ꤷ���᥽�åɤ� irb ��ǤΥ����ꥢ�����֤��ޤ����饤��
��������ǻ��Ѥ��ޤ���

@param method_name �᥽�å�̾�� [[c:Symbol]] ��ʸ����ǻ��ꤷ�ޤ���

@see [[m:IRB::ExtendCommandBundle#install_alias_method]]

== Instance Methods

--- install_alias_method(to, from, override = NO_OVERRIDE)

�᥽�åɤΥ����ꥢ����������ޤ����饤�֥�������ǻ��Ѥ��ޤ���

@param to �������᥽�å�̾�� [[c:Symbol]] ��ʸ����ǻ��ꤷ�ޤ���

@param from ���Υ᥽�å�̾�� [[c:Symbol]] ��ʸ����ǻ��ꤷ�ޤ���

@param override �������᥽�å�̾������ѤߤǤ��ä����ˤ��Υ᥽�åɤ�
                ��񤭤��뤫�ɤ�����
                [[m:IRB::ExtendCommandBundle::NO_OVERRIDE]]��
                [[m:IRB::ExtendCommandBundle::OVERRIDE_PRIVATE_ONLY]]��
                [[m:IRB::ExtendCommandBundle::OVERRIDE_ALL]] �Τ����줫
                �ǻ��ꤷ�ޤ���

--- irb_exit(ret = 0) -> object

irb ��λ���ޤ���ret �ǻ��ꤷ�����֥������Ȥ��֤��ޤ���

@param ret ����ͤ���ꤷ�ޤ���

�桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

--- irb_context -> IRB::Context

���ߤ� irb �˴ؤ��� [[c:IRB::Context]] ���֤��ޤ���

== Constants

#@# �����Ѥ����
#@# --- EXCB

--- NO_OVERRIDE -> 0

irb �ǥ��ޥ�ɤΥ����ꥢ�����������ݤˡ����ˤ��줫�饨���ꥢ����˻�
�ꤷ���᥽�å�̾��Ʊ̾�Υ᥽�åɤ�����ѤߤǤ��ä���硢�����ꥢ������
�����ʤ�������ꤹ��ե饰�Ǥ���

@see [[m:IRB::ExtendCommandBundle.def_extend_command]]

--- OVERRIDE_ALL -> 1

irb �ǥ��ޥ�ɤΥ����ꥢ�����������ݤˡ����ˤ��줫�饨���ꥢ����˻�
�ꤷ���᥽�å�̾��Ʊ̾�Υ᥽�åɤ�����ѤߤǤ��ä����Ǥ⡢��˥�����
������������������ꤹ��ե饰�Ǥ���

@see [[m:IRB::ExtendCommandBundle.def_extend_command]]

--- OVERRIDE_PRIVATE_ONLY -> 2

irb �ǥ��ޥ�ɤΥ����ꥢ�����������ݤˡ����ˤ��줫�饨���ꥢ����˻�
�ꤷ���᥽�å�̾��Ʊ̾�� public �᥽�åɤ�����ѤߤǤϤʤ��ä����Τߡ�
�����ꥢ����������������ꤹ��ե饰�Ǥ���

@see [[m:IRB::ExtendCommandBundle.def_extend_command]]

= module IRB::ContextExtender

[[c:IRB::Context]] ���ĥ���뤿��Υ⥸�塼��Ǥ���

== Singleton Methods

--- install_extend_commands -> object

����Ѥߤγ�ĥ���ɤ߹��ߤޤ���

[[c:IRB::Context]] �ǰʲ��Υ᥽�åɤ����ѤǤ���褦�ˤʤ�ޤ���

 * eval_history=
 * use_tracer=
 * math_mode=
 * use_loader=
 * save_history=

[[lib:irb/extend-command]] �� require ���줿���˥饤�֥�������Ǽ�ưŪ
�˼¹Ԥ���ޤ���

@see [[m:IRB::ContextExtender.def_extend_command]]

--- def_extend_command(cmd_name, load_file, *aliases) -> object

[[c:IRB::Context]] �� cmd_name �ǻ��ꤷ���᥽�åɤ��¹ԤǤ���褦�˳�ĥ
���ޤ���

@param cmd_name �᥽�å�̾�� [[c:Symbol]] �ǻ��ꤷ�ޤ���
                [[c:IRB::Context]] ���饹�Υ��󥹥��󥹥᥽�åɤȤ�����
                �����Ƥ���ɬ�פ�����ޤ���

@param load_file cmd_name �ǻ��ꤷ���᥽�åɤ�������줿�ե�����̾���
                 �ꤷ�ޤ������Υե�����ϼ�ưŪ�� require ����ޤ���

@param aliases cmd_name ����̾�� [[c:Symbol]] �ǻ��ꤷ�ޤ���ʣ�����ꤹ������Ǥ��ޤ���

#@# == Constants
#@# �����Ѥ����
#@# --- CE
#@#
#@# ���Ѥ���Ƥ��ʤ��褦�ʤΤǾ�ά���ޤ�����
#@# = module IRB::MethodExtender
#@#
#@# == Instance Methods
#@#
#@# --- def_pre_proc(base_method, extend_method)
#@# --- def_post_proc(base_method, extend_method)
#@# --- new_alias_name(name, prefix = "__alias_of__", postfix = "__")
