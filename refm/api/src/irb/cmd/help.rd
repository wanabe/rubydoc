#@# require rdoc/ri/driver
#@# require rdoc/ri/util
require irb/cmd/nop

irb ��� help ���ޥ�ɤΤ���γ�ĥ������������֥饤�֥��Ǥ���

= class IRB::ExtendCommand::Help < IRB::ExtendCommand::Nop

irb ��� help ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(*names) -> nil

RI ���� Ruby �Υɥ�����Ȥ򻲾Ȥ��ޤ���

  irb(main):001:0> help String#match
  ...

@param names ���Ȥ��������饹̾��᥽�å�̾�ʤɤ�ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.2
names ����ꤷ�ʤ��ä����ϡ�RI ������Ū�ʥ⡼�ɤǵ�ư���ޤ����᥽�å�
̾�ʤɤ����Ϥ�����ǥɥ�����Ȥθ������Ԥ��ޤ������ϤΥ����䴰�򤹤�
�����Ǥ��ޤ����ޤ������Ԥ����Ϥ������ irb �Υץ��ץȤ��������Ǥ���
����

  irb(main):001:0> help

  Enter the method name you want to look up.
  You can use tab to autocomplete.
  Enter a blank line to exit.

  >> String#match
  String#match

  (from ruby core)
  ------------------------------------------------------------------------------
    str.match(pattern)        -> matchdata or nil
    str.match(pattern, pos)   -> matchdata or nil
  ...
#@end

#@# TODO: RDoc::RI::Driver.new �� SystemExit �ˤʤ�����ɵ���
