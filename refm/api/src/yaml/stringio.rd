[[lib:stringio]] �饤�֥�꤬���ѤǤ��ʤ��Ķ���������뤿��Υ��֥饤��
���Ǥ���

�饤�֥�������ǻ��Ѥ��� [[c:StringIO]] ��Ʊ̾�Υ��饹��������ޤ���

#@since 1.9.2
= reopen Syck
#@else
= reopen YAML
#@end

== Class Methods

--- make_stream(io) -> StringIO | IO

�����򸵤˥��ȥ꡼�४�֥������Ȥ�������ޤ���

@param io [[c:IO]]��[[c:String]] ���֥������Ȥ����Υ��֥��饹����ꤷ�ޤ���

@raise YAML::Error ������ [[c:IO]]��[[c:String]] ���֥������ȤΥ��֥���
                   ���ǤϤʤ��ä�����ȯ�����ޤ���

[���] [[lib:stringio]] �� require �������� LoadError �ˤʤ�Ķ��Ǥ���
���ѤǤ��ʤ�������դ��Ƥ���������
