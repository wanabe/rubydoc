require irb/cmd/nop
require irb/ext/multi-irb

irb ��� irb��irb_jobs��irb_fg��irb_kill ���ޥ�ɤΤ���γ�ĥ���������
���֥饤�֥��Ǥ���

= class IRB::ExtendCommand::IrbCommand < IRB::ExtendCommand::Nop

irb ��� irb ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> IRB::Irb

���������� irb ���󥿥ץ꥿��ư���ޤ���

@param obj ���������� irb ���󥿥ץ꥿�� self �ˤ��륪�֥������Ȥ����
           ���ޤ�����ά�������� irb ��ư�����Ȥ��� main ���֥�����
           �Ȥ� self �ˤ��ޤ���

= class IRB::ExtendCommand::Jobs < IRB::ExtendCommand::Nop

irb ��� irb_jobs ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute -> IRB::JobManager

���� irb �Υꥹ�Ȥ��֤��ޤ���

= class IRB::ExtendCommand::Foreground < IRB::ExtendCommand::Nop

irb ��� irb_fg ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> IRB::Irb

���ꤷ������ irb �˰�ư���ޤ���

@param obj ��ư���륵�� irb ���̤���ʲ��Τ����줫�Υ��֥������Ȥ���ꤷ�ޤ���

 * irb ���󥿥ץ꥿�ֹ�
 * irb ���֥�������
 * ����å� ID
 * �ƥ��󥿥ץ꥿�� self (��irb(obj)�פǵ�ư�������� obj)

= class IRB::ExtendCommand::Kill < IRB::ExtendCommand::Nop

irb ��� irb_kill ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*obj) -> object

���ꤷ������ irb ����ߤ��ޤ���

@param obj ��ߤ��륵�� irb ���̤���ʲ��Τ����줫�Υ��֥������Ȥ���ꤷ�ޤ���

 * irb ���󥿥ץ꥿�ֹ�
 * irb ���֥�������
 * ����å� ID
 * �ƥ��󥿥ץ꥿�� self (��irb(obj)�פǵ�ư�������� obj)
