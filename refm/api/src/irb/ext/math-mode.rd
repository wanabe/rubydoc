require mathn

irb ���ޥ�ɤǼ¹Է�̤� [[m:Object#inspect]] �������
[[c:Object#to_s]] ������̤�ɽ�����뤿��Υ��֥饤�֥��Ǥ���

conf.math_mode �� IRB.conf[:MATH_MODE] �� true �����ꤹ����ǻ��ѤǤ���
������������inspect_mode �����ꤵ��Ƥ������� inspect_mode ��ͥ�褵��
�ޤ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ�
��ޤ���

= reopen IRB::Context

== Instance Methods

--- math_mode -> bool
--- math?     -> bool

math_mode ��ͭ�����ɤ������֤��ޤ���

@see [[m:IRB::Context#inspect?]]

--- math_mode=(opt)

math_mode ��ͭ���ˤ��뤫�ɤ�������ꤷ�ޤ���

@param opt math_mode ��ͭ���ˤ������ true ����ꤷ�ޤ���

@raise IRB::CantReturnToNormalMode ���� math_mode �ξ��֤� opt ��
                                   false ����ꤷ������ȯ�����ޤ���

#@# TODO: nil �ϻ���Ǥ���Τ�����ʤ��Τ���ǧ���롣

--- inspect? -> bool

math_mode ��ͭ�����ɤ������֤��ޤ���

��������inspect_mode ��ͥ�褵��뤿�ᡢinspect_mode ��ͭ���ʾ��ˤ�
false ���֤��ޤ���

@see [[m:IRB::Context#math?]]
