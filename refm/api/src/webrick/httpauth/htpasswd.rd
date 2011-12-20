require webrick/httpauth/userdb
require webrick/httpauth/basicauth

Apache �� htpasswd �ߴ��Υ��饹���󶡤���饤�֥��Ǥ���

= class WEBrick::HTTPAuth::Htpasswd < Object
include WEBrick::HTTPAuth::UserDB

Apache �� htpasswd �ߴ��Υ��饹�Ǥ���
.htpasswd �ե�����򿷤����������뤳�Ȥ����ޤ���
htpasswd -m (MD5) �� -s (SHA) �Ǻ������줿 .htpasswd �ե�����ˤ��б����Ƥ��ޤ���


��

 require 'webrick'
 include WEBrick
 htpd = HTTPAuth::Htpasswd.new('dot.htpasswd')
 htpd.set_passwd(nil, 'username', 'supersecretpass')
 htpd.flush
 htpd2 = HTTPAuth::Htpasswd.new('dot.htpasswd')
 pass = htpd2.get_passwd(nil, 'username', false)
 p pass == 'supersecretpass'.crypt(pass[0,2])

== Class Methods

--- new(path) -> WEBrick::HTTPAuth::Htpasswd

Htpasswd ���֥������Ȥ��������ޤ���

@param path �ѥ���ɤ���¸����ե�����Υѥ���Ϳ���ޤ���

== Instance Methods

--- delete_passwd(realm, user) -> String

�桼���Υѥ���ɤ������ޤ���realm ��̵�뤵��ޤ���

@param realm �����̵�뤵��ޤ���

@param user �桼��̾����ꤷ�ޤ���

--- each{|user, pass| ...} -> Hash

�桼��̾�ȥѥ���ɤ�֥�å���Ϳ����ɾ�����ޤ���

--- get_passwd(realm, user, reload_db) -> String

�桼���Υѥ���ɤ� crypt ���줿ʸ�����������ޤ���

@param realm �����̵�뤵��ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param reload_db ������ꤹ��� [[m:WEBrick::HTTPAuth::Htpasswd#reload]] ��Ƥ�Ǥ����ͤ��֤��ޤ���


--- flush(path = nil)
#@# -> discard
�ե�����˽񤭹��ߤޤ����ե�����̾��Ϳ�������ϡ������˽񤭹��ߤޤ���

@param path �ե�����̾����ꤷ�ޤ���

--- reload
#@# -> discard
�ե����뤫������ɤ߹��ߤޤ���

--- set_passwd(realm, user, pass)
#@# -> discard
Ϳ����줿������Ȥˡ��ѥ���ɤ�ϥå��岽������¸���ޤ���

@param realm �����̵�뤵��ޤ���

@param user �桼��̾����ꤷ�ޤ���

@param pass �ѥ���ɤ���ꤷ�ޤ���
