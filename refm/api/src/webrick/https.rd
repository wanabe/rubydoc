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
#@todo

--- server_cert -> OpenSSL::X509::Certificate
#@todo

�����о�����

--- client_cert -> OpenSSL::X509::Certificate
#@todo

���饤����Ⱦ�����

= redefine WEBrick::HTTPRequest

== Instance Methods

--- parse(socket = nil) -> ()

���ꤵ�줿 socket ���饯�饤����ȤΥꥯ�����Ȥ��ɤ߹��ߡ�
���ȤΥ��������ʤɤ�Ŭ�ڤ����ꤷ�ޤ���

@param socket ���饤����Ȥ���³���줿 IO ���֥������Ȥ���ꤷ�ޤ���

--- parse_uri(str, scheme = "http")
#@todo should be private

--- meta_vars -> Hash
#@todo


#@end
