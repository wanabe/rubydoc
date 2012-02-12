#@since 1.9.1
require irb/src_encoding
require irb/magic-file
#@end
require readline

irb �����Ϥ򰷤�����Υ��֥饤�֥��Ǥ���

�桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

= reopen IRB

== Constants

--- STDIN_FILE_NAME -> "(line)"

ɸ�����Ϥ���Ѥ���ݤΥե�����̾��ʸ������֤��ޤ���

= class IRB::InputMethod < Object

���Ū�����Ϥ�ɽ�����饹�Ǥ����饤�֥�������ǻ��Ѥ��ޤ���

== Class Methods

--- new(file = STDIN_FILE_NAME) -> IRB::InputMethod

���Ȥ��������ޤ���

== Instance Methods

--- file_name -> String

�ե�����̾��ʸ������֤��ޤ���

#@# ���Ѥ���Ƥ��ʤ��褦�ʤΤǾ�ά��
#@# --- prompt -> String
#@# --- prompt=(val)

--- gets

[[c:NotImplementedError]] ��ȯ�����ޤ���

@raise NotImplementedError ɬ��ȯ�����ޤ���

--- readable_atfer_eof? -> false

���Ϥ� EOF(End Of File)��ã��������ɤ߹��ߤ��Ԥ��뤫�ɤ������֤��ޤ���

= class IRB::StdioInputMethod < IRB::InputMethod

ɸ�����Ϥ�ɽ�����饹�Ǥ����饤�֥�������ǻ��Ѥ��ޤ���

== Class Methods

--- new -> IRB::StdioInputMethod

���Ȥ��������ޤ���

== Instance Methods

--- gets -> String

ɸ�����Ϥ���ʸ����� 1 ���ɤ߹��ߤޤ���

#@# �ޤ����ƤӽФ��٤� irb �Υץ��ץȤ�ɸ����Ϥ�ɽ�����ޤ���

--- eof? -> bool

���Ϥ� EOF(End Of File)��ã�������ɤ������֤��ޤ���

--- readable_atfer_eof? -> true

���Ϥ� EOF(End Of File)��ã��������ɤ߹��ߤ��Ԥ��뤫�ɤ������֤��ޤ���

--- line(line_no) -> String

���� line_no �ǻ��ꤷ���������Ϥ��ñ�̤��֤��ޤ���

@param line_no ����������ֹ�������ǻ��ꤷ�ޤ���

--- encoding -> Encoding

���Ȥ�ʸ�����󥳡��ǥ��󥰤��֤��ޤ���

= class IRB::FileInputMethod < IRB::InputMethod

�ե����뤫������Ϥ�ɽ�����饹�Ǥ����饤�֥�������ǻ��Ѥ��ޤ���

== Class Methods

--- new(path) -> IRB::FileInputMethod

���Ȥ��������ޤ���

@param path �ѥ���ʸ����ǻ��ꤷ�ޤ���

== Instance Methods

--- gets -> String

�ɤ߹�����ե����뤫��ʸ����� 1 ���ɤ߹��ߤޤ���

#@# �ޤ����ƤӽФ��٤� irb �Υץ��ץȤ�ɸ����Ϥ�ɽ�����ޤ���

--- encoding -> Encoding

�ɤ߹�����ե������ʸ�����󥳡��ǥ��󥰤��֤��ޤ���

= class IRB::ReadlineInputMethod < IRB::InputMethod

include Readline

readline ���Ѥ���ɸ�����Ϥ�������Ϥ�ɽ�����饹�Ǥ����饤�֥�������ǻ�
�Ѥ��ޤ���[[lib:readline]] �� require �˼��Ԥ��������������ޤ���

== Class Methods

--- new -> IRB::ReadlineInputMethod

���Ȥ��������ޤ���

== Instance Methods

--- gets -> String

ɸ�����Ϥ���ʸ����� 1 ���ɤ߹��ߤޤ���

--- eof? -> bool

���Ϥ� EOF(End Of File)��ã�������ɤ������֤��ޤ���

--- readable_atfer_eof? -> false

���Ϥ� EOF(End Of File)��ã��������ɤ߹��ߤ��Ԥ��뤫�ɤ������֤��ޤ���

--- line(line_no) -> String

���� line_no �ǻ��ꤷ���������Ϥ��ñ�̤��֤��ޤ���

@param line_no ����������ֹ�������ǻ��ꤷ�ޤ���

--- encoding -> Encoding

���Ȥ�ʸ�����󥳡��ǥ��󥰤��֤��ޤ���
