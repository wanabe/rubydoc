require e2mmap

irb �����Ϥ򰷤�����Υ��֥饤�֥��Ǥ���

= class IRB::OutputMethod

���Ū�ʽ��Ϥ�ɽ�����饹�Ǥ����饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- print(*objs)

[[c:NotImplementedError]] ��ȯ�����ޤ���

@param objs Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

@raise NotImplementedError ɬ��ȯ�����ޤ���

--- printn(*objs) -> nil

�� obj �� self �˽��Ϥ����Ǹ�˲��Ԥ���Ϥ��ޤ���

@param objs Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

#@# parse_printf_format ��  %%%%%I �Τ褦�� format �˥ޥå�����?
#@# �ޤ���%I ����ʤ��ȡ�printf �� ArgumentError �� raise ����ΤǤ�?
#@# --- printf(format, *opts) -> nil
#@# --- parse_printf_format(format, opts) -> [String, Array]

--- puts(*objs) -> object

�� obj �� self �˽��Ϥ������줾��θ�˲��Ԥ���Ϥ��ޤ���

@param objs Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

--- pp(*objs) -> object

�� obj �� inspect ����ʸ����� self �˽��Ϥ����Ǹ�˲��Ԥ���Ϥ��ޤ���

@param objs Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

--- ppx(prefix, *objs) -> object

���� prefix + �� obj �� inspect ����ʸ����� self �˽��Ϥ����Ǹ�˲���
����Ϥ��ޤ���

@param prefix �� obj ����Ƭ���ɵ�����ʸ�������ꤷ�ޤ���

@param objs Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���

#@# ���Ѥ���Ƥ��ʤ�����1.9.1 �Ǻ������Ƥ���������ά���ޤ�����
#@# --- foo(format)

= class IRB::StdioOutputMethod < IRB::OutputMethod

ɸ����Ϥ�ɽ�����饹�Ǥ����饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- print(*objs) -> nil

������ɸ����Ϥ˽��Ϥ��ޤ���

@param objs Ǥ�դΥ��֥������Ȥ���ꤷ�ޤ���
