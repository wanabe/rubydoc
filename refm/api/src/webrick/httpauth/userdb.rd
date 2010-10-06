= module WEBrick::HTTPAuth::UserDB

[[c:WEBrick::HTTPAuth::BasicAuth]], [[c:WEBrick::HTTPAuth::DigestAuth]] �ǻ��Ѥ��Ƥ���⥸�塼��Ǥ���

== Instance Methods

--- auth_type -> Class

[[c:WEBrick::HTTPAuth::BasicAuth]], [[c:WEBrick::HTTPAuth::DigestAuth]] �Τ����줫���֤��ޤ���

--- auth_type=(type)

ǧ�ڤΥ����פ򥻥åȤ��ޤ���

@param type [[c:WEBrick::HTTPAuth::BasicAuth]], [[c:WEBrick::HTTPAuth::DigestAuth]] �Τ����줫����ꤷ�ޤ���

--- make_passwd(realm, user, pass) -> String

[[m:WEBrick::HTTPAuth::UserDB#auth_type]] �� make_passwd ��ƤӽФ��ޤ���

@param realm �������ꤷ�ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param pass �ѥ���ɤ���ꤷ�ޤ���

@see [[m:WEBrick::HTTPAuth::BasicAuth#make_passwd]], [[m:WEBrick::HTTPAuth::DigestAuth#make_passwd]]

--- set_passwd(realm, user, pass)
#@# -> discard
Ϳ����줿������Ȥˡ��ѥ���ɤ�ϥå��岽������¸���ޤ���

@param realm �������ꤷ�ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param pass �ѥ���ɤ���ꤷ�ޤ���

--- get_passwd(realm, user, reload_db = false) -> String

Ϳ����줿����ȥ桼��̾����ѥ���ɤΥϥå����ͤ���������֤��ޤ���

@param realm �������ꤷ�ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param reload_db ̵�뤵��ޤ���
