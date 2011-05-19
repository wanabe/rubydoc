= module WEBrick::Utils

�饤�֥�� webrick �Τ���ξ����ʥ桼�ƥ���ƥ��ؿ����󶡤���⥸�塼��Ǥ���

== Module Functions

--- set_non_blocking(io)    -> ()

���ꤵ�줿 io ��Υ�֥�å��󥰤����ꤷ�ޤ���

@param io IO ���֥������Ȥ���ꤷ�ޤ���

--- set_close_on_exec(io)    -> ()

���ꤵ�줿 io �� Fcntl::FD_CLOEXEC �� 1 �����ꤷ�ޤ���
���� io �� [[m:Kernel.#exec]] �ʤɤ��¹Ԥ������� close �����褦�ˤʤ�ޤ���

@param io IO ���֥������Ȥ���ꤷ�ޤ���

@see [[man:fcntl(2)]]

--- su(user) -> ()

���ꤵ�줿�桼���� [[m:Process::Sys.setuid]],
[[m:Process::Sys.setgid]] ���ޤ���

setuid �Ǥ��ʤ��ץ�åȥե�����ǤϷٹ��ɽ���������⤷�ޤ���

@param user �桼������ꤷ�ޤ���

--- getservername    -> String

�ץ�����ư���Ƥ���ޥ���Υۥ���̾��ʸ������֤��ޤ���

  p WEBrick::Utils.getservername   #=> "localhost"

--- random_string(len)    -> String

A-Z, a-z, 0-9 ����ʤ�Ĺ�� len �Υ������ʸ������֤��ޤ���

@param len ������ʸ�����Ĺ���������ǻ��ꤷ�ޤ���ñ�̤ϥХ��ȤǤ���

 p WEBrick::Utils.random_string(10)   #=> "xF0jwU4RJd"

--- create_listeners(address, port, logger = nil) -> [TCPServer]

Ϳ����줿���ɥ쥹�ȥݡ��Ȥ� [[c:TCPServer]] ���֥������Ȥ�������
�ޤ���

@param address ���ɥ쥹����ꤷ�ޤ���

@param port �ݡ����ֹ����ꤷ�ޤ���

@param logger �������֥������Ȥ���ꤷ�ޤ���

@raise ArgumentError port ����ꤷ�ʤ��ä�����ȯ�����ޤ���

@see [[m:Socket.getaddrinfo]], [[c:TCPServer]]
