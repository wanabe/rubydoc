#@since 1.8.1
require webrick/ssl

[[c:WEBrick::HTTPServer]] �� SSL/TLS ���б������뤿��μ�����
���Υե������ [[m:Kernel.#require]] ����� [[c:WEBrick::HTTPServer]] �� SSL/TLS �б��ˤʤ�ޤ���

= redefine WEBrick::Config

== Constants

--- HTTP -> Hash

[[m:WEBrick::Config::SSL]] �����Ƥ��ޡ�������Ƥ��ޤ���

= reopen WEBrick::HTTPRequest

== Instance Methods

--- cipher -> Array

���߼ºݤ˻Ȥ��Ƥ���Ź�ξ����������֤��ޤ��� 

@see [[m:OpenSSL::SSL::SSLSocket#cipher]]

--- server_cert -> OpenSSL::X509::Certificate

�����о������ɽ�����֥������Ȥ��֤��ޤ���

@see [[c:OpenSSL::X509::Certificate]]

--- client_cert -> OpenSSL::X509::Certificate

���饤����Ⱦ������ɽ�����֥������Ȥ��֤��ޤ���

@see [[m:OpenSSL::X509::Certificate]]

= redefine WEBrick::HTTPRequest

== Instance Methods

--- parse(socket = nil) -> ()

���ꤵ�줿 socket ���饯�饤����ȤΥꥯ�����Ȥ��ɤ߹��ߡ�
���ȤΥ��������ʤɤ�Ŭ�ڤ����ꤷ�ޤ���

@param socket ���饤����Ȥ���³���줿 IO ���֥������Ȥ���ꤷ�ޤ���

#@#--- parse_uri(str, scheme = "https")
#@#todo should be private

--- meta_vars -> Hash

�᥿�ѿ����֤��ޤ���

#@end
