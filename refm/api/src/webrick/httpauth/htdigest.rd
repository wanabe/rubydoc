require webrick/httpauth/userdb
require webrick/httpauth/digestauth

Apache �� htdigest �ߴ���ǽ���󶡤���饤�֥��Ǥ���

= class WEBrick::HTTPAuth::Htdigest < Object
include WEBrick::HTTPAuth::UserDB

Apache �� htdigest �ߴ��Υ��饹��

��

 require 'webrick'
 include WEBrick
 htd = HTTPAuth::Htdigest.new('dot.htdigest')
 htd.set_passwd('realm', 'username', 'supersecretpass')
 htd.flush
 htd2 = HTTPAuth::Htdigest.new('dot.htdigest')
 p htd2.get_passwd('realm', 'username', false) == '65fe03e5b0a199462186848cc7fda42b'

== Class Methods

--- new(path) -> WEBrick::HTTPAuth::Htdigest
Htdigest ���֥������Ȥ��������ޤ���

@param path �ѥ���ɤ���¸����ե�����Υѥ���Ϳ���ޤ���

== Instance Methods

--- delete_passwd(realm, user)
#@# -> discard
realm ��°����桼�� user �Υѥ���ɤ������ޤ���

@param realm �������ꤷ�ޤ���

@param user �桼��̾����ꤷ�ޤ���

--- each{|user, realm, pass| ... } -> Hash

�桼��̾�����ࡢ�ѥ���ɤ�֥�å����Ϥ���ɾ�����ޤ���

--- flush(path = nil) -> ()

�ե�����˽񤭹��ߤޤ����ե�����̾��Ϳ�������ϡ������˽񤭹��ߤޤ���

@param path �ե�����̾����ꤷ�ޤ���

--- get_passwd(realm, user, reload_db) -> String

Ϳ����줿����ȥ桼��̾����ѥ���ɤΥϥå����ͤ���������֤��ޤ���

@param realm �������ꤷ�ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param reload_db ������ꤹ��� [[m:WEBrick::HTTPAuth::Htdigest#reload]] ��Ƥ�Ǥ����ͤ��֤��ޤ���

--- reload
#@# -> discard
�ե����뤫������ɤ߹��ߤޤ���

--- set_passwd(realm, user, pass)
#@# -> discard
Ϳ����줿������Ȥˡ��ѥ���ɤ�ϥå��岽������¸���ޤ���

@param realm �������ꤷ�ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param pass �ѥ���ɤ���ꤷ�ޤ���


