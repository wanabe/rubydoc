require webrick/httpauth/basicauth
require webrick/httpauth/digestauth
require webrick/httpauth/htpasswd
require webrick/httpauth/htdigest
require webrick/httpauth/htgroup

�桼��ǧ�ڤε�ǽ���󶡤���饤�֥��Ǥ���

= module WEBrick::HTTPAuth

�桼��ǧ�ڤε�ǽ���󶡤���⥸�塼��Ǥ���

== Module Functions

--- basic_auth(req, res, realm){|user, pass| ... }     -> nil

Basic ǧ�ڤ�Ԥ�����Υ᥽�åɤǤ���

Ϳ����줿�֥�å��� user, pass ��֥�å��ѥ�᡼���Ȥ����Ϥ����ɾ������ޤ���
�֥�å���ɾ����̤����Ǥ����硢ǧ�ڤ������������Ȥˤʤ�ޤ���
�֥�å���ɾ����̤����Ǥ����硢ǧ�ڤϼ��Ԥ������Ȥˤʤꡢ�㳰��ȯ�����ޤ���

@param req ���饤����Ȥ���Υꥯ�����Ȥ�ɽ�� [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ꤷ�ޤ���

@param res [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ꤷ�ޤ���

@param realm ǧ�ڤΥ����ʸ����ǻ��ꤷ�ޤ���

@raise WEBrick::HTTPStatus::Unauthorized ǧ�ڤ˼��Ԥ�������ȯ�����ޤ���

  srv.mount_proc('/basic_auth') {|req, res|
    HTTPAuth.basic_auth(req, res, "WEBrick's realm") {|user, pass|
      user == 'webrick' && pass == 'supersecretpassword'
    }
    res.body = "hoge"
  }

--- proxy_basic_auth(req, res, realm){|user, pass| ... }     -> nil

�ץ����� Basic ǧ�ڹԤ�����Υ᥽�åɤǤ���

Ϳ����줿�֥�å��� user, pass ��֥�å��ѥ�᡼���Ȥ����Ϥ����ɾ������ޤ���
�֥�å���ɾ����̤����Ǥ����硢ǧ�ڤ������������Ȥˤʤ�ޤ���
�֥�å���ɾ����̤����Ǥ����硢ǧ�ڤϼ��Ԥ������Ȥˤʤꡢ�㳰��ȯ�����ޤ���

@param req ���饤����Ȥ���Υꥯ�����Ȥ�ɽ�� [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ꤷ�ޤ���

@param res [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ꤷ�ޤ���

@param realm ǧ�ڤΥ����ʸ����ǻ��ꤷ�ޤ���

@raise WEBrick::HTTPStatus::ProxyAuthenticationRequired ǧ�ڤ˼��Ԥ�������ȯ�����ޤ���
