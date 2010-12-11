[[lib:net/http]] �� SSL/TLS ��ĥ���������饤�֥��Ǥ���

[[c:Net::HTTP]] ��ƥ����ץ󤷡�SSL/TLS ��ĥ���ɲä��ޤ���

#@until 1.8.6
[���] net/https �� RFC2818 �� 3.1 ������줿
�֥����С��ξ�����˵��ܤ��줿�ȸ��Υ����å��פ�ư�Ǥϼ¹Ԥ��ޤ���
��³���Ƥ���Ϥ��Υ����ФΥۥ���̾�Ⱦ�����˵��ܤ���Ƥ���ۥ���̾��
���פ��뤫��饤�֥��λ��ѼԤ��Ƽ���������ɬ�פ�����ޤ���

[[url:http://www.ipa.go.jp/security/rfc/RFC2818JA.html#31]]

[[ruby-dev:25254]]
#@end

=== �ǥե���ȥѥ�᡼���ˤĤ���
net/https �� [[m:OpenSSL::SSL::SSLContext#set_params]] ��
SSLContext ���������ޤ������Τ���
���ꤵ��ʤ��ä��ѥ�᡼���� [[m:OpenSSL::SSL::SSLContext::DEFAULT_PARAMS]] 
���ͤǽ��������ޤ���
[[m:Net::HTTP#ca_file=]] �� [[m:Net::HTTP#ca_path=]] �� 
[[m:Net::HTTP#cert_store]] �����ꤷ�ʤ��ä����� 
[[m:OpenSSL::SSL::SSLContext::DEFAULT_CERT_STORE]]
�������񥹥ȥ��Ȥ����Ѥ����ޤ���


=== Example

��ñ�����󤲤ޤ���
verify_mode �˻��ꤹ������˴ؤ��Ƥ� [[c:OpenSSL::SSL]] �򻲾Ȥ��Ƥ���������
ɬ�� use_ssl = true ��ƤФʤ���Ф����ʤ��Ȥ������դ��Ƥ���������

  require 'net/https'
  https = Net::HTTP.new('www.example.com',443)
  https.use_ssl = true
  https.ca_file = '/usr/share/ssl/cert.pem'
  https.verify_mode = OpenSSL::SSL::VERIFY_PEER
  https.verify_depth = 5
  https.start {
    response = https.get('/')
    puts response.body
  }

�ʲ��� HTTPS �ץ�����ͳ�ǥ�������������Ǥ���
�ץ�����ͳ�Ǥ��̿�ϩ�ϰŹ沽����ޤ���
�ܤ����ϰʲ��򻲾Ȥ��Ƥ���������

 * WWW�ץ����ˤ�����SSL�ȥ�ͥ��: [[url:http://www21.ocn.ne.jp/~k-west/SSLandTLS/draft-luotonen-ssl-tunneling-03-Ja.txt]]

  require 'net/https'
  proxy_addr = 'proxy.example.com'
  proxy_port = 3128
  https = Net::HTTP::Proxy(proxy_addr, proxy_port).new('www.example.com',443)
  https.use_ssl = true
  https.ca_file = '/usr/share/ssl/cert.pem'
  https.verify_mode = OpenSSL::SSL::VERIFY_PEER
  https.verify_depth = 5
  https.start {
    response = https.get('/')
    puts response.body
  }

= reopen Net::HTTP

== Instance Methods

--- use_ssl? ->  bool
HTTP �� SSL/TLS ��Ȥ��ʤ� true ���֤��ޤ���

--- use_ssl=(bool)
HTTP �� SSL/TLS ��Ȥ����ɤ��������ꤷ�ޤ���

HTTPS �Ȥ����� true �����ꤷ�ޤ���
���å����򳫻Ϥ�����������򤷤ʤ���Фʤ�ޤ���

�ǥե���ȤǤ� false �Ǥ���
�Ĥޤ� SSL/TLS ��ͭ���ˤ���ˤ�ɬ�� use_ssl = true ��Ƥ�ɬ�פ�����ޤ���

@param bool SSL/TLS �����Ѥ��뤫�ɤ���
@raise IOError ���å���󳫻ϸ��������ѹ����褦�Ȥ����ȯ�����ޤ�

--- ssl_timeout -> Integer | nil
SSL/TLS �Υ����ॢ�����ÿ����֤��ޤ���

���ꤵ��Ƥ��ʤ����� nil ���֤��ޤ���

@see [[m:Net::HTTP#ssl_timeout=]],
     [[m:OpenSSL::SSL::SSLContext#ssl_timeout]]

--- ssl_timeout=(sec)
#@until 1.9.1
--- timeout=(sec)
#@end

SSL/TLS �Υ����ॢ�����ÿ������ꤷ�ޤ���

HTTP ���å���󳫻ϻ�([[m:Net::HTTP#start]] �ʤ�)��
[[m:OpenSSL::SSL::SSLContext#ssl_timeout=]] ��
�����ॢ���Ȥ����ꤷ�ޤ���

�ǥե�����ͤ� [[m:OpenSSL::SSL::SSLContext#ssl_timeout=]] ��
Ʊ���ǡ�OpenSSL �Υǥե������(300��)���Ѥ��ޤ���

#@until 1.9.1
timeout= �� obsolete �Ǥ����ߴ����Τ����
¸�ߤ��ޤ���1.9 �Ǥ��ѻߤ���Ƥ��ޤ���
#@end

@param sec �����ॢ�����ÿ�
@see [[m:Net::HTTP#ssl_timeout]],
     [[m:OpenSSL::SSL::SSLContext#ssl_timeout=]]

--- peer_cert -> OpenSSL::X509::Certificate | nil
�����Фξ�������֤��ޤ���

SSL/TLS ��ͭ���Ǥʤ��ä��ꡢ��³���Ǥ�����ˤ� nil
���֤��ޤ���

@see [[m:OpenSSL::SSL::SSLSocket#peer_cert]]

--- key -> OpenSSL::PKey::PKey | nil
���饤����Ⱦ��������̩�����֤��ޤ���

@see [[m:Net::HTTP#key=]], [[m:OpenSSL::SSL::SSLContext#key]]

--- key=(key)
���饤����Ⱦ��������̩�������ꤷ�ޤ���

[[c:OpenSSL::PKey::RSA]] ���֥������Ȥ�
[[c:OpenSSL::PKey::DSA]] ���֥������Ȥ����ꤷ�ޤ���

�ǥե���Ȥ� nil (���ʤ�)�Ǥ���

@param key ���ꤹ����̩��
@see [[m:Net::HTTP#key]],
     [[m:OpenSSL::SSL::SSLContext#key=]]

--- cert -> OpenSSL::X509::Certificate | nil
���饤����Ⱦ�������֤��ޤ���

@see [[m:Net::HTTP#cert=]], [[m:OpenSSL::SSL::SSLContext#cert]]

--- cert=(certificate)
���饤����Ⱦ���������ꤷ�ޤ���

�ǥե���Ȥ� nil (���饤����Ⱦ�����ˤ��ǧ�ڤ򤷤ʤ�)�Ǥ���

@param certificate �����񥪥֥�������([[c:OpenSSL::X509::Certificate]])
@see [[m:Net::HTTP#cert]], [[m:OpenSSL::SSL::SSLContext#cert=]]

--- ca_file -> String | nil
���ꤹ�� CA ������ե�����Υѥ����֤��ޤ���

@see [[m:Net::HTTP#ca_file=]], [[m:OpenSSL::SSL::SSLContext#ca_file]]

--- ca_file=(path)
���ꤹ�� CA ������ե�����Υѥ���ʸ��������ꤷ�ޤ���

�ե�����ˤ�ʣ���ξ������ޤ�Ǥ��Ƥ⹽���ޤ���
�ܤ����� [[m:OpenSSL::SSL::SSLContext#ca_file=]] �򸫤Ƥ���������

�ǥե���Ȥ� nil (����ʤ�)�Ǥ���

@param path �ե�����ѥ�ʸ����
@see [[m:Net::HTTP#ca_file]], [[m:OpenSSL::SSL::SSLContext#ca_file=]]

--- ca_path -> String | nil
���ꤹ�� CA ������ե����뤬¸�ߤ���ǥ��쥯�ȥ�����ꤷ�ޤ���

@see [[m:Net::HTTP#ca_path=]], [[m:OpenSSL::SSL::SSLContext#ca_path]]

--- ca_path=(path)
���ꤹ�� CA ������ե����뤬¸�ߤ���ǥ��쥯�ȥ�����ꤷ�ޤ���

�ե�����̾�ϥϥå����ͤ�ʸ����ˤ��ʤ���Фʤ�ޤ���
�ܤ����� [[m:OpenSSL::SSL::SSLContext#ca_path=]] �򸫤Ƥ���������

�ǥե���Ȥ� nil (����ʤ�)�Ǥ���

@param path �ǥ��쥯�ȥ�̾ʸ����
@see [[m:Net::HTTP#ca_path]], [[m:OpenSSL::SSL::SSLContext#ca_path=]]

--- verify_mode -> Integer | nil
���ڥ⡼�ɤ��֤��ޤ���

�ǥե���Ȥ� nil �Ǥ���

--- verify_mode=(mode)
���ڥ⡼�ɤ����ꤷ�ޤ���

�ܤ����� [[m:OpenSSL::SSL::SSLContext#verify_mode]] �򸫤Ƥ���������
���饤�����¦�ʤΤǡ�
[[m:OpenSSL::SSL::VERIFY_NONE]] �� [[m:OpenSSL::SSL::VERIFY_PEER]]
�Τ����줫���Ѥ��ޤ���

�ǥե���Ȥ� nil �ǡ�VERIFY_NONE ���̣���ޤ���

--- verify_callback
���Ȥ����ꤵ��Ƥ��븡�ڤ�ե��륿���륳����Хå���
�֤��ޤ���

�ǥե���ȤΥ�����Хå������ꤵ��Ƥ�����ˤ� nil ���֤��ޤ���

@see [[m:Net::HTTP#verify_callback=]],
     [[m:OpenSSL::X509::Store#verify_callback]],
     [[m:OpenSSL::SSL::SSLContext#verify_callback]]

--- verify_callback=(proc)
���ڤ�ե��륿���륳����Хå������ꤷ�ޤ���

�ܤ����� [[m:OpenSSL::X509::Store#verify_callback=]] ��
[[m:OpenSSL::SSL::SSLContext#verify_callback=]] �򸫤Ƥ���������

@param proc ���ꤹ�� [[c:Proc]] ���֥�������
@see [[m:Net::HTTP#verify_callback]],
     [[m:OpenSSL::X509::Store#verify_callback=]],
     [[m:OpenSSL::SSL::SSLContext#verify_callback=]]

--- verify_depth
��������������θ��ڤ������ο������֤��ޤ���

@see [[m:Net::HTTP#verify_depth=]], [[m:OpenSSL::SSL::SSLContext#verify_depth]]

--- verify_depth=(depth)
��������������θ��ڤ������ο��������ꤷ�ޤ���

�ǥե���Ȥ� nil �ǡ����ξ�� OpenSSL �Υǥե������(9)���Ȥ��ޤ���

@param depth ���翼����ɽ������
@see [[m:Net::HTTP#verify_depth]], [[m:OpenSSL::SSL::SSLContext#verify_depth=]]

--- cert_store -> OpenSSL::X509::Store | nil
��³���ξ�����θ��ڤΤ���˻Ȥ������ꤷ�Ƥ��� CA �������
�ޤ�����񥹥ȥ����֤��ޤ���

@see [[m:Net::HTTP#cert_store]], [[m:OpenSSL::SSL::SSLContext#cert_store=]]

--- cert_store=(store)
��³���ξ�����θ��ڤΤ���˻Ȥ������ꤷ�Ƥ��� CA �������
�ޤ�����񥹥ȥ������ꤷ�ޤ���

�̾�� [[m:Net::HTTP#ca_file=]] �� [[m:Net::HTTP#ca_path=]] ��
���ꤷ�ޤ��������ܺ٤�����򤷤������ˤϤ�������Ѥ��ޤ���

�ǥե���Ȥ� nil (�����񥹥ȥ�����ꤷ�ʤ�)�Ǥ���

@see [[m:Net::HTTP#cert_store=]], [[m:OpenSSL::SSL::SSLContext#cert_store]]

#@since 1.9.1
--- ssl_version -> String | Symbol | nil
���Ѥ���ץ�ȥ���μ�����֤��ޤ���

@see [[m:Net::HTTP#ssl_version=]]

--- ssl_version=(ver)
���Ѥ���ץ�ȥ���μ����ʸ����⤷����
����ܥ�ǻ��ꤷ�ޤ���

[[m:OpenSSL::SSL::SSLContext.new]] �ǻ���Ǥ����Τ�Ʊ���Ǥ���

@param ver ���Ѥ���ץ�ȥ���μ���
@see [[m:Net::HTTP#ssl_version]], [[m:OpenSSL::SSL::SSL#ssl_version=]]


--- ciphers -> String | [String] | nil
[[m:Net::HTTP#ciphers]] �����ꤷ���ͤ��֤��ޤ���

[[m:OpenSSL::SSL::SSLContext#ciphers]] ���֤��ͤȤ�
�ۤʤ�Τ���դ��Ƥ���������

@see [[m:Net::HTTP#ciphers=]]

--- ciphers=(ciphers)
���Ѳ�ǽ�ʶ��̸��Ź�����ꤷ�ޤ���

[[m:OpenSSL::SSL::SSLContext#ciphers=]] ��Ʊ��������
���ꤷ�ޤ����ܤ����Ϥ�����򻲾Ȥ��Ƥ���������

@param ciphers ���Ѳ�ǽ�ˤ��붦�̸��Ź�μ���
@see [[m:Net::HTTP#ciphers]]

#@end
