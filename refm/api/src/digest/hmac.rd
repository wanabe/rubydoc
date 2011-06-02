require digest

�����դ��ϥå��奢�르�ꥺ�� HMAC(Keyed-Hashing for Message Authentication code)
�μ����ΰ�Ĥ��󶡤���饤�֥��Ǥ���

���Υ饤�֥��ϼ¸�Ū�ʼ����ʤΤ� [[lib:openssl]] �˴ޤޤ�Ƥ��� [[c:OpenSSL::HMAC]] ��ȤäƤ���������

HMAC �� [[RFC:2104]] ���������Ƥ��ޤ���

=== ��

  require 'digest/hmac'

  # one-liner example
  puts Digest::HMAC.hexdigest("data", "hash key", Digest::SHA1)

  # rather longer one
  hmac = Digest::HMAC.new("foo", Digest::RMD160)

  buf = ""
  while stream.read(16384, buf)
    hmac.update(buf)
  end

  puts hmac.bubblebabble

= class Digest::HMAC < Digest::Class

�����դ��ϥå��奢�르�ꥺ�� HMAC �μ����ΰ�Ĥ��󶡤��륯�饹�Ǥ���

== Class Methods

--- new(key, digester) -> Digest::HMAC

Ϳ�����Ƹ��ȥ��르�ꥺ����Ȥˤ��Ƽ��Ȥ��������ޤ���

@param key ��̩������ꤷ�ޤ���

@param digester �����������Ȥ��������뤿��Υ��饹����ꤷ�ޤ���

== Instance Methods

--- block_length -> Integer

�����������ȤΥ֥�å�Ĺ���֤��ޤ���

--- digest_length -> Integer

�����������ȤΥϥå����ͤΥХ���Ĺ���֤��ޤ���

#@#--- update(text)
#@# maybe nodoc

#@#--- reset
#@# maybe nodoc

#@#--- inspect
#@# maybe nodoc
