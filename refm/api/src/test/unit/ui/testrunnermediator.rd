require test/unit
require test/unit/util/observable
require test/unit/testresult

�Ƽ� TestRunner ��������뤿��˻Ȥ��ޤ���

Unit �ƥ��Ȥ�Ԥ����������Υ桼���������Υ饤�֥��� require ����
ɬ�פϤ���ޤ���

= class Test::Unit::UI::TestRunnerMediator
include Test::Unit::Util::Observable

�Ƽ� TestRunner ��������뤿��Υ��饹�Ǥ���

== Class Methods

--- new(suite) -> Test::Unit::UI::TestRunnerMediator

������ TestRunnerMediator ���֥������Ȥ����������֤��ޤ���

@param suite �¹Ԥ������ƥ��Ȥ���ä� Test::Unit::TestSuite ���֥������Ȥ�
             Ϳ���ޤ���

== Instance Methods

--- run_suite -> Test::Unit::TestResult

��������Ϳ����줿 Test::Unit::TestSuite ���ݻ����Ƥ���ƥ��Ȥ�¹Ԥ��ޤ���
�¹Է�̤�ɽ�� Test::Unit::TestResult ���֥������Ȥ��֤��ޤ���

== Private Instance Methods

--- create_result -> Test::Unit::TestResult

���Ȥ���̥��֥������Ȥ��������뤿��Υե����ȥ�᥽�åɤǤ���

�ۤʤ��̥��֥������Ȥ�ɬ�פʾ��Ϻ�������ƻȤ��ޤ���
