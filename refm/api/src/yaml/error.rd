YAML ��Ϣ�Υ��顼�򰷤�����Υ��֥饤�֥��Ǥ���

#@since 1.9.2
= class Syck::Error < StandardError
#@else
= class YAML::Error < StandardError
#@end

�տޤ��ʤ����Ϥ��᥽�åɤ�Ϳ����줿���ʤɤ�ȯ�����ޤ���

#@since 1.9.2
= class Syck::ParseError < Syck::Error
#@else
= class YAML::ParseError < YAML::Error
#@end

����Τ����ͽ�󤵤�Ƥ��ޤ������ߤ�ȯ�����ޤ���

#@since 1.9.2
= class Syck::TypeError < StandardError
#@else
= class YAML::TypeError < StandardError
#@end

�տޤ��ʤ����Ϥ��᥽�åɤ�Ϳ����줿���ʤɤ�ȯ�����ޤ���
