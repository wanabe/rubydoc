require tracer

irb �ؤ����Ϥ�ɾ��������� [[lib:tracer]] �饤�֥�����Ѥ��ƥȥ졼��
���Ϥ�Ԥ���ǽ���󶡤��륵�֥饤�֥��Ǥ���

conf.use_tracer �� IRB.conf[:USE_TRACER] �� true �����ꤹ����ǻ��ѤǤ�
�ޤ�����������[[m:Tracer.verbose?]] �Ͼ�� false �Ǽ¹Ԥ���ޤ���

= reopen IRB::Context

== Instance Methods

--- use_tracer  -> bool
--- use_tracer? -> bool

irb �ؤ����Ϥ�ɾ��������� [[lib:tracer]] ��ͭ�����ɤ������֤��ޤ���

IRB.conf[:USE_TRACER] �򻲾Ȥ�����Ǥ�Ʊ�ͤλ����Ԥ��ޤ���

@see [[lib:tracer]], [[m:IRB::Context#use_tracer=]]

--- use_tracer=(val)

irb �ؤ����Ϥ�ɾ��������� [[lib:tracer]] ��ͭ���ˤ��뤫�ɤ����� val ��
���ꤷ�ޤ���

.irbrc �ե�������� IRB.conf[:USE_TRACER] �����ꤹ����Ǥ�Ʊ�ͤλ�����
���ޤ���

@param val [[lib:tracer]] ��ͭ���ˤ������ true ����ꤷ�ޤ���

@see [[lib:tracer]], [[m:IRB::Context#use_tracer]]
