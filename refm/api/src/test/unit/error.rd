= class Test::Unit::Error < Object

�ƥ��Ȼ��Υ��顼��ɽ�����륯�饹�Ǥ����ƥ�������㳰��ȯ����������
[[c:Test::Unit::TestCase]] �������ޤ���

== Class Methods

--- new(test_name, exception) -> Test::Unit::Error

Test::Unit::Error ���֥������ȤΥ��󥹥��󥹤��������ޤ���

@param test_name �б�����ƥ��ȥ᥽�åɤ�̾������ꤷ�ޤ���

@param exception �б������㳰���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- exception -> Exception

���Ȥ��б������㳰���֥������Ȥ��֤��ޤ���

--- long_display -> String
--- to_s -> String

���顼�ξܺ٤�������ʸ������֤��ޤ���

--- message -> String

ȯ�������㳰�˴�Ϣ���륨�顼��å�������ʸ������֤��ޤ���

[[m:Test::Unit::Error#short_display]] ��
[[m:Test::Unit::Error#long_display]] �ǻȤ��ޤ���

@see [[m:Test::Unit::Error#short_display]],
     [[m:Test::Unit::Error#long_display]]

--- short_display -> String

���顼�δ�ñ��������ʸ������֤��ޤ���

--- single_character_display -> String

�ƥ��ȥ᥽�åɼ¹�����㳰��ȯ����������ɽ������ 'E' ���֤��ޤ���

--- test_name -> String

���Ȥ��б�����ƥ��ȥ᥽�åɤ�̾�����֤��ޤ���
