�Ƽ� TestRunner ��������뤿��˻Ȥ��ޤ���

Unit �ƥ��Ȥ�Ԥ����������Υ桼���������Υ饤�֥��� require ����
ɬ�פϤ���ޤ���

= module Test::Unit::UI
�Ƽ� TestRunner ��������뤿��Υ⥸�塼��Ǥ���

== Constants

#@since 1.8.1
--- SILENT        -> Integer

�ƥ��ȷ�̤ν��ϥ�٥��ɽ������Ǥ���������Ϥ��ޤ���

--- PROGRESS_ONLY -> Integer

�ƥ��ȷ�̤ν��ϥ�٥��ɽ������Ǥ����ƥ��Ȥο�Ľ��ɽ����.�פ��������Ϥ���ޤ���

--- NORMAL        -> Integer

�ƥ��ȷ�̤ν��ϥ�٥��ɽ������Ǥ�������Ū�ʽ��Ϥ�Ԥ��ޤ���

--- VERBOSE       -> Integer

�ƥ��ȷ�̤ν��ϥ�٥��ɽ������Ǥ����ܺ٤ʽ��Ϥ�Ԥ��ޤ���
#@end

= module Test::Unit::UI::TestRunnerUtilities

�Ƽ� TestRunner ��������뤿��Υ⥸�塼��Ǥ���

== Instance Methods
--- run(suite, output_level = NORMAL)    -> Test::Unit::TestResult

������ TestRunner ���������ơ�Ϳ����줿 TestSuite �Υƥ��Ȥ�¹Ԥ��ޤ���

@param suite �¹Ԥ������ƥ��Ȥ��ݻ����Ƥ��� TestSuite ���֥������Ȥ�
             TestCase ���֥������Ȥ�Ϳ���ޤ���

@param output_level ���ϥ�٥����ꤷ�ޤ�������Ǥ���Τϰʲ���4�ĤǤ���
 * Test::Unit::UI::SILENT
 * Test::Unit::UI::PROGRESS_ONLY
 * Test::Unit::UI::NORMAL
 * Test::Unit::UI::VERBOSE

--- start_command_line_test    -> Test::Unit::TestResult

[[m:Kernel::ARGV]] ����Ϥ��ơ�ARGV[0] ��Ϳ����줿TestRunner �򿷤���
�������ơ��ƥ��Ȥ�¹Ԥ��ޤ���

ARGV �������ä���硢��å���������Ϥ��ƥץ�����λ���ޤ���
