require webrick/config
require webrick/httpservlet/abstract

CGI �򰷤�����Υ����֥�åȤ��󶡤���饤�֥��Ǥ���

= class WEBrick::HTTPServlet::CGIHandler < WEBrick::HTTPServlet::AbstractServlet

CGI �򰷤�����Υ����֥�åȤǤ���

== Class Methods

--- new(server, name) -> WEBrick::HTTPServlet::CGIHandler

���Ȥ��������ޤ���

@param server

@param name �¹Ԥ����� CGI �Υե������ʸ�����Ϳ���ޤ���


== Instance Methods

--- do_GET(request, response) -> ()
--- do_POST(request, response) -> ()

GET, POST �ꥯ�����Ȥ�������ޤ���

@param request [[c:WEBrick::HTTPRequest]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param response [[c:WEBrick::HTTPResponse]] �Υ��󥹥��󥹤���ꤷ�ޤ���

== Constants

--- Ruby -> String

Ruby �Υѥ����֤��ޤ���

--- CGIRunner -> String

CGI ��¹Ԥ��뤿��Υ��ޥ�ɤ��֤��ޤ���
