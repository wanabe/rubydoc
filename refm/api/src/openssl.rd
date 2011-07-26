OpenSSL([[url:http://www.openssl.org]])
�� Ruby ���鰷������Υ饤�֥��Ǥ���

���Υɥ�����ȤǤ� SSL/TLS �ΰ���Ū����ˤĤ��Ƥ�
����򤷤ޤ������ѼԤϡ�SSL/TLS�γƳ�ǰ���㤨��
�ʲ��λ���ˤĤ������򤷤Ƥ���ɬ�פ�����ޤ���
  * �Ź��ǧ�ڤ˴ؤ������Ū��ǰ
  * �������ƥ����Ф��빶��ˡ
  * �������Ź����̩���Ź�
  * ��̾����䡢��̾����ˡ�Ȥ��θ���
  * ����������(PKI, Public Key Infrastructure)
  * X.509 ������
  * �Ź������ˤĤ���
#@# ���ɲ�
SSL�Τ褦�ʥ������ƥ����Ѥϡ��������ѼԤ�̵���˰�������
�󶡤��뤳�ȤϤǤ��ޤ������Ѽԡ��Ȥ���SSL�ǥ��եȥ��������������
�ץ���ޤϡ� SSL/TLS �ε��ѡ����줬��Ť��Ƥ��복ǰ�����򤷡�
�饤�֥���Ŭ�ڤ����Ѥ���ɬ�פ�����ޤ���

����ʸ�Ϥ����Ƥ�̵�ݾڤǤ�������ʸ�Ϥ����Ƥ򸡾ڤ��ƽ񤫤��
���ޤ������ְ�äƤ����ǽ���⤢��ޤ������Υ饤�֥���
�������ƥ�Ū�˽�������Ӥ��Ѥ���ΤǤ���С�
��ʬ���ȤǤ��Υɥ�����Ȥ����Ƥ򸡾ڤ��Ƥ���������

OpenSSL �� SSL/TLS �ˤ���̿����󶡤������ʥ��󥿡��ե�������
������Ū�ʵ�ǽ���󶡤�������ʥ��󥿡��ե�����������ޤ���
����Ū�ˤϹ���ʥ��󥿡��ե������Τߤ����Ѥ��٤��Ǥ���

����ʥ��󥿡��ե����������Ѥ�����ˤϡ����Ѥ�������ǽ��
�ؤ��뽽ʬ���μ�����տ�����ɬ�פȤʤ�ޤ���
#@# �ɤ줬���।�󥿡��ե������Ǥɤ줬���फ��
#@# �ꥹ�Ȥ�ɬ��

=== ��

���ʽ�̾������κ�������Ǥ�����ʬ����̩���Ǽ�ʬ�θ������˽�̾���Ƥ��뤫�鼫�ʽ�̾�Ǥ���

  require 'openssl'
  
  key = OpenSSL::PKey::RSA.new(1024)
  digest = OpenSSL::Digest::SHA1.new()
  
  issu = sub = OpenSSL::X509::Name.new()
  sub.add_entry('C', 'JP')
  sub.add_entry('ST', 'Shimane')
  sub.add_entry('CN', 'Ruby Taro')
  
  cer = OpenSSL::X509::Certificate.new()
  cer.not_before = Time.at(0)
  cer.not_after = Time.at(0)
  cer.public_key = key  # <= ��̾�����оݤȤʤ������
  cer.serial = 1
  cer.issuer = issu
  cer.subject = sub
  
  cer.sign(key, digest) # <= ��̾����Τ˻Ȥ���̩���ȥϥå���ؿ�
  print cer.to_text

===[a:references] ����ʸ��
  * [[RFC:5246]]
  * Eric Rescorla. SSL and TLS : Designing and Building Secure Systems.
    ˮ��, Eric Rescorla �� �ƣ��ƻ����Ƭ��Ƿ���ſ������.
    �ޥ������TCP/IP SSL/TLS��
  * John Viega, Matt Messier and Pravir Chandra. Network Security with OpenSSL:
    Cryptography for Secure Communications. 
    ˮ��, John Viega, Matt Messier and Pravir Chandra �� �ƣ��ƻ����.
    OpenSSL -�Ź桦PKI��SSL/TLS�饤�֥��ξܺ�-

= module OpenSSL
OpenSSL �Τ��٤ƤΥ��饹���⥸�塼�롢�᥽�åɡ������
�ݻ����Ƥ���⥸�塼��Ǥ���

== Module functions
--- debug -> bool
�ǥХå��⡼�ɤ� on �ʤ�� true ���֤��ޤ���

@see [[m:OpenSSL.#debug=]]

--- debug=(b)
�ǥХå��⡼�ɤ� on/off ���ޤ���

@see [[m:OpenSSL.#debug]]

--- errors -> [String]
OpenSSL �Υ��顼���塼�˻ĤäƤ��륨�顼ʸ������֤��ޤ���

�̾���顼���塼�Ϥ��γ�ĥ�饤�֥�꤬���ˤ��뤿�ᡢ
����϶���������֤��ޤ����⤷�����Ǥʤ��ʤ��
���Υ饤�֥��ΥХ��Ǥ���

== Constants

--- VERSION -> String

Ruby/OpenSSL �ΥС������Ǥ���

--- OPENSSL_VERSION -> String

�����ƥ�˥��󥹥ȡ��뤵��Ƥ��� OpenSSL ���ΤΥС�������ɽ����ʸ����Ǥ���

--- OPENSSL_VERSION_NUMBER -> Integer

�����ƥ�˥��󥹥ȡ��뤵��Ƥ��� OpenSSL ���ΤΥС�������ɽ�������Ǥ���
[[url:http://www.openssl.org/docs/crypto/OPENSSL_VERSION_NUMBER.html]]
�⻲�Ȥ��Ƥ���������

#@# = module OpenSSL::SSL::SocketForwarder
= class OpenSSL::OpenSSLError < StandardError
���٤Ƥ� OpenSSL ��Ϣ���㳰���饹�Υ١����Ȥʤ��㳰���饹�Ǥ���

#@include(openssl/ASN1)
#@include(openssl/ASN1__ASN1Data)
#@include(openssl/ASN1__Constructive)
#@include(openssl/ASN1__ObjectId)
#@include(openssl/ASN1__Primitive)
#@include(openssl/BN)
#@include(openssl/Cipher)
#@include(openssl/Config)
#@include(openssl/Digest)
#@include(openssl/Digest__Digest)
#@include(openssl/Engine) 
#@include(openssl/HMAC)
#@include(openssl/Netscape__SPKI)
#@include(openssl/OCSP)
#@include(openssl/PKCS5)
#@include(openssl/PKCS12)
#@include(openssl/PKCS7)
#@include(openssl/PKey__PKey)
#@include(openssl/PKey__DH)
#@include(openssl/PKey__DSA)
#@include(openssl/PKey__RSA)
#@include(openssl/PKey__EC)
#@include(openssl/Random)
#@include(openssl/SSL)
#@include(openssl/SSL__SSLContext)
#@include(openssl/SSL__SSLServer)
#@include(openssl/SSL__SSLSocket)
#@include(openssl/SSL__Session)
#@include(openssl/X509)
#@include(openssl/X509__Attribute)
#@include(openssl/X509__CRL)
#@include(openssl/X509__Certificate)
#@include(openssl/X509__Extension)
#@include(openssl/X509__ExtensionFactory)
#@include(openssl/X509__Name)
#@include(openssl/X509__Request)
#@include(openssl/X509__Revoked)
#@include(openssl/X509__Store)
#@include(openssl/X509__StoreContext)
