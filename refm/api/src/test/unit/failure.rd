
= class Test::Unit::Failure < Object

�ƥ��Ȥμ��Ԥ�ɽ�����륯�饹�Ǥ����ƥ�����˥���������󤬼��Ԥ�������
[[c:Test::Unit::TestCase]]�������ޤ���

== Class Methods

--- new(test_name, location, message) -> Test::Unit::Failure

Test::Unit::Failure ���֥������ȤΥ��󥹥��󥹤��������ޤ���

@param test_name �б�����ƥ��ȥ᥽�åɤ�̾������ꤷ�ޤ���

@param location �ƤӽФ����ξ���� [[m:$@]]�η����ǻ��ꤷ�ޤ���

@param message �б����� assert �᥽�åɤ��Ϥ��� message ����ꤷ�ޤ���

== Instance Methods

--- long_display -> String
--- to_s -> String

�����������˼��Ԥ������ξܺ٤�������ʸ������֤��ޤ���

--- message -> String

���Ȥ��б����� assert �᥽�åɤ��Ϥ��� message ����ꤷ�ޤ���

[[m:Test::Unit::Failure#short_display]] ��
[[m:Test::Unit::Failure#long_display]] �ǻȤ��ޤ���

@see [[m:Test::Unit::Failure#short_display]],
     [[m:Test::Unit::Failure#long_display]]

--- short_display -> String

�����������˼��Ԥ������δ�ñ��������ʸ������֤��ޤ���

--- single_character_display -> String

�����������˼��Ԥ�������ɽ������ 'F' ���֤��ޤ���

--- test_name -> String

���Ȥ��б�����ƥ��ȥ᥽�åɤ�̾�����֤��ޤ���

--- location -> [String]

���Ȥ��б�����ƤӽФ����ξ���� [[m:$@]]�η����ΥХå��ȥ졼���Ȥ����֤��ޤ���
