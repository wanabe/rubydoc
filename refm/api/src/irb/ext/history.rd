
[[c:IRB::Context]] �˼¹Է�̤�������ݻ����뵡ǽ���󶡤��륵�֥饤�֥�
��Ǥ���

conf.eval_history �� IRB.conf[:EVAL_HISTORY] �� [[c:Integer]] �����ꤹ
����ǻ��ѤǤ��ޤ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ�
��ޤ���

= reopen IRB::Context

== Instance Methods

--- eval_history -> Integer | nil

�¹Է�̤�����κ�����¸����� [[c:Integer]] �� nil ���֤��ޤ���

IRB.conf[:EVAL_HISTORY] �򻲾Ȥ�����Ǥ�Ʊ�ͤλ����Ԥ��ޤ���

@return ����κ�����¸����� [[c:Integer]] �� nil ���֤��ޤ���0 ���֤�
        ������̵���¤���¸���ޤ���nil ���֤��������ɲä���¸�ϹԤ��ޤ���

@see [[m:IRB::Context#eval_history=]]

--- eval_history=(val)

�¹Է�̤�����κ�����¸����� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:EVAL_HISTORY] �����ꤹ����Ǥ�Ʊ�ͤλ���
�Ԥ��ޤ���

@param val �¹Է�̤�����κ�����¸����� [[c:Integer]] �� nil �ǻ��ꤷ
           �ޤ���0 ����ꤷ������̵���¤��������¸���ޤ������ߤ��ͤ�
           ��⾮�����ͤ���ꤷ���������򤬤��η���˽̾�����ޤ���
           nil ����ꤷ������������ɲä�����ʾ�Ԥ��ʤ��ʤ�ޤ���

@see [[m:IRB::Context#eval_history]]
