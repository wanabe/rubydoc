require webrick/httpservlet/abstract

ERB �򰷤�����Υ����֥�åȤ��󶡤���饤�֥��Ǥ���

= class WEBrick::HTTPServlet::ERBHandler < WEBrick::HTTPServlet::AbstractServlet

ERB �򰷤�����Υ����֥�åȤǤ���

== Class Methods

--- new(server, name) -> WEBrick::HTTPServlet::ERBHandler

���Ȥ��������ޤ���

@param server [[c:WEBrick::GenericServer]] �Υ��֥��饹�Υ��󥹥��󥹤�
              ���ꤷ�ޤ���

@param name �¹Ԥ����� ERB �Υե�����̾����ꤷ�ޤ���

== Instance Methods

--- do_GET(request, response) -> ()
--- do_POST(request, response) -> ()

GET, POST �ꥯ�����Ȥ�������ޤ���

@param request [[c:WEBrick::HTTPRequest]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param response [[c:WEBrick::HTTPResponse]] �Υ��󥹥��󥹤���ꤷ�ޤ���
