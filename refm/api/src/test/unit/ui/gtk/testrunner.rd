require test/unit/ui/testrunnerutilities
require test/unit/ui/testrunnermediator

GTK ���Ѥ��� UI ��ǥ�˥åȥƥ��Ȥ�¹Ԥ�����̤�ɽ�����뤿��Υ饤��
���Ǥ���

= class Test::Unit::UI::GTK::TestRunner < Object
extend Test::Unit::UI::TestRunnerUtilities

GTK ���Ѥ��� UI �� Test::Unit::TestSuite ��¹Ԥ��ޤ���

���ε�ǽ�����Ѥ���ˤϡ�GTK �γ�ĥ�饤�֥��򥤥󥹥ȡ��뤹��ɬ�פ���
��ޤ���

== Class Methods
--- new(suite, output_level = NORMAL)   -> Test::Unit::UI::GTK::TestRunner

TestRunner ���֥������Ȥ����������֤��ޤ���

@param suite �¹Ԥ������ƥ��Ȥ��ݻ����Ƥ��� TestSuite ���֥������Ȥ�
             TestCase ���֥������Ȥ�Ϳ���ޤ���

@param output_level ���ϥ�٥����ꤷ�ޤ���

���� output_level �ˤϰʲ��� 4 �ĤΤ����줫����ꤷ�ޤ����ܤ�����
[[c:Test::Unit::UI]] ��������������

 * Test::Unit::UI::SILENT
 * Test::Unit::UI::PROGRESS_ONLY
 * Test::Unit::UI::NORMAL
 * Test::Unit::UI::VERBOSE

== Instance Methods
--- start   -> Test::Unit::TestResult

�ƥ��Ȥ�¹Ԥ��ޤ���

�ƥ��ȷ�̤��ݻ����� Test::Unit::TestResult ���֥������Ȥ��֤��ޤ���
