
���٥�Ȥ��Ф������Τ�Ԥ��᥽�åɤ��󶡤��뤿��Υ饤�֥��Ǥ���

= module Test::Unit::Util::Observable

���٥�Ȥ��Ф������Τ�Ԥ��᥽�åɤ��󶡤���⥸�塼��Ǥ���

== Instance Methods

--- add_listener(channel_name, listener_key = NOTHING, &listener) -> String

channel_name �ǻ��ꤷ�������ͥ�� listener ����Ͽ���ޤ���

listener_key ���ά�������� listener ���Ȥ� listener ����������Υ���
�Ȥ�����Ͽ���ޤ���

@param channel_name �����ͥ��̾����ʸ����ǻ��ꤷ�ޤ���

@param listener_key listener ����������Υ�����ʸ����ǻ��ꤷ�ޤ���

@return listener_key ���֤��ޤ���

--- remove_listener(channel_name, listener_key) -> Proc | nil

listener_key �ǻ��ꤷ����������Ͽ���줿 listener �� channel_name �ǻ���
���������ͥ뤫�������ޤ���

@param channel_name �����ͥ��̾����ʸ����ǻ��ꤷ�ޤ���

@param listener_key listener ����������Υ�������ꤷ�ޤ���

@return �������������������Ͽ����Ƥ��� [[c:Proc]] ���֥������Ȥ��֤��ޤ���
        �����Ǥʤ����� nil ���֤��ޤ���

--- notify_listeners(channel_name, *arguments) -> Integer

channel_name �ǻ��ꤷ�������ͥ�ˤ������Ƥ� [[c:Proc]] ��¹Ԥ��ޤ���

arguments �����ꤵ��Ƥ������� [[c:Proc]] �� call ������ΰ����� arguments
���Ϥ��ޤ���

@param channel_name �����ͥ��̾����ʸ����ǻ��ꤷ�ޤ���

@param arguments [[c:Proc]] ���Ϥ���������ꤷ�ޤ���

@return [[c:Proc]] ��¹Ԥ��������֤��ޤ���
