require irb/cmd/nop
require irb/ext/workspaces

irb ��� irb_workspaces��irb_push_workspace��irb_pop_workspace ���ޥ��
�Τ���γ�ĥ������������֥饤�֥��Ǥ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ�
��ޤ���

= class IRB::ExtendCommand::Workspaces < IRB::ExtendCommand::Nop

irb ��� irb_workspaces ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> [IRB::WorkSpace]

���ߤΥ�����ڡ����ΰ������֤��ޤ���

@param obj ���Ѥ��ޤ���

= class IRB::ExtendCommand::PushWorkspace < IRB::ExtendCommand::Nop

irb ��� irb_push_workspace ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> [IRB::WorkSpace]

UNIX �����륳�ޥ�ɤ� pushd ��Ʊ���Ǥ���

@param obj [[IRB::WorkSpace]] ���֥������Ȥ���ꤷ�ޤ���ʣ�����ꤷ����
           �����Ƭ�Υ��֥������ȤΤߤ����ꤵ��ޤ���

= class IRB::ExtendCommand::PopWorkspace < IRB::ExtendCommand::Nop

irb ��� irb_pop_workspace ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> [IRB::WorkSpace]

UNIX �����륳�ޥ�ɤ� popd ��Ʊ���Ǥ���

@param obj ���Ѥ��ޤ���
