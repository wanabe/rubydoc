require webrick/httpservlet/abstract

[[c:Proc]] �򰷤�����Υ����֥�åȤ��󶡤���饤�֥��Ǥ���

= class WEBrick::HTTPServlet::ProcHandler < WEBrick::HTTPServlet::AbstractServlet

[[c:Proc]] �򰷤�����Υ����֥�åȡ�

[[m:WEBrick::HTTPServer#mount]] �˰����Ȥ���Ϳ���뤳�ȤϽ���ޤ���
[[m:WEBrick::HTTPServer#mount_proc]]��ȤäƤ���������

== Class Methods

--- new(proc) -> WEBrick::HTTPServlet::ProcHandler

���Ȥ��������ޤ���

@param proc [[c:Proc]] ���֥������Ȥ�Ϳ���ޤ������饤����Ȥ���Υꥯ�����Ȥ����ä�����
            proc.call(request, response) �Τ褦�˸ƤӽФ���ޤ���
            request, response �Ϥ��줾�� [[c:WEBrick::HTTPRequest]] ���֥������Ȥ�
            [[c:WEBrick::HTTPResponse]] ���֥������ȤǤ���

== Instance Methods

--- get_instance(server, *options) -> self

���⤻���˼��Ȥ��֤��ޤ���

@param server [[m:WEBrick::HTTPServer#mount]] ��3�����ʹߤ˻��ꤵ�줿�ͤ����Τޤ�Ϳ�����ޤ���

@param options [[m:WEBrick::HTTPServer#mount]] ��3�����ʹߤ˻��ꤵ�줿�ͤ����Τޤ�Ϳ�����ޤ���

@see [[m:WEBrick::HTTPServlet::AbstractServlet.get_instance]]

--- do_GET(request, response) -> ()
--- do_POST(request, response) -> ()

GET, POST �ꥯ�����Ȥ�������ޤ���

@param request ���饤����Ȥ���Υꥯ�����Ȥ�ɽ�� [[c:WEBrick::HTTPRequest]] ���֥������ȤǤ���

@param response ���饤����ȤؤΥ쥹�ݥ󥹤�ɽ�� [[c:WEBrick::HTTPResponse]] ���֥������ȤǤ���

