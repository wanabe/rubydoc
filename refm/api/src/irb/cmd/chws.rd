require irb/cmd/nop
require irb/ext/change-ws

irb ��� irb_current_working_workspace��irb_change_workspace ���ޥ�ɤ�
����γ�ĥ������������֥饤�֥��Ǥ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ�
��ޤ���

= class IRB::ExtendCommand::CurrentWorkingWorkspace < IRB::ExtendCommand::Nop

irb ��� irb_current_working_workspace ���ޥ�ɤΤ���γ�ĥ�����������
�饹�Ǥ���

== Instance Methods

--- execute(*obj) -> obj

irb �� self ���֤��ޤ���

@param obj ���Ѥ��ޤ���

= class IRB::ExtendCommand::ChangeWorkspace < IRB::ExtendCommand::Nop

irb ��� irb_change_workspace ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> obj

irb �� self �� obj �ǻ��ꤷ�����֥������Ȥ����ꤷ�ޤ���self �����ꤵ��
�����֥������Ȥ��֤��ޤ���

@param obj Ǥ�դΥ��֥������Ȥ����Ǥ��ޤ���ʣ�����ꤷ��������Ƭ�Υ�
           �֥������ȤΤߤ����ꤵ��ޤ���
