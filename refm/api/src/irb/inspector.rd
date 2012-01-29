
irb ���ޥ�ɤǼ¹Է�̤ν�������(inspect_mode)��������뤿��Υ��֥饤
�֥��Ǥ���

= reopen IRB

== Singleton Methods

--- Inspector(inspect, init = nil) -> IRB::Inspector

[[c:IRB::Inspector]] ���֥������Ȥ��������ޤ���

@param inspect �¹Է�̤ν��ϤΤ���μ�³�����֥������Ȥ���ꤷ�ޤ���

@param init inspect_mode �ν�����Τ���μ�³�����֥������Ȥ���ꤷ�ޤ���
            ���餫���� require ��ɬ�פʾ��ʤɤˡ�proc { require "foo" }
            �Ȥ��ä������Ԥ��ޤ���

= class IRB::Inspector

�¹Է�̤ν��Ϥ�Ԥ�����Υ��饹�Ǥ���

== Instance Methods

--- init -> ()

�饤�֥�������ǻ��Ѥ��ޤ���

--- inspect_value(v) -> ()

�饤�֥�������ǻ��Ѥ��ޤ���

= object IRB::INSPECTORS

������줿 inspect_mode ��������� [[c:Hash]] ���֥������ȤǤ���

--- keys_with_inspector(inspector) -> Array

�����ǻ��ꤷ�� [[c:IRB::Inspector]] ���б����� key ��������֤��ޤ���

@param inspector [[c:IRB::Inspector]] ���֥������Ȥ���ꤷ�ޤ���

  IRB::INSPECTORS.keys_with_inspector(IRB::INSPECTORS[true])
  # => [true, :p, "p", :inspect, "inspect"]

--- def_inspector(key, arg = nil) { |v| ... } -> object

�������¹Է�̤ν���������������ޤ���

@param key conf.inspect_mode �� IRB.conf[:INSPECT_MODE] �˻��ꤹ�륭��
           ���֥������Ȥ���ꤷ�ޤ����������ꤷ�������������������
           �Ƥ��оݤˤʤ�ޤ���

@param arg �֥�å�����ꤹ����ˤϡ�inspect_mode �ν�����Τ���μ�³
           �����֥������Ȥ���ꤷ�ޤ������餫���� require ��ɬ�פʾ��
           �ʤɤˡ�proc { require "foo" } �Ȥ��ä������Ԥ��ޤ���
           �֥�å�����ꤷ�ʤ����ˤϡ��¹Է�̤ν��ϤΤ���μ�³����
           �֥������Ȥ���ꤷ�ޤ���

��.

  # .irbrc
  IRB::INSPECTORS.def_inspector([:test]){|v| v.to_s * 2 }

  $ irb --inspect test
  irb(main):001:0> :abc # => abcabc

@see [[ref:lib:irb#inspect_mode]]
