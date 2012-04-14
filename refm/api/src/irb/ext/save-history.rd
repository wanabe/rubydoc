require readline

[[c:IRB::Context]] �˥ҥ��ȥ���ɤ߹��ߡ���¸�ε�ǽ���󶡤��륵�֥饤��
���Ǥ���

conf.save_history �� IRB.conf[:SAVE_HISTORY] �˥ҥ��ȥ����¸���������
������ǻ��ѤǤ��ޤ���

��������[[lib:readline]] �����ѤǤ��ʤ��Ķ��Ǥϥҥ��ȥ���ɤ߹��ߡ���¸
�ϹԤ��ޤ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ�
��ޤ���

= reopen IRB::Context

== Instance Methods

--- init_save_history -> ()

���Ȥλ��� [[c:IRB::InputMethod]] ���֥������Ȥ� irb �Υҥ��ȥ�򰷤���
�褦�ˤ��ޤ���

@see [[m:IRB::HistorySavingAbility.extended]]

--- save_history -> Integer | nil

����κ�����¸����� [[c:Integer]] �� nil ���֤��ޤ���

IRB.conf[:SAVE_HISTORY] �򻲾Ȥ�����Ǥ�Ʊ�ͤλ����Ԥ��ޤ���

@return ����κ�����¸����� [[c:Integer]] �� nil ���֤��ޤ���0 �ʲ���
        nil ���֤��������ɲä���¸�ϹԤ��ޤ���

@see [[ref:lib:irb#history]]

--- save_history=(val)

����κ�����¸����� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:SAVE_HISTORY] �����ꤹ����Ǥ�Ʊ�ͤλ���
�Ԥ��ޤ���

@param val ����κ�����¸����� [[c:Integer]] �ǻ��ꤷ�ޤ���0 �ʲ���
           nil ���֤��������ɲä���¸�ϹԤ��ޤ��󡣸��ߤη����꾮��
           ���ͤ����ꤷ�����ϡ��ǿ������򤫤���ꤷ�����ʬ�Τߤ���¸
           ����ޤ���

@see [[ref:lib:irb#history]]

--- history_file -> String | nil

����ե�����Υѥ����֤��ޤ���

IRB.conf[:HISTORY_FILE] �򻲾Ȥ�����Ǥ�Ʊ�ͤλ����Ԥ��ޤ���

@return ����ե�����Υѥ��� [[c:String]] �� nil ���֤��ޤ���nil ���֤�
        �����ϡ�~/.irb_history ��������¸����ޤ���

@see [[ref:lib:irb#history]]

--- history_file=(hist)

����ե�����Υѥ��� val �����ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:HISTORY_FILE] �����ꤹ����Ǥ�Ʊ�ͤλ���
�Ԥ��ޤ���

@param hist ����ե�����Υѥ���ʸ����ǻ��ꤷ�ޤ���

@see [[ref:lib:irb#history]]

= module IRB::HistorySavingAbility

include Readline

[[c:IRB::HistorySavingAbility]] �� extend �������֥������Ȥ� irb �Υҥ�
�ȥ���ɤ߹��ߡ���¸�ε�ǽ���󶡤���⥸�塼��Ǥ���

== Class Methods

--- extended(obj) -> object

obj �� irb �Υҥ��ȥ���ɤ߹��ߡ���¸�ε�ǽ���󶡤��ޤ���

obj ���֤��ޤ���

@param obj [[c:IRB::HistorySavingAbility]] �� extend �������֥������ȤǤ���

== Instance Methods

--- load_history -> ()

irb �Υҥ��ȥ������ե����뤫���ɤ߹��ߤޤ���

@see [[ref:lib:irb#history]]

--- save_history -> ()

irb �Υҥ��ȥ������ե��������¸���ޤ���

@see [[ref:lib:irb#history]]
