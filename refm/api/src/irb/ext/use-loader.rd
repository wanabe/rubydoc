require irb/cmd/load
require irb/ext/loader

load �ޤ��� require ���� irb �Υե������ɤ߹��ߵ�ǽ(irb_load��
irb_require)��Ȥ��褦�����ꤹ�뵡ǽ���󶡤��륵�֥饤�֥��Ǥ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

= reopen IRB::ExtendCommandBundle

== Instance Methods

--- irb_load(*opts, &b) -> nil

���ߤ� irb �˴ؤ��� [[c:IRB::Context]] ���Ф��� irb_load ���ޥ�ɤ�¹�
���ޤ���

@see [[m:IRB::ExtendCommand::Load#execute]]

--- irb_require(*opts, &b) -> bool

���ߤ� irb �˴ؤ��� [[c:IRB::Context]] ���Ф��� irb_require ���ޥ�ɤ�
�¹Ԥ��ޤ���

@see [[m:IRB::ExtendCommand::Require#execute]]

= reopen IRB::Context

== Instance Methods

--- use_loader  -> bool
--- use_loader? -> bool

load �ޤ��� require ���� irb �Υե������ɤ߹��ߵ�ǽ(irb_load��
irb_require)��Ȥ����ɤ������֤��ޤ���

IRB.conf[:USE_LOADER] �򻲾Ȥ�����Ǥ�Ʊ�ͤλ����Ԥ��ޤ���

#@# �ʲ����ɤ�⤽���ʤΤǾ�ά������ irb �ޤǤ�ȿ�Ǥ���ʤ��ä���
#@# use_loader ���ͤ� irb ���Τ�ȿ�Ǥ���ޤ���

@see [[m:IRB::Context#use_loader=]]

--- use_loader=(opt)

load �ޤ��� require ���� irb �Υե������ɤ߹��ߵ�ǽ(irb_load��
irb_require)��Ȥ����ɤ��������ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:USE_LOADER] �����ꤹ����Ǥ�Ʊ�ͤλ�����
���ޤ���

#@# use_loader ���ͤ� irb ���Τ�ȿ�Ǥ���ޤ���

�ǥե�����ͤ� false �Ǥ���

@see [[m:IRB::Context#use_loader?]]
