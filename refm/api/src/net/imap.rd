���Υ饤�֥��� Internet Message Access Protocol (IMAP) ��
���饤����ȥ饤�֥��Ǥ���[[RFC:2060]] �򸵤�
��������Ƥ��ޤ���

=== IMAP �γ���

IMAP�����Ѥ���ˤϡ��ޤ������Ф���³����
[[m:Net::IMAP#authenticate]] �⤷����
[[m:Net::IMAP#login]] ��ǧ�ڤ��ޤ���
IMAP �Ǥϥ᡼��ܥå����Ȥ�����ǰ�����פǤ���
�᡼��ܥå����ϳ���Ū��̾��������ޤ���
�ƥ᡼��ܥå����ϥ᡼����ݻ����뤳�Ȥ��Ǥ��ޤ���
�᡼��ܥå����μ����ϥ����Х��եȥ������ˤ�äưۤʤ�ޤ���
Unix�����ƥ�Ǥϡ��ǥ��쥯�ȥ곬�ؾ��
�ե������ġ��Υ᡼��ܥå����Ȥߤʤ��Ƽ�������뤳�Ȥ�¿���Ǥ���

�᡼��ܥå�����Υ�å�����(�᡼��)����������硢
�ޤ� [[m:Net::IMAP#select]] �⤷����
[[m:Net::IMAP#examine]] �ǽ����оݤΥ᡼��ܥå�����
���ꤹ��ɬ�פ�����ޤ��������������������ʤ�С�
��selected�׾��֤˰ܹԤ������Υ᡼��ܥå������ֽ����оݤΡ�
�᡼��ܥå����Ȥʤ�ޤ������Τ褦�ˤ��ƥ᡼��ܥå�����
���򤷤Ƥ��顢selected���֤򽪤���(�̤Υ᡼��ܥå��������򤷤��ꡢ
��³��λ������)�ޤǤ򥻥å����ȸƤӤޤ���

��å������ˤ�2����μ��̻Ҥ�¸�ߤ��ޤ���message sequence number ��
UID �Ǥ���

message sequence number �ϥ᡼��ܥå�����γƥ�å�������1������
����줿�ֹ�Ǥ������å������˽����оݤΥ᡼��ܥå�����
�����ʥ�å��������ɲä��줿��硢���Υ�å�������
message sequence number ��
�Ǹ�Υ�å������� message sequence number+1�Ȥʤ�ޤ���
��å�������᡼��ܥå�������ä������ˤϡ�Ϣ�֤η������褦��
message sequence number ���դ��ؤ����ޤ���

������UID �ϥ��å�����ۤ��ƹ���Ū���ݻ�����ޤ���
����᡼��ܥå�����ΰۤʤ�2�ĤΥ�å�������Ʊ��  UID 
����Ĥ��ȤϤ���ޤ���
����ϡ���å��������᡼��ܥå������������줿��Ǥ���Ω���ޤ���

��������UID �ϥ᡼��ܥå�����Ǿ���Ǥ��뤳�Ȥ�
���ʾ���������Ƥ���Τǡ�
IMAP ��Ȥ�ʤ��᡼�륢�ץꥱ������󤬥᡼��ν��֤�
�Ѥ��Ƥ��ޤä����ϡ�UID ������ľ����ޤ���

=== ��

�ǥե���ȤΥ᡼��ܥå���(INBOX)�����긵�ȥ��֥������Ȥ�ɽ�����롣
  imap = Net::IMAP.new('mail.example.com')
  imap.authenticate('LOGIN', 'joe_user', 'joes_password')
  imap.examine('INBOX')
  imap.search(["RECENT"]).each do |message_id|
    envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
    puts "#{envelope.from[0].name}: \t#{envelope.subject}"
  end

2003ǯ4��Υ᡼��򤹤٤� Mail/sent-mail ���� "Mail/sent-apr03" �ذ�ư������

  imap = Net::IMAP.new('mail.example.com')
  imap.authenticate('LOGIN', 'joe_user', 'joes_password')
  imap.select('Mail/sent-mail')
  if not imap.list('Mail/', 'sent-apr03')
    imap.create('Mail/sent-apr03')
  end
  imap.search(["BEFORE", "30-Apr-2003", "SINCE", "1-Apr-2003"]).each do |message_id|
    imap.copy(message_id, "Mail/sent-apr03")
    imap.store(message_id, "+FLAGS", [:Deleted])
  end
  imap.expunge

=== ����åɰ�����
Net::IMAP ������¹Ԥ򥵥ݡ��Ȥ��Ƥ��ޤ�����Ȥ��ơ�

  imap = Net::IMAP.new("imap.foo.net", "imap2")
  imap.authenticate("cram-md5", "bar", "password")
  imap.select("inbox")
  fetch_thread = Thread.start { imap.fetch(1..-1, "UID") }
  search_result = imap.search(["BODY", "hello"])
  fetch_result = fetch_thread.value
  imap.disconnect

�Ȥ���� FETCH ���ޥ�ɤ� SEARCH ���ޥ�ɤ�����˼¹Ԥ��ޤ���

=== ���顼�ˤĤ���
IMAP �����Фϰʲ���3����Υ��顼������ޤ���

: NO
  ���ޥ�ɤ�����˴�λ���ʤ��ä����Ȥ��̣���ޤ���
  �㤨�С�������ǤΥ桼��̾/�ѥ���ɤ��ְ�äƤ�����
  ���򤷤��᡼��ܥå�����¸�ߤ��ʤ����ʤɤǤ���

: BAD
  ���饤����Ȥ���Υꥯ�����Ȥ򥵡��Ф�����Ǥ��ʤ��ä�
  ���Ȥ��̣���ޤ���
  ���饤����Ȥθ��ߤξ��֤ǤϻȤ��ʤ����ޥ�ɤ�Ȥ����Ȥ���
  ���ˤ�ȯ�����ޤ����㤨�С�
  selected����(SELECT/EXAMINE�Ǥ��ξ��֤˰ܹԤ���)�ˤʤ餺��
  SEARCH ���ޥ�ɤ�Ȥ����Ȥ�������ȯ�����ޤ���
  �����Ф��������顼(�ǥ����������줿�ʤ�)�ξ���
  ���Υ��顼��ȯ�����ޤ���

: BYE
  �����Ф���³���ڤ��Ȥ��Ƥ��뤳�Ȥ��̣���ޤ���
  ������̾�Υ������Ƚ�����ȯ�����ޤ���
  �ޤ�����������˥����Ф�(�ʤ�餫����ͳ��)��³
  �������ʤ����ˤ�ȯ�����ޤ���
  ����ʳ��Ǥϡ������Ф�����åȥ����󤹤��礫
  �����Ф������ॢ���Ȥ������ȯ�����ޤ���

�����Υ��顼�Ϥ��줾��
  * [[c:Net::IMAP::NoResponseError]]
  * [[c:Net::IMAP::BadResponseError]]
  * [[c:Net::IMAP::ByeResponseError]]
�Ȥ����㳰���饹���б����Ƥ��ޤ���
����Ū�ˤϡ��������㳰�ϥ����Ф˥��ޥ�ɤ����ä����ˤ�
���ȯ�������ǽ��������ޤ��������������Υɥ�����ȤǤ�
�褯���륨�顼�Τ߲��⤷�ޤ���

IMAP �� Socket ���̿��򤹤뤿�ᡢIMAP���饹�Υ᥽�åɤ�
Socket ��Ϣ�Υ��顼��ȯ�����뤫�⤷��ޤ����㤨�С�
�̿������³���ڤ��� [[c:Errno::EPIPE]] �㳰��
ȯ�����ޤ����ܤ����� [[c:Socket]] �ʤɤ򸫤Ƥ���������

[[c:Net::IMAP::DataFormatError]]��
[[c:Net::IMAP::ResponseParseError]] �Ȥ����㳰���饹��
¸�ߤ��ޤ������Ԥϥǡ����Υե����ޥåȤ��������ʤ����ˡ�
��Ԥϥ����Ф���Υ쥹�ݥ󥹤��ѡ����Ǥ��ʤ�����ȯ�����ޤ���
�����Υ��顼�Ϥ��Υ饤�֥��⤷���ϥ����Ф˿�������꤬
���뤳�Ȥ��̣���ޤ���

=== tagged response �� untagged response
IMAP �ץ�ȥ���ˤ����ƥ����Ф���α����ˤ� tagged �ʤ�Τ�
untagged �ʤ�Τ�2�̤�¸�ߤ��ޤ���
tagged �ʱ����ϡ����饤����Ȥ���Υ��ޥ�ɤ�
�����⤷���ϼ��ԤΤ����줫�Ǵ�λ�������Ȥ�ɽ����ΤǤ���
���� untagged �ʱ����Ϥ���ʳ��ξ�����Ϥ�����Τ�ΤǤ���
untagged �ʱ����ϥ��饤����Ȥ���Υ��ޥ�ɤη�̤ξ����
�Ϥ�����ˤ��Ѥ����ޤ����������Ǥʤ�(�����ФΥ���åȥ�����ʤ�)
��ȯŪ�����ˤ��Ѥ����ޤ���

����Ϥ��줾��
[[c:Net::IMAP::TaggedResponse]] �� [[c:Net::IMAP::UntaggedResponse]]
���б����ޤ���

untagged �ʱ����ϥ��ޥ�ɤ������Ȥ���Ʊ��Ū�˥����Ф��������뤿�ᡢ
[[c:Net::IMAP]] ���֥������Ȥϥ桼���Τ��ᤳ���
[[m:Net::IMAP#responses]] �˵�Ͽ���Ƥ����ޤ���

=== References

  * [IMAP]
    M. Crispin, "INTERNET MESSAGE ACCESS PROTOCOL - VERSION 4rev1",
    RFC 2060, December 1996.

  * [LANGUAGE-TAGS]
    Alvestrand, H., "Tags for the Identification of
    Languages", RFC 1766, March 1995.

  * [MD5]
    Myers, J., and M. Rose, "The Content-MD5 Header Field", RFC
    1864, October 1995.

  * [MIME-IMB]
    Freed, N., and N. Borenstein, "MIME (Multipurpose Internet
    Mail Extensions) Part One: Format of Internet Message Bodies", RFC
    2045, November 1996.

  * [RFC-822]
    Crocker, D., "Standard for the Format of ARPA Internet Text
    Messages", STD 11, RFC 822, University of Delaware, August 1982.

  * [RFC-2087]
    Myers, J., "IMAP4 QUOTA extension", RFC 2087, January 1997.

  * [RFC-2086]
    Myers, J., "IMAP4 ACL extension", RFC 2086, January 1997.

  * [OSSL]
    [[url:http://www.openssl.org]]

  * [RSSL]
    [[url:http://savannah.gnu.org/projects/rubypki]]

�ʾ�Τ����������Ĥ��� RFC �� obsolete �ˤʤä��֤��������Ƥ��ޤ���
[[RFC:2060]] �� [[RFC:3501]] �ˡ�[[RFC:822]] �� [[RFC:2822]] �ˡ�
�֤��������Ƥ��ޤ���

= class Net::IMAP < Object

IMAP ��³��ɽ�����륯�饹�Ǥ���

== Class Methods

--- new(host, port = 143, usessl = false, certs = nil, verify = false) -> Net::IMAP
--- new(host, options) -> Net::IMAP

������ Net::IMAP ���֥������Ȥ������������ꤷ���ۥ��Ȥ�
���ꤷ���ݡ��Ȥ���³������³��� IMAP ���֥������Ȥ��֤��ޤ���

usessl �����ʤ�С������Ф˷Ҥ��Τ� SSL/TLS ���Ѥ��ޤ���
SSL/TLS �Ǥ���³�ˤ� OpenSSL �� [[lib:openssl]] ���Ȥ���ɬ�פ�����ޤ���
certs �����Ѥ��������Υե�����̾�⤷���Ͼ����񤬤���ǥ��쥯�ȥ�̾��
ʸ������Ϥ��ޤ���
certs �� nil ���Ϥ��ȡ�OpenSSL �Υǥե���Ȥξ������Ȥ��ޤ���
verify ����³��򸡾ڤ��뤫�򿿵��ͤ����ꤷ�ޤ���
���� [[m:OpenSSL::SSL::VERIFY_PEER]] �ˡ�
���� [[m:OpenSSL::SSL::VERIFY_NONE]] ���б����ޤ���

�ѥ�᡼���� Hash ���Ϥ����Ȥ�Ǥ��ޤ����ʲ��Υ�����Ȥ����Ȥ��Ǥ��ޤ���
  * :port �ݡ����ֹ�
    ��ά���� SSL/TLS ���ѻ���993 �Ի��ѻ���143 �Ȥʤ�ޤ���
  * :ssl OpenSSL ���Ϥ��ѥ�᡼����ϥå���ǻ��ꤷ�ޤ���
    ��ά���� SSL/TLS ��Ȥ鷺��³���ޤ���
    ������Ϥ���ѥ�᡼����
    [[m:OpenSSL::SSL::SSLContext#set_params]] ��Ʊ���Ǥ���
����� :ssl �ѥ�᡼����Ȥ����Ȥǡ�OpenSSL �Υѥ�᡼����ܺ٤�
Ĵ���Ǥ��ޤ���


��
  imap = Net::IMAP.new('imap.example.com', :port => 993,
                       :ssl => { :verify_mode => OpenSSL::SSL::VERIFY_PEER,
                                 :timeout => 600 } )

@param host ��³����ۥ���̾��ʸ����
@param port ��³����ݡ����ֹ�
@param usessl ����SSL/TLS��Ȥ�
@param certs ������Υե�����̾/�ǥ��쥯�ȥ�̾��ʸ����
@param verify ������³��򸡾ڤ���
@param options �Ƽ���³�ѥ�᡼���Υϥå���

--- debug -> bool

�ǥХå��⡼�ɤ� on �ˤʤäƤ���п����֤��ޤ���

@see [[m:Net::IMAP#debug=]]

--- debug=(val)
�ǥХå��⡼�ɤ� on/off �򤷤ޤ���

�����Ϥ��� on �ˤʤ�ޤ���

@param val ���ꤹ��ǥХå��⡼�ɤ� on/off �ο�����
@see [[m:Net::IMAP#debug]]

--- add_authenticator(auth_type, authenticator) -> ()
[[m:Net::IMAP#authenticate]] �ǻȤ� 
ǧ���ѥ��饹�����ꤷ�ޤ���

imap �饤�֥��˿�����ǧ���������ɲä��뤿����Ѥ��ޤ���

�̾�ϻȤ�ɬ�פϤʤ��Ǥ��礦���⤷������Ѥ���
ǧ���������ɲä������ net/imap.rb ��
Net::IMAP::LoginAuthenticator �ʤɤ򻲹ͤˤ��Ƥ���������

@param auth_type ǧ�ڤμ���(ʸ����)
@param authenticator ǧ�ڥ��饹(Class ���֥�������)

--- decode_utf7(str) -> String
modified UTF-7 ��ʸ����� UTF-8 ��ʸ������Ѵ����ޤ���

modified UTF-7 �� IMAP �Υ᡼��ܥå���̾�˻Ȥ��륨�󥳡��ǥ��󥰤ǡ�
UTF-7 ����������ΤǤ���

�ܤ����� [[RFC:2060]] �� 5.1.3 �򻲾Ȥ��Ƥ���������

Net::IMAP �Ǥϥ᡼��ܥå���̾�Υ��󥳡��ɤ�ưŪ�Ѵ��֤��ʤ���
���Ȥ���դ��Ƥ���������ɬ�פ�����Х桼�����Ѵ����٤��Ǥ���

@param str �Ѵ��оݤ� modified UTF-7 �ǥ��󥳡��ɤ��줿ʸ����
@see [[m:Net::IMAP.encode_utf7]]
--- encode_utf7(str) -> String
UTF-8 ��ʸ����� modified UTF-7 ��ʸ������Ѵ����ޤ���

modified UTF-7 �� IMAP �Υ᡼��ܥå���̾�˻Ȥ��륨�󥳡��ǥ��󥰤ǡ�
UTF-7 ����������ΤǤ���

�ܤ����� [[m:Net::IMAP.encode_utf7]] �򸫤Ƥ���������

@param str �Ѵ��оݤ� UTF-8 �ǥ��󥳡��ɤ��줿ʸ����
@see [[m:Net::IMAP.decode_utf7]]

#@since 1.9.1

--- format_date(time) -> String
���索�֥������Ȥ� IMAP �����եե����ޥåȤǤ�ʸ������Ѵ����ޤ���

  Net::IMAP.format_date(Time.new(2011, 6, 20))
  # => "20-Jun-2011"

@param time �Ѵ�������索�֥�������

--- format_datetime(time) -> String
���索�֥������Ȥ� IMAP �����ջ���ե����ޥåȤǤ�ʸ������Ѵ����ޤ�

  Net::IMAP.format_datetime(Time.new(2011, 6, 20, 13, 20, 1))
  # => "20-Jun-2011 13:20 +0900"

@param time �Ѵ�������索�֥�������

--- max_flag_count -> Integer
�����Ф���Υ쥹�ݥ󥹤˴ޤޤ�� flag �ξ�¤��֤��ޤ���

�����ۤ��� flag ���쥹�ݥ󥹤˴ޤޤ�Ƥ�����ϡ�
[[c:Net::IMAP::FlagCountError]] �㳰��ȯ�����ޤ���

@see [[m:Net::IMAP.max_flag_count=]]

--- max_flag_count=(count)
�����Ф���Υ쥹�ݥ󥹤˴ޤޤ�� flag �ξ�¤����ꤷ�ޤ���

�����ۤ��� flag ���쥹�ݥ󥹤˴ޤޤ�Ƥ�����ϡ�
[[c:Net::IMAP::FlagCountError]] �㳰��ȯ�����ޤ���

�ǥե���Ȥ� 10000 �Ǥ����̾���Ѥ���ɬ�פϤʤ��Ǥ��礦��

@param count ���ꤹ������ͤ�����
@see [[m:Net::IMAP.max_flag_count]]
#@end

== Methods

--- greeting -> Net::IMAP::UntaggedResponse
�����Ф���ǽ�������Ƥ����å�����(greeting message)
���֤��ޤ���

--- responses -> { String => [object] }
�����Ф��������Ƥ��� untagged �ʱ����ε�Ͽ���֤��ޤ���

untagged �ʱ����ϼ��ऴ�Ȥ˵�Ͽ����ޤ���
�����μ���ˤ� "FLAGS", "OK", "UIDVALIDITY", "EXISTS" �ʤɤ����ꡢ
����ʸ���󤬥ϥå���ơ��֥�Υ����Ȥʤ�ޤ���
�����ƳƼ��ऴ�Ȥ������Ѱդ��졢untagged �ʱ�����������뤿�Ӥ�
��������������ˤ������Ƥ���Ͽ����ޤ���


��:
  imap.select("inbox")
  p imap.responses["EXISTS"].last
  #=> 2
  p imap.responses["UIDVALIDITY"].last
  #=> 968263756

--- disconnect -> nil
�����ФȤ���³�����Ǥ��ޤ���

@see [[m:Net::IMAP#disconnected?]]

--- capability -> [String]
CAPABILITY ���ޥ�ɤ����äƥ����Ф����ݡ��Ȥ��Ƥ���
��ǽ(capabilities)�Υꥹ�Ȥ�ʸ���������Ȥ����֤��ޤ���

capability �� IMAP �˴�Ϣ���� RFC �ʤɤ��������Ƥ��ޤ���

  imap.capability
  # => ["IMAP4REV1", "UNSELECT", "IDLE", "NAMESPACE", "QUOTA", ... ]

--- noop -> Net::IMAP::TaggedResponse
NOOP ���ޥ�ɤ�����ޤ���

���Υ��ޥ�ɤϲ��⤷�ޤ���

--- logout -> Net::IMAP::TaggedResponse
LOGOUT ���ޥ�ɤ����ꡢ���ͥ����������Ǥ��뤳�Ȥ�
�����Ф������ޤ���

--- authenticate(auth_type, user, password) -> Net::IMAP::TaggedResponse

AUTHENTICATE ���ޥ�ɤ����ꡢ���饤����Ȥ�ǧ�ڤ��ޤ���

auth_type �����Ѥ���ǧ��������ʸ����ǻ��ꤷ�ޤ���


��:
  imap.authenticate('LOGIN', user, password)

auth_type �Ȥ��Ƥϰʲ������ݡ��Ȥ���Ƥ��ޤ���
  * "LOGIN"
  * "PLAIN"
  * "CRAM-MD5"
  * "DIGEST-MD5"

@param auth_type ǧ��������ɽ��ʸ����
@param user �桼��̾ʸ����
@param password �ѥ����ʸ����
@see [[m:Net::IMAP#login]]

--- login(user, password) -> Net::IMAP::TaggedResponse
LOGIN ���ޥ�ɤ����ꡢʿʸ�ǥѥ���ɤ����ꥯ�饤�����
�桼����ǧ�ڤ��ޤ���

[[m:Net::IMAP#authenticate]] �� "LOGIN" ��Ȥ��ΤȤϰۤʤ�
���Ȥ���դ��Ƥ���������authenticate �Ǥ� AUTHENTICATE ���ޥ�ɤ�
����ޤ���

ǧ���������ˤ�
ǧ�������쥹�ݥ󥹤��֤��ͤȤ����֤��ޤ���

ǧ�ڼ��Ի��ˤ��㳰��ȯ�����ޤ���

@param user �桼��̾ʸ����
@param password �ѥ����ʸ����
@raise Net::IMAP::NoResponseError ǧ�ڤ˼��Ԥ�������ȯ�����ޤ�
@see [[m:Net::IMAP#authenticate]]

--- select(mailbox) -> Net::IMAP::TaggedResponse
SELECT ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå���������оݤ�
�᡼��ܥå����ˤ��ޤ���

���Υ��ޥ�ɤ���������ȡ����饤����Ȥξ��֤���selected�פˤʤ�ޤ���

���Υ��ޥ�ɤ�¹Ԥ���ľ��� [[m:Net::IMAP#responses]]["EXISTS"].last
��Ĵ�٤�ȡ��᡼��ܥå�����Υ᡼��ο����狼��ޤ���
�ޤ���[[m:Net::IMAP#responses]]["RECENT"].last�ǡ�
�ǿ��Υ᡼��ο����狼��ޤ���
�������ͤϥ��å��������Ѥ�ꤦ�뤳�Ȥ���դ��Ƥ���������
[[m:Net::IMAP#add_response_handler]] ��Ȥ��Ȥ��Τ褦�ʹ��������
¨�¤˼����Ǥ��ޤ���

@param mailbox �����оݤȤ������᡼��ܥå�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError mailbox��¸�ߤ��ʤ�������ͳ�ǥ��ޥ�ɤμ¹Ԥ˼���
       ��������ȯ�����ޤ���

--- examine(mailbox) -> Net::IMAP::TaggedResponse
EXAMINE ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå���������оݤ�
�᡼��ܥå����ˤ��ޤ���

[[m:Net::IMAP#select]] �Ȱۤʤꥻ�å������ϥ᡼��ܥå�����
�ɤ߼�����ѤȤʤ�ޤ�������ʳ��� select ��Ʊ���Ǥ���

@param mailbox �����оݤȤ������᡼��ܥå�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError mailbox��¸�ߤ��ʤ�������ͳ�ǥ��ޥ�ɤμ¹Ԥ˼���
       ��������ȯ�����ޤ���

--- create(mailbox) -> Net::IMAP::TaggedResponse
CREATE  ���ޥ�ɤ����ꡢ�������᡼��ܥå�������ޤ���

@param mailbox �������᡼��ܥå�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError ���ꤷ��̾���Υ᡼��ܥå��������ʤ��ä�����ȯ�����ޤ�

--- delete(mailbox) -> Net::IMAP::TaggedResponse
DELETE ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå����������ޤ���

@param mailbox �������᡼��ܥå�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError ���ꤷ��̾���Υ᡼��ܥå��������Ǥ��ʤ��ä����
       ��ȯ�����ޤ������ꤷ��̾���Υ᡼��ܥå�����¸�ߤ��ʤ����䡢
       �桼���˥᡼��ܥå����������븢�¤��ʤ�����ȯ�����ޤ���

--- rename(mailbox, newname) -> Net::IMAP::TaggedResponse
RENAME ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå������͡��ष�ޤ���

@param mailbox ��͡��ह��᡼��ܥå���(ʸ����)
@param newname ��͡�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError ���ꤷ��̾���Υ᡼��ܥå�����
       ��͡���Ǥ��ʤ��ä�����ȯ�����ޤ���
       ���ꤷ��̾���Υ᡼��ܥå�����¸�ߤ��ʤ����䡢
       ��͡�����̾������ĥ᡼��ܥå���������¸�ߤ���
       ����ȯ�����ޤ���


--- subscribe(mailbox) -> Net::IMAP::TaggedResponse
SUBSCRIBE ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå�����
"active" �⤷���� "subscribe" �ʥ᡼��ܥå����ν����
�ɲä��ޤ���

@param mailbox �ɲä���᡼��ܥå�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError ���ꤷ��̾���Υ᡼��ܥå�����
       �ɲäǤ��ʤ��ä�����ȯ�����ޤ���
       ���ꤷ��̾���Υ᡼��ܥå�����¸�ߤ��ʤ����ʤɤ�
       �����ޤ���

--- unsubscribe(mailbox) -> Net::IMAP::TaggedResponse
UNSUBSCRIBE ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå�����
"active" �⤷���� "subscribe" �ʥ᡼��ܥå����ν��礫��
������ޤ���

@param mailbox ������뤹��᡼��ܥå�����̾��(ʸ����)
@raise Net::IMAP::NoResponseError ���ꤷ��̾���Υ᡼��ܥå�����
       ����Ǥ��ʤ��ä�����ȯ�����ޤ���
       ���ꤷ��̾���Υ᡼��ܥå����� active/subscribe �Ǥʤ��ä�
       ���ʤɤ�ȯ�����ޤ���

--- list(refname, mailbox) -> [Net::IMAP::MailboxList] | nil

LIST ���ޥ�ɤ����ꡢ���饤����Ȥ������Ѳ�ǽ�ʥ᡼��ܥå���̾�ν��礫��
�����˥ޥå������Τ��٤Ƥ��֤��ޤ���

�ܤ�����  [[RFC:2060]] �� 6.3.8 �򻲾Ȥ��Ƥ���������

�֤��ͤ� [[c:Net::IMAP::MailboxList]] ��������֤��ޤ���
�֤��ͤ�������Ǥ�����϶�������Ǥʤ� nil ���֤��ޤ���

@param refname ����̾(ʸ����)
@param mailbox Ĵ�٤�᡼��ܥå�����̾��(ʸ����)���磻��ɥ����ɤ�ޤ�Ǥ��Ƥ⤫�ޤ��ޤ���

��:
  imap.create("foo/bar")
  imap.create("foo/baz")
  p imap.list("", "foo/%")
  #=> [#<Net::IMAP::MailboxList attr=[:Noselect], delim="/", name="foo/">, #<Net::IMAP::MailboxList attr=[:Noinferiors, :Marked], delim="/", name="foo/bar">, #<Net::IMAP::MailboxList attr=[:Noinferiors], delim="/", name="foo/baz">]

#@since 1.9.3
--- xlist(refname, mailbox) -> [Net::IMAP::MailboxList]

XLIST���ޥ�ɤ����ꡢ���饤����Ȥ������Ѳ�ǽ�ʥ᡼��ܥå���̾�ν��礫��
�����˥ޥå������Τ��٤Ƥ��֤��ޤ���

[[m:Net::IMAP#list]] �Ȥۤ�Ʊ�ͤǤ�����
��:Sent�פʤɤγ�ĥ���줿�ե饰��ޤळ�Ȥ��ۤʤ�ޤ���

�ܤ�����
[[url:http://code.google.com/apis/gmail/imap/]]
�򻲾Ȥ��Ƥ���������

@param refname ����̾(ʸ����)
@param mailbox Ĵ�٤�᡼��ܥå�����̾��(ʸ����)���磻��ɥ����ɤ�ޤ�Ǥ��Ƥ⤫�ޤ��ޤ���

��:
  imap.create("foo/bar")
  imap.create("foo/baz")
  p imap.xlist("", "foo/%")
  #=> [#<Net::IMAP::MailboxList attr=[:Noselect], delim="/", name="foo/">, \\
  #    #<Net::IMAP::MailboxList attr=[:Noinferiors, :Marked], delim="/", name="foo/bar">, \\
  #    #<Net::IMAP::MailboxList attr=[:Noinferiors], delim="/", name="foo/baz">]

#@end

--- lsub(refname, mailbox) -> [Net::IMAP::MailboxList]

LIST ���ޥ�ɤ����ꡢactive/subscribed �ʥ᡼��ܥå���̾�ν��礫��
�����˥ޥå������Τ��٤Ƥ��֤��ޤ���

�ܤ�����  [[RFC:2060]] �� 6.3.8 �򻲾Ȥ��Ƥ���������

�֤��ͤ� [[c:Net::IMAP::MailboxList]] ��������֤��ޤ���
�֤��ͤ�������Ǥ�����϶�������Ǥʤ� nil ���֤��ޤ���

@param refname ����̾(ʸ����)
@param mailbox Ĵ�٤�᡼��ܥå�����̾��(ʸ����)���磻��ɥ����ɤ�ޤ�Ǥ��Ƥ⤫�ޤ��ޤ���

--- status(mailbox, attr) -> {String => Integer}
STATUS ���ޥ�ɤ����ꡢmailbox �Υ��ơ����������ޤ���

�䤤��碌�������ơ������� attr ��ʸ�����������Ϥ��ޤ���

�֤��ͤ� ���ȥ�ӥ塼��ʸ����򥭡��Ȥ���ϥå���Ǥ���

�ܤ����� [[RFC:2060]] �� 6.3.10 �򻲹ͤˤ��Ƥ���������

��:
  p imap.status("inbox", ["MESSAGES", "RECENT"])
  #=> {"RECENT"=>0, "MESSAGES"=>44}

@param mailbox �䤤��碌�оݤΥ᡼��ܥå���(ʸ����)
@param attr ��礻�������ȥ�ӥ塼��̾(ʸ����)������
@raise Net::IMAP::NoResponseError �᡼��ܥå�����¸�ߤ��ʤ����䡢
       ���ȥ�ӥ塼��̾��¸�ߤ��ʤ�����ȯ�����ޤ�

--- append(mailbox, message, flags = nil, date_time = nil) -> Net::IMAP::TaggedResponse

APPEND ���ޥ�ɤ����äƥ�å�������᡼��ܥå������������ɲä��ޤ���


��:
  imap.append("inbox", <<EOF.gsub(/\n/, "\r\n"), [:Seen], Time.now)
  Subject: hello
  From: someone@example.com
  To: somebody@example.com
  
  hello world
  EOF

@param mailbox ��å��������ɲä���᡼��ܥå���̾(ʸ����)
@param message ��å�����ʸ����
@param flags ��å��������ղä���ե饰([[c:Symbol]] ������)
@param date_time ��å������λ���([[c:Time]] ���֥�������)����ά���ϸ��߻��郎�Ȥ���
@raise Net::IMAP::NoResponseError �᡼��ܥå�����¸�ߤ��ʤ�����ȯ�����ޤ�


--- check -> Net::IMAP::TaggedResponse
CHECK ���ޥ�ɤ����ꡢ���߽������Ƥ���᡼��ܥå�����
�����å��ݥ���Ȥ��׵ᤷ�ޤ���

�����å��ݥ���Ȥ��׵�Ȥϡ���������������α���֤ˤʤäƤ���
����λ�����뤳�Ȥ��̣���ޤ����㤨�Х����ˤ���᡼���
�ǡ�����ǥ������˽񤭹��ि�ᡢfsync��Ƥ���ꤹ�뤳�ȤǤ���
�ºݤ˲����Ԥʤ��뤫�ϥ����Фμ����ˤ��ޤ���������Ԥʤ��ʤ�
���⤢��ޤ���


--- close -> Net::IMAP::TaggedResponse
CLOSE ���ޥ�ɤ����ꡢ������Υ᡼��ܥå������Ĥ��ޤ���

���Υ��ޥ�ɤˤ�äơ��ɤΥ᡼��ܥå��������򤵤�Ƥ��ʤ�
���֤˰ܹԤ��ޤ���
������ \Deleted �ե饰���դ���줿�᡼�뤬���٤ƺ������ޤ���

--- expunge -> [Integer] | nil
EXPUNGE���ޥ�ɤ����ꡢ:Deleted�ե饰�򥻥åȤ�����å�������
���٤ƽ�����Υ᡼��ܥå������������ޤ���

���������å������� message sequence number ��������֤��ޤ���

@raise Net::IMAP::NoResponseError �᡼��ܥå����� read-only �Ǥ������ȯ�����ޤ�

--- search(keys, charset = nil) -> [Integer]
SEARCH ���ޥ�ɤ����ꡢ���˹礦��å������� message sequence number
��������֤��ޤ���

[[m:Net::IMAP#examine]] �⤷���� [[m:Net::IMAP#select]] ��
���ꤷ���᡼��ܥå����򸡺��оݤȤ��ޤ���

�����ξ��� key ��ʸ�����1��������⤷����ʸ������Ϥ��ޤ���

�������� "SUBJECT", "FROM" �ʤɤ��Ѥ��뤳�Ȥ��Ǥ��ޤ���
�ܤ����� [[RFC:2060]] �� 6.4.4 �򸫤Ƥ���������

��:
  p imap.search(["SUBJECT", "hello"])
  #=> [1, 6, 7, 8]
  p imap.search(["SUBJECT", "hello", "FROM", "foo@example.com"])
  #=> [6, 7]
  p imap.search('SUBJECT "hello"')
  #=> [1, 6, 7, 8]

@param key ��������(ʸ���������⤷����ʸ����)
@param charset �������Ѥ���charset
@see [[m:Net::IMAP#search]]

--- uid_search(keys, charset = nil) -> [Integer]

UID SEARCH ���ޥ�ɤ����ꡢ���˹礦��å������� UID
��������֤��ޤ���

[[m:Net::IMAP#examine]] �⤷���� [[m:Net::IMAP#select]] ��
���ꤷ���᡼��ܥå����򸡺��оݤȤ��ޤ���

�����ξ��� key ��ʸ�����1��������⤷����ʸ������Ϥ��ޤ���

�������� "SUBJECT", "FROM" �ʤɤ��Ѥ��뤳�Ȥ��Ǥ��ޤ���
�ܤ����� [[RFC:2060]] �� 6.4.4 �򸫤Ƥ���������

��:
  p imap.uid_search(["SUBJECT", "hello"])
  #=> [1, 6, 7, 8]
  p imap.uid_search(["SUBJECT", "hello", "FROM", "foo@example.com"])
  #=> [6, 7]
  p imap.uid_search('SUBJECT "hello"')
  #=> [1, 6, 7, 8]

@param key ��������(ʸ���������⤷����ʸ����)
@param charset �������Ѥ���charset
@see [[m:Net::IMAP#uid_search]]

--- fetch(set, attr) -> [Net::IMAP::FetchData]

FETCH ���ޥ�ɤ����ꡢ�᡼��ܥå�����Υ�å�������
�ؤ���ǡ�����������ޤ���

[[m:Net::IMAP#examine]] �⤷���� [[m:Net::IMAP#select]] ��
���ꤷ���᡼��ܥå������оݤȤ��ޤ���

set ���оݤȤ����å���������ꤷ�ޤ���
����ˤ� sequence number��sequence number �����󡢤⤷����
[[c:Range]] ���֥������Ȥ��Ϥ��ޤ���
attr �ˤϼ������륢�ȥ�ӥ塼�Ȥ�ʸ�����������Ϥ��Ƥ���������
�����ǽ�ʥ��ȥ�ӥ塼�ȤˤĤ��Ƥ� [[m:Net::IMAP::FetchData#attr]] 
�򸫤Ƥ���������

��:

  p imap.fetch(6..8, "UID")
  #=> [#<Net::IMAP::FetchData seqno=6, attr={"UID"=>98}>, #<Net::IMAP::FetchData seqno=7, attr={"UID"=>99}>, #<Net::IMAP::FetchData seqno=8, attr={"UID"=>100}>]
  p imap.fetch(6, "BODY[HEADER.FIELDS (SUBJECT)]")
  #=> [#<Net::IMAP::FetchData seqno=6, attr={"BODY[HEADER.FIELDS (SUBJECT)]"=>"Subject: test\r\n\r\n"}>]
  data = imap.uid_fetch(98, ["RFC822.SIZE", "INTERNALDATE"])[0]
  p data.seqno
  #=> 6
  p data.attr["RFC822.SIZE"]
  #=> 611
  p data.attr["INTERNALDATE"]
  #=> "12-Oct-2000 22:40:59 +0900"
  p data.attr["UID"]
  #=> 98

@param set �����оݤΥ�å������� sequence number
@param attr ���ȥ�ӥ塼��(ʸ��������)
@see [[m:Net::IMAP#uid_fetch]]

--- uid_fetch(set, attr) -> [Net::IMAP::FetchData]

UID FETCH ���ޥ�ɤ����ꡢ�᡼��ܥå�����Υ�å�������
�ؤ���ǡ�����������ޤ���

[[m:Net::IMAP#examine]] �⤷���� [[m:Net::IMAP#select]] ��
���ꤷ���᡼��ܥå������оݤȤ��ޤ���

set ���оݤȤ����å���������ꤷ�ޤ���
����ˤ� UID��UID �����󡢤⤷����
[[c:Range]] ���֥������Ȥ��Ϥ��ޤ���
attr �ˤϼ������륢�ȥ�ӥ塼�Ȥ�ʸ�����������Ϥ��Ƥ���������
�����ǽ�ʥ��ȥ�ӥ塼�ȤˤĤ��Ƥ� [[m:Net::IMAP::FetchData#attr]] 
�򸫤Ƥ���������

@param set �����оݤΥ�å������� UID
@param attr ���ȥ�ӥ塼��(ʸ��������)
@see [[m:Net::IMAP#fetch]]

--- store(set, attr, flags) -> [Net::IMAP::FetchData] | nil
STORE ���ޥ�ɤ����ꡢ�᡼��ܥå�����Υ�å�������
�������ޤ���

set �ǹ��������å���������ꤷ�ޤ���
����ˤ� sequence number��sequence number �����󡢤⤷����
[[c:Range]] ���֥������Ȥ��Ϥ��ޤ���

[[m:Net::IMAP#select]] �ǻ��ꤷ���᡼��ܥå������оݤȤ��ޤ���

attr �ǲ���ɤΤ褦���Ѳ������뤫����ꤷ�ޤ���
�ʲ�����ꤹ�뤳�Ȥ��Ǥ��ޤ���
  * "FLAGS"
  * "+FLAGS"
  * "-FLAGS"
���줾���å������Υե饰���֤��������ɲá�������̣���ޤ���
�ܤ����� [[RFC:2060]] �� 6.4.6 �򻲹ͤˤ��Ƥ���������

flags �ˤ� ����ܥ��������֤��������ɲä⤷���Ϻ�������
�ե饰����ꤷ�ޤ���

�֤��ͤϹ������줿���Ƥ� [[c:Net::IMAP::FetchData]] ���֥������Ȥ�
������֤��ޤ���

��:

  p imap.store(6..8, "+FLAGS", [:Deleted])
  #=> [#<Net::IMAP::FetchData seqno=6, attr={"FLAGS"=>[:Seen, :Deleted]}>, #<Net::IMAP::FetchData seqno=7, attr={"FLAGS"=>[:Seen, :Deleted]}>, #<Net::IMAP::FetchData seqno=8, attr={"FLAGS"=>[:Seen, :Deleted]}>]

@param set ���������å�������sequence number
@param attr ��������(ʸ����)
@param flags ��������([[c:Symbol]] ������)
@see [[m:Net::IMAP#uid_store]], [[m:Net::IMAP#fetch]]

--- uid_store(set, attr, flags) -> [Net::IMAP::FetchData] | nil

UID STORE ���ޥ�ɤ����ꡢ�᡼��ܥå�����Υ�å�������
�������ޤ���

set �ǹ��������å���������ꤷ�ޤ���
����ˤ� UID��UID �����󡢤⤷����
[[c:Range]] ���֥������Ȥ��Ϥ��ޤ���

[[m:Net::IMAP#select]] �ǻ��ꤷ���᡼��ܥå������оݤȤ��ޤ���

attr �ǲ���ɤΤ褦���Ѳ������뤫����ꤷ�ޤ���
�ʲ�����ꤹ�뤳�Ȥ��Ǥ��ޤ���
  * "FLAGS"
  * "+FLAGS"
  * "-FLAGS"
���줾���å������Υե饰���֤��������ɲá�������̣���ޤ���
�ܤ����� [[RFC:2060]] �� 6.4.6 �򻲹ͤˤ��Ƥ���������

�֤��ͤϹ������줿���Ƥ� [[c:Net::IMAP::FetchData]] ���֥������Ȥ�
������֤��ޤ���

@param set ���������å������� UID
@param attr ��������(ʸ����)
@param flags ��������([[c:Symbol]] ������)

@see [[m:Net::IMAP#store]], [[m:Net::IMAP#uid_fetch]]

--- copy(set, mailbox) -> Net::IMAP::TaggedResponse
COPY ���ޥ�ɤ����ꡢ���ꤷ����å�������
���ꤷ���᡼��ܥå������������ɲä��ޤ���

set �ǥ��ԡ������å���������ꤷ�ޤ���
message sequence number(����)��
message sequence number�����󡢤⤷���� [[c:Range]] ��
���ꤷ�ޤ������ԡ����Υ᡼��ܥå�����
[[m:Net::IMAP#examine]] �⤷���� [[m:Net::IMAP#select]] ��
���ꤷ����Τ��Ѥ��ޤ���
mailbox �ϥ��ԡ���Υ᡼��ܥå����Ǥ���

@param set ���ԡ������å������� message sequence number
@param mailbox ���ԡ���Υ᡼��ܥå���(ʸ����)
@see [[m:Net::IMAP#uid_copy]]

--- uid_copy(set, mailbox) -> Net::IMAP::TaggedResponse
UID COPY ���ޥ�ɤ����ꡢ���ꤷ����å�������
���ꤷ���᡼��ܥå������������ɲä��ޤ���

set �ǥ��ԡ������å���������ꤷ�ޤ���
UID (����)��
UID �����󡢤⤷���� [[c:Range]] ��
���ꤷ�ޤ������ԡ����Υ᡼��ܥå�����
[[m:Net::IMAP#examine]] �⤷���� [[m:Net::IMAP#select]] ��
���ꤷ����Τ��Ѥ��ޤ���
mailbox �ϥ��ԡ���Υ᡼��ܥå����Ǥ���

@param set ���ԡ������å������� UID
@param mailbox ���ԡ���Υ᡼��ܥå���(ʸ����)
@see [[m:Net::IMAP#copy]]

--- sort(sort_keys, search_keys, charset) -> [Integer]
--- uid_sort(sort_keys, search_keys, charset) -> [Integer]
SORT ���ޥ�����ꡢ�᡼��ܥå������
��å������򥽡��Ȥ�����̤��֤��ޤ���

SORT ���ޥ�ɤ� [[RFC:5256]] ���������Ƥ��ޤ���
�ܤ����Ϥ�����򻲾Ȥ��Ƥ���������
���Υ��ޥ�ɤ� [[m:Net::IMAP#capability]] ���֤��ͤ򸫤뤳�Ȥ�
���Ѳ�ǽ���ɤ���Ƚ�ǤǤ��ޤ���

sort_keys �ˤϥ����Ƚ����륭����ʸ���������ǻ��ꤷ�ޤ���
"ARRIVAL", "CC", "FROM", "TO", "SUBJECT" �ʤɤ�����Ǥ��ޤ���
�ܤ����� [[RFC:5265]] �� BASE.6.4.SORT �ν�򸫤Ƥ���������

search_key �ˤϸ��������Ϥ��ޤ���[[m:Net::IMAP#search]] ��
�ۤ�Ʊ���Ǥ������ξ��˥ޥå������å������Τߤ������Ȥ���ޤ���

[[m:Net::IMAP#examine]] �⤷����
[[m:Net::IMAP#select]] �ǻ��ꤷ���᡼��ܥå������оݤȤ��ޤ���

�֤��ͤ� message sequence number ��������֤��ޤ���

��:
  p imap.sort(["FROM"], ["ALL"], "US-ASCII")
  #=> [1, 2, 3, 5, 6, 7, 8, 4, 9]
  p imap.sort(["DATE"], ["SUBJECT", "hello"], "US-ASCII")
  #=> [6, 7, 8, 1]
@param sort_key �����Ƚ�Υ���(ʸ��������)
@param search_key �������(ʸ��������)
@param charset �������β����Ѥ���CHARSET̾(ʸ����)

--- setquota(mailbox, quota) -> Net::IMAP::TaggedResponse
SETQUOTA ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå�����
quota �����ꤷ�ޤ���

quota �� nil �ʤ�С�mailbox �� quota ���˴����ޤ���
quota �������ʤ� STORAGE �򤽤��ͤ��ѹ����ޤ���

�ܤ����� [[RFC:2087]] �򸫤Ƥ���������
���Υ��ޥ�ɤ� [[m:Net::IMAP#capability]] ���֤��ͤ򸫤뤳�Ȥ�
���Ѳ�ǽ���ɤ���Ƚ�ǤǤ��ޤ���

@param mailbox quota �����ꤹ��᡼��ܥå���̾(ʸ����)
@param quota quota����(���ȥ졼���Υ��������⤷���� nil)
@raise Net::IMAP::NoResponseError ���ꤷ���᡼��ܥå����� quota root 
       �Ǥʤ���硢�⤷���ϸ��¤�¸�ߤ��ʤ�����ȯ�����ޤ���

--- getquota(mailbox) -> [Net::IMAP::MailboxQuota]
GETQUOTA ���ޥ�ɤ����ä�
���ꤷ���᡼��ܥå����� quota �ξ�����֤��ޤ���

quota �ξ���� [[c:Net::IMAP::MailboxQuota]] ���֥������Ȥ������
�����ޤ���

�ܤ����� [[RFC:2087]] �򸫤Ƥ���������
���Υ��ޥ�ɤ� [[m:Net::IMAP#capability]] ���֤��ͤ򸫤뤳�Ȥ�
���Ѳ�ǽ���ɤ���Ƚ�ǤǤ��ޤ���

@param mailbox quota ������������᡼��ܥå���̾
@raise Net::IMAP::NoResponseError ���ꤷ���᡼��ܥå����� quota root �Ǥʤ�����ȯ�����ޤ�

--- getquotaroot(mailbox) -> [Net::IMAP::MailboxQuotaRoot | Net::IMAP::MailboxQuota]
GETQUOTAROOT ���ޥ�ɤ����ä�
���ꤷ���᡼��ܥå����� quota root �ΰ����ȡ�
��Ϣ���� quota �ξ�����֤��ޤ���

quota root �ξ���� [[c:Net::IMAP::MailboxQuotaRoot]] �Υ��֥������Ȥǡ�
�֤��ͤ���������ͣ��ޤޤ�Ƥ��ޤ���
quota �ξ���ϥ᡼��ܥå����˴�Ϣ�դ���줿 quota root ���Ȥ�
[[c:Net::IMAP::MailboxQuota]] ���֥������Ȥ������ޤ���

�ܤ����� [[RFC:2087]] �򸫤Ƥ���������
���Υ��ޥ�ɤ� [[m:Net::IMAP#capability]] ���֤��ͤ򸫤뤳�Ȥ�
���Ѳ�ǽ���ɤ���Ƚ�ǤǤ��ޤ���

@param mailbox quota root ���������᡼��ܥå���̾(ʸ����)
@raise Net::IMAP::NoResponseError ���ꤷ���᡼��ܥå�����¸�ߤ��ʤ�����ȯ�����ޤ�

--- setacl(mailbox, user, rights)

SETACL ���ޥ�ɤ����ꡢ���ꤷ���᡼��ܥå�����
���ꤷ���桼���˴ؤ��븢�¤����ꤷ�ޤ���

rights �ˤ����ꤹ�븢�¤�ɽ��ʸ�������ꤷ�ޤ���
�ɤΤ褦��ʸ�������ꤹ�٤����� [[RFC:2086]] �򻲾Ȥ��Ƥ���������
rights �� nil ���Ϥ��ȡ���ʸ�������ꤷ���Τ�Ʊ�͡��Ĥޤ�
���٤Ƥθ��¤������ޤ���

@param mailbox ���¤����ꤹ��᡼��ܥå�����̾��(ʸ����)
@param user ���¤����ꤹ��桼����̾��(ʸ����)
@param rights ���¤�ɽ��ʸ����

--- getacl(mailbox) -> [Net::IMAP::MailboxACLItem]
GETACL ���ޥ�ɤ����ꡢ�᡼��ܥå����� 
ACL(Access Control List) ��������ޤ���

[[m:Net::IMAP#getacl]] �ǻ��ꤷ���᡼��ܥå�����
�Ф����餫�θ��¤���ĳƥ桼�����Ф���
[[c:Net::IMAP::MailboxACLItem]] ���֥������Ȥ�
���졢���������֤���ޤ���

GETACL ���ޥ�ɤ� [[RFC:2086]] ���������Ƥ��ޤ���
�ܤ����Ϥ�����򻲾Ȥ��Ƥ���������

@param mailbox �᡼��ܥå���̾(ʸ����)
@see [[c:Net::IMAP::MailboxACLItem]]

--- add_response_handler(handler) -> ()
--- add_response_handler(handler){|resp| ...} -> ()
�쥹�ݥ󥹥ϥ�ɥ���ɲä��ޤ���

�쥹�ݥ󥹥ϥ�ɥ�ϥ����Ф�������������뤴�Ȥ�
�ƤӤ�����ޤ����ϥ�ɥ�ˤ�
[[c:Net::IMAP::TaggedResponse]] �⤷����
[[c:Net::IMAP::UntaggedResponse]] ���֥������Ȥ�
�Ϥ���ޤ���

��˥����Ф������Ʊ��Ū�ʥ��٥�Ȥ������뤿��
���Ѥ��ޤ����㤨�� EXISTS ������������
(�᡼��ܥå����˿����ʥ᡼�뤬�ɲä��줿�����ߥ󥰤�ȯ�����ޤ�)
����ʤɤ��Ѥ����ޤ���

�쥹�ݥ󥹥ϥ�ɥ�ϥᥤ��Υ���åɤȤ��̤Υ���åɤ�
�ƤӤ�����뤳�Ȥ���դ��Ƥ���������

��:

  imap.add_response_handler do |resp|
    p resp
  end

@param handler �ɲä���ϥ�ɥ�([[c:Proc]] �� [[c:Method]] ���֥�������)
@see [[m:Net::IMAP#remove_response_handler]]

--- remove_response_handler(handler) -> ()
�쥹�ݥ󥹥ϥ�ɥ�������ޤ���

@param handler �������ϥ�ɥ�
@see [[m:Net::IMAP#add_response_handler]]

--- response_handlers -> Array
���ꤵ��Ƥ���쥹�ݥ󥹥ϥ�ɥ����Ƥ�
������֤��ޤ���

@see [[m:Net::IMAP#add_response_handler]]

#@since 1.9.1
--- starttls(options) -> Net::IMAP::TaggedResponse
--- starttls(certs, verify) -> Net::IMAP::TaggedResponse

STARTTLS ���ޥ�ɤ����ä� TLS �Υ��å����򳫻Ϥ��ޤ���

options �� [[lib:openssl]] ���Ϥ����ץ�������ꤷ�ޤ���
[[m:OpenSSL::SSL::SSLContext#set_params]] �ΰ�����Ʊ����̣�Ǥ���

�ߴ����Τ��ᡢcerts �Ǿ�����or������ǥ��쥯�ȥ�Υե�����̾(ʸ����)��
verify �Ǹ��ڤ��뤫�ɤ���([[m:Net::IMAP::VERIFY_PEER]]��
[[m:Net::IMAP::VERIFY_NONE]]���б����ޤ�)��
���ꤹ�뤳�Ȥ��Ǥ��ޤ���

@param options SSL/TLS �Υ��ץ����([[c:Hash]] ���֥�������)
@param certs ������ե�����̾���⤷���Ͼ�����ǥ��쥯�ȥ�̾(ʸ����)
@param verify ���ʤ� SSL/TLS ��³���˾�����򸡾ڤ��ޤ�

#@end

#@since 1.8.2
--- disconnected? -> bool

�����ФȤ���³�����Ǥ���Ƥ���п����֤��ޤ���

@see [[m:Net::IMAP#disconnect]]

#@end

--- thread(algorithm, search_keys, charset) -> [Net::IMAP::ThreadMember]
THREAD���ޥ�ɤ����ꡢ�᡼��ܥå����򸡺�������̤�
����åɷ������ڹ�¤���֤��ޤ���

THREAD ���ޥ�ɤ� [[RFC:5256]] ���������Ƥ��ޤ���
�ܤ����Ϥ�����򻲾Ȥ��Ƥ���������
���Υ��ޥ�ɤ� [[m:Net::IMAP#capability]] ���֤��ͤ򸫤뤳�Ȥ�
���Ѳ�ǽ���ɤ���Ƚ�ǤǤ��ޤ���

algorithm ���ڹ�¤����ꤹ�뤿��Υ��르�ꥺ�����ꤷ�ޤ���
�ʲ���2�Ĥ����Ѳ�ǽ�Ǥ���
  * "ORDEREDSUBJECT" subject��Ȥä�ʿó�˶��ڤ����
  * "REFERENCES" �ɤΥ�å��������ֻ��򤷤Ƥ��뤫�򸫤��ڹ�¤����
�ܤ����� [[RFC:5256]] �򸫤Ƥ���������

search_key �ˤϸ��������Ϥ��ޤ���
[[m:Net::IMAP#search]] ��Ʊ���Ǥ���


@param algorithm ����åɹ�¤���ۥ��르�ꥺ��̾(ʸ����)
@param search_key �������(ʸ��������)
@param charset �������β����Ѥ���CHARSET̾(ʸ����)
@see [[c:Net::IMAP::ThreadMember]], [[m:Net::IMAP#uid_thread]]

--- uid_thread(algorithm, search_keys, charset)  -> [Net::IMAP::ThreadMember]
THREAD���ޥ�ɤ����ꡢ�᡼��ܥå����򸡺�������̤�
����åɷ������ڹ�¤���֤��ޤ���

�ۤ� [[m:Net::IMAP#thread]] ��Ʊ���Ǥ������֤äƤ��륪�֥������Ȥ�
[[m:Net::IMAP::ThreadMember#seqno]] �����Ƥ� message sequence number
�ǤϤʤ� UID �Ȥʤ�ޤ���

@param algorithm ����åɹ�¤���ۥ��르�ꥺ��̾(ʸ����)
@param search_key �������(ʸ��������)
@param charset �������β����Ѥ���CHARSET̾(ʸ����)
@see [[c:Net::IMAP::ThreadMember]], [[m:Net::IMAP#thread]]


--- client_thread -> Thread
#@until 1.9.1
�㳰�����Ф���륹��åɤ��֤��ޤ���

#@else
���Υ᥽�åɤ� obsolete �Ǥ����Ȥ�ʤ��Ǥ���������
#@end

--- client_thread=(th)
#@until 1.9.1
�㳰�����Ф���륹��åɤ����ꤷ�ޤ���

@param th ���ꤹ�륹��å�
#@else
���Υ᥽�åɤ� obsolete �Ǥ����Ȥ�ʤ��Ǥ���������
#@end

#@since 1.9.2
--- idle {|resp| ...} -> Net::IMAP::TaggedResponse
IDLE ̿������ꡢ�᡼��ܥå�������Ʊ��Ū�Ѳ����Ԥ������ޤ���

���Υ᥽�åɤ��Ϥ����֥�å���
[[m:Net::IMAP#add_response_handler]] �ˤ�ä�
�쥹�ݥ󥹥ϥ�ɥ�Ȥ����Ѥ����ޤ���
�ޤ������Υ᥽�åɤ���λ���������
[[m:Net::IMAP#remove_response_handler]] ��
�ϥ�ɥ餬�������ޤ���

�쥹�ݥ󥹥ϥ�ɥ�ˤĤ��Ƥ�
[[m:Net::IMAP#add_response_handler]] �򻲾Ȥ��Ƥ���������

�̤Υ���åɤ� [[m:Net::IMAP#idle_done]] ��ƤӤ����ޤ�
���Υ᥽�åɤ�ƤӤ���������åɤ���ߤ��ޤ���

����̿��� [[RFC:2177]] ���������Ƥ��ޤ����ܤ����Ϥ������
���Ȥ��Ƥ���������

--- idle_done -> ()
[[m:Net::IMAP#idle]] ��
��ߤ��Ƥ��륹��åɤ�1�ĵ������ޤ���
#@end

== Constants
--- SEEN -> Symbol
��:Seen�פȤ�������ܥ���֤��ޤ���

���Υ�å������������ɤޤ�Ƥ��뤳�Ȥ��̣���ޤ���

�ե饰��å�����°���Ȥ����Ѥ����ޤ�
([[m:Net::IMAP::FetchData#attr]])��

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- ANSWERED -> Symbol
��:Answered�פȤ�������ܥ���֤��ޤ���

���Υ�å������������������Ȥ��̣���ޤ���

�ե饰��å�����°���Ȥ����Ѥ����ޤ�
([[m:Net::IMAP::FetchData#attr]])��

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- FLAGGED -> Symbol
��:Flagged�פȤ�������ܥ���֤��ޤ���

���Υ�å����������̤ʥե饰��Ω�ƤƤ��뤳�Ȥ��̣���ޤ���

�ե饰��å�����°���Ȥ����Ѥ����ޤ�
([[m:Net::IMAP::FetchData#attr]])��

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- DELETED -> Symbol
��:Deleted�פȤ�������ܥ���֤��ޤ���

��å��������������Ƥ��뤳�Ȥ��̣���ޤ���
EXPUNGE �Ǵ����˽����ޤ���

�ե饰��å�����°���Ȥ����Ѥ����ޤ�
([[m:Net::IMAP::FetchData#attr]])��

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- DRAFT -> Symbol
��:Draft�פȤ�������ܥ���֤��ޤ���

��å���������ƤǤ��뤳�Ȥ��̣���ޤ���

�ե饰��å�����°���Ȥ����Ѥ����ޤ�
([[m:Net::IMAP::FetchData#attr]])��

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- RECENT -> Symbol
��:Recent�פȤ�������ܥ���֤��ޤ���

��å��������ֺǶ�ץ᡼��ܥå��������夷�����Ȥ��̣���ޤ���

�ե饰��å�����°���Ȥ����Ѥ����ޤ�
([[m:Net::IMAP::FetchData#attr]])��

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- NOINFERIORS -> Symbol
��:Noinferiors�פȤ�������ܥ���֤��ޤ���

���Υ᡼��ܥå�����
���˻ҥ�٥�γ��ؤ�¸���Բ�ǽ�Ǥ��뤳�Ȥ��̣���ޤ���

LIST������°��
([[m:Net::IMAP#list]]��[[m:Net::IMAP::MailboxList#attr]])
�Ȥ����Ѥ����ޤ���

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������


--- NOSELECT -> Symbol
��:Noselect�פȤ�������ܥ���֤��ޤ���

�᡼��ܥå����������ǽ�Ǥʤ����Ȥ��̣���ޤ���

LIST������°��
([[m:Net::IMAP#list]]��[[m:Net::IMAP::MailboxList#attr]])
�Ȥ����Ѥ����ޤ���

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������
--- MARKED -> Symbol
��:Marked�פȤ�������ܥ���֤��ޤ���

�᡼��ܥå�������interesting�פǤ���ȥ����Фˤ�ä�
���դ����Ƥ��뤳�Ȥ��̣���ޤ����̾�᡼��ܥå�����
�������᡼�뤬�Ϥ��Ƥ��뤳�Ȥ��̣���ޤ���

LIST������°��
([[m:Net::IMAP#list]]��[[m:Net::IMAP::MailboxList#attr]])
�Ȥ����Ѥ����ޤ���

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

--- UNMARKED -> Symbol
��:Unmarked�פȤ�������ܥ���֤��ޤ���

�᡼��ܥå�����
���դ����Ƥ��ʤ����Ȥ��̣���ޤ���
�᡼��ܥå����˿������᡼�뤬�Ϥ��Ƥ��ʤ����Ȥ��̣���ޤ���

LIST������°��
([[m:Net::IMAP#list]]��[[m:Net::IMAP::MailboxList#attr]])
�Ȥ����Ѥ����ޤ���

�ܤ����� [[RFC:2060]] �򻲾Ȥ��Ƥ���������

= class Net::IMAP::ContinuationRequest < Struct

IMAP �� continuation request (̿���³�׵�) ��ɽ�����饹�Ǥ���

�̾盧�Υ��饹��ľ�ܰ������ȤϤ���ޤ���
�쥹�ݥ󥹥ϥ�ɥ�([[c:Net::IMAP#add_response_handler]])
���Ϥ���ޤ���

�ܤ����� [[RFC:2060]] �� 7.5 �򻲾Ȥ��Ƥ���������

== Instance Methods

--- data -> Net::IMAP::ResponseText
�쥹�ݥ󥹤Υǡ������֤��ޤ���

--- raw_data -> String
�쥹�ݥ�ʸ������֤��ޤ���

= class Net::IMAP::UntaggedResponse < Struct

IMAP �Υ����դ��쥹�ݥ󥹤�ɽ�����饹�Ǥ���

IMAP �Υ쥹�ݥ󥹤ˤϥ����դ��Τ�Τȥ����ʤ��Τ�Τ����ꡢ
�����ʤ��Τ�Τϥ��饤����Ȥ���Υ��ޥ�ɴ�λ�����ǤϤʤ�
�쥹�ݥ󥹤Ǥ���

@see [[c:Net::IMAP::TaggedResponse]]

== Instance Methods

--- name -> String

�쥹�ݥ󥹤�̾��(����)���֤��ޤ���

�㤨�аʲ��Τ褦���ͤ��֤��ޤ��������ζ���Ū�ʰ�̣��
[[RFC:2060]] �򻲹ͤˤ��Ƥ���������
  * "OK"
  * "NO"
  * "BAD"
  * "BYE"
  * "PREAUTH"
  * "CAPABILITY"
  * "LIST"
  * "FLAGS"
  *  etc

--- data -> object

�쥹�ݥ󥹤���Ϥ�����̤Υ��֥������Ȥ��֤��ޤ���

�쥹�ݥ󥹤ˤ�äưۤʤ륪�֥������Ȥ��֤��ޤ���
[[c:Net::IMAP::MailboxList]] �Ǥ��ä���ե饰��ɽ�魯
����ܥ������Ǥ��ä��ꤷ�ޤ���

--- raw_data -> String

�쥹�ݥ�ʸ������֤��ޤ���

@see [[m:Net::IMAP::UntaggedResponse#data]]
= class Net::IMAP::TaggedResponse < Struct

IMAP �Υ����դ��쥹�ݥ󥹤�ɽ�����饹�Ǥ���

IMAP �Υ쥹�ݥ󥹤ˤϥ����դ��Τ�Τȥ����ʤ��Τ�Τ����ꡢ
�����դ��Υ쥹�ݥ󥹤ϥ��饤����Ȥ�ȯ�Ԥ������ޥ�ɤˤ��
���������뤫���Ԥ��뤫�Τɤ��餫��
��λ�������Ȥ��̣���ޤ��������ˤ�ä�
�ɤΥ��ޥ�ɤ���λ�����Τ��򼨤��ޤ���

@see [[c:Net::IMAP::UntaggedResponse]]

== Instance Methods

--- tag -> String

�쥹�ݥ󥹤��б��դ���줿�������֤��ޤ���

--- name -> String

�쥹�ݥ󥹤�̾��(����)���֤��ޤ���

�㤨�аʲ��Τ褦���ͤ��֤��ޤ��������ζ���Ū�ʰ�̣��
[[RFC:2060]] �򻲹ͤˤ��Ƥ���������
  * "OK"
  * "NO"
  * "BAD"

--- data -> Net::IMAP::ResponseText 

�쥹�ݥ󥹤���Ϥ������֥������Ȥ��֤��ޤ���

@see [[c:Net::IMAP::ResponseText]]

--- raw_data -> String

�쥹�ݥ�ʸ������֤��ޤ���

@see [[m:Net::IMAP::TaggedResponse#data]]

= class Net::IMAP::ResponseText < Struct

�����Υƥ����Ȥ�ɽ�����饹�Ǥ���

== Instance Methods

--- code -> Net::IMAP::ResponseCode | nil
�쥹�ݥ󥹥����ɤ��֤��ޤ���

�������쥹�ݥ󥹥����ɤ�ޤ�Ǥ��ʤ����� nil ���֤��ޤ���

@see [[c:Net::IMAP::ResponseCode]]

--- text -> String
�����Υƥ����Ȥ�ʸ������֤��ޤ���

= class Net::IMAP::ResponseCode < Struct

�����Υ쥹�ݥ󥹥����ɤ�ɽ�����饹�Ǥ���

�쥹�ݥ󥹥����ɤˤĤ��Ƥ� [[RFC:2060]] �� 7.1 �򻲾Ȥ��Ƥ���������

== Instance Methods

--- name -> String
�쥹�ݥ󥹥����ɤ�ɽ��ʸ������֤��ޤ���
 
"ALERT"��"PERMANENTFLAGS"��"UIDVALIDITY" �ʤɤ��֤��ޤ���

--- data -> object | nil
�쥹�ݥ󥹥����ɤΥǡ������֤��ޤ���

�쥹�ݥ󥹥����ɤμ���ˤ�ä��֤����֥������Ȥϰۤʤ�ޤ���
�ʤ����� nil ���֤��ޤ���

= class Net::IMAP::MailboxList < Struct

#@since 1.9.3
[[m:Net::IMAP#list]]��[[m:Net::IMAP#xlist]]��[[m:Net::IMAP#lsub]]
#@else
[[m:Net::IMAP#list]]��[[m:Net::IMAP#lsub]]
#@end
���֤����᡼��ܥå����Υǡ�����ɽ���ޤ���

== Instance Methods

--- attr -> [Symbol]
�᡼��ܥå�����°���򥷥�ܥ��������֤��ޤ���

����������륷��ܥ�� [[m:String#capitalize]] �ǥ���ԥ��饤��
����Ƥ��ޤ���

��������ˤ��㤨�аʲ��Τ褦���ͤ�ޤ�Ǥ��ޤ���
�ܤ����� [[RFC:2060]] 7.2.2 �ʤɤ򻲾Ȥ��Ƥ���������
�ʲ��Τ�ΰʳ��ǡ�IMAP ��Ϣ RFC �ǳ�ĥ���줿�ͤ�ޤ�Ǥ���
���⤢��ޤ�
  * :Noselect
  * :Noinferiors
  * :Marked
  * :Unmarked

--- delim -> String|nil
���ض��ڤ�ʸ������֤��ޤ���

�ޤä������ؤ�¸�ߤ��ʤ����� nil ���֤��ޤ���

--- name -> String
�᡼��ܥå�����̾����ʸ������֤��ޤ���


= class Net::IMAP::MailboxQuota < Struct

[[m:Net::IMAP#getquota]] �� [[m:Net::IMAP#getquotaroot]] ��������
quota �ξ����ɽ�����֥������ȤǤ���

�ܤ����� [[RFC:2087]] �򻲾Ȥ��Ƥ���������


== Instance Methods

--- mailbox -> String
quota �����ꤵ��Ƥ���᡼��ܥå�����̾�����֤��ޤ���

--- usage -> Integer
���ߤΥ᡼��ܥå�����λ����̤��֤��ޤ���

--- quota -> Integer
�᡼��ܥå����˻��ꤵ��Ƥ������ͤ��֤��ޤ���


= class Net::IMAP::MailboxQuotaRoot < Struct

[[m:Net::IMAP#getquotaroot]] �η�̤Ȥ���������
quota root �����ɽ�魯���֥������ȤǤ���

�ܤ����� [[RFC:2087]] �򻲾Ȥ��Ƥ���������

== Instance Methods

--- mailbox -> String
�䤤��碌�����᡼��ܥå�����̾�����֤��ޤ���

--- quotaroots -> [String]
�䤤��碌�����᡼��ܥå����� quota root ̾��������֤��ޤ���

���ξ��⤢�ꤨ�ޤ���


= class Net::IMAP::MailboxACLItem < Struct

GETACL �α����γ����Ǥ�ɽ�����饹�Ǥ���

[[m:Net::IMAP#getacl]] ���֤��ͤȤ����Ѥ����ޤ���

�ܤ����� [[RFC:2086]] �򻲾Ȥ��Ƥ���������

== Instance Methods

--- user -> String
�桼��̾���֤��ޤ���

���Υ桼����
[[m:Net::IMAP#getacl]] �ǻ��ꤷ���᡼��ܥå�����
�Ф����餫�θ��¤���äƤ��ޤ���

--- rights -> String
�����������¤�ʸ������֤��ޤ���

[[m:Net::IMAP::MailboxACLItem#user]] ��������桼����
���äƤ��븢�¤��֤���ޤ���

����ʸ����ΰ�̣�ˤĤ��Ƥ� [[RFC:2086]] �򻲾Ȥ��Ƥ���������

= class Net::IMAP::StatusData < Struct
STATUS ������ɽ�魯���饹�Ǥ���

== Instance Methods

--- mailbox -> String
�᡼��ܥå���̾���֤��ޤ���

--- attr -> { String => Integer }
STATUS ���������Ƥ�ϥå�����֤��ޤ���

�ϥå���Υ�����
"MESSAGES", "RECENT", "UIDNEXT", "UIDVALIDITY", "UNSEEN"
�ʤɤ��Ȥ��ޤ���

�ܤ����� [[RFC:2060]] �� 6.3.10��7.2.4 �򸫤Ƥ���������

= class Net::IMAP::FetchData < Object

FETCH ���ޥ�ɤα�����ɽ�����饹�Ǥ���

[[m:Net::IMAP#fetch]]��[[m:Net::IMAP#uid_fetch]]��
[[m:Net::IMAP#store]]��[[m:Net::IMAP#uid_store]] ��
�֤��ͤȤ������Ѥ���ޤ���

== Instance Methods

--- seqno -> Integer

��å������� sequence number ���֤��ޤ���

[[m:Net::IMAP#uid_fetch]]��[[m:Net::IMAP#uid_store]]�Ǥ��äƤ�
UID �ǤϤʤ���sequence number���֤��ޤ���

--- attr -> { String => object }

�ƥ�å������Υ��ȥ�ӥ塼�Ȥ��ͤ�ϥå���ơ��֥���֤��ޤ���

�����ϥ��ȥ�ӥ塼��̾��ʸ�����ͤϥ��ȥ�ӥ塼�Ȥ��ͤȤʤ�ޤ���
�ͤΥ��饹�ϥ��ȥ�ӥ塼�Ȥˤ�äưۤʤ�ޤ���

���Ѳ�ǽ�ʥ��ȥ�ӥ塼�Ȥϰʲ����̤�Ǥ���

: BODY
    BODYSTRUCTURE �γ�ĥ�ǡ����ʤ��η�����
    [[c:Net::IMAP::BodyTypeBasic]], [[c:Net::IMAP::BodyTypeText]],
    [[c:Net::IMAP::BodyTypeMessage]], [[c:Net::IMAP::BodyTypeMultipart]]
    �Τ����줫��
: BODY[<section>]<<partial>>
    section �ǻ��ꤵ�줿���������Υܥǥ������ơ�ʸ����
: BODY.PEEK[<section>]<<partial>>
    section �ǻ��ꤵ�줿���������Υ�å������ܥǥ������ơ�ʸ����
    ��������������Ƥ򸫤Ƥ� :Seen �ե饰�����ꤷ�ʤ�����
    BODY[<section>]��Ʊ��
: BODYSTRUCTURE
    MIME-IMB �ǤΥ�å������ܥǥ���
    [[c:Net::IMAP::BodyTypeBasic]], [[c:Net::IMAP::BodyTypeText]],
    [[c:Net::IMAP::BodyTypeMessage]], [[c:Net::IMAP::BodyTypeMultipart]]
    �Τ����줫��
: ENVELOPE
    ��å������Υ���٥��ס�
    [[c:Net::IMAP::Envelope]] ���֥������ȡ�
: FLAGS
    ��å������˥��åȤ��줿�ե饰��
    [[c:Symbol]] ������[[m:String#capitalize]] �ǥ���ԥ��饤��
    ����Ƥ��롣
: INTERNALDATE
    ��å��������������ա�ʸ����
: RFC822
    BODY[] ��Ʊ����ʸ����
: RFC822.HEADER
    BODY.PEEK[HEADER] ��Ʊ����ʸ����
: RFC822.SIZE
    ��å������� [[RFC:822]] ��������������
: RFC822.TEXT
    BODY[TEXT] ��Ʊ����ʸ����
: UID
    UID��������

�ܤ����� [[RFC:2060]] �� FETCH command ����򸫤Ƥ���������

@see [[m:Net::IMAP#fetch]], [[m:Net::IMAP#uid_fetch]]

= class Net::IMAP::Envelope < Struct

��å������Υ���٥��פ�ɽ�����饹�Ǥ���

[[m:Net::IMAP::FetchData#attr]] �����ǤȤ����Ѥ����ޤ���

== Instance Methods

--- date -> String | nil
���դ�ʸ������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���

--- subject -> String | nil
��å������Υ��֥������Ȥ��֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- from -> [Net::IMAP::Address] | nil
From �� [[c:Net::IMAP::Address]] ���֥������Ȥ�������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- sender -> [Net::IMAP::Address] | nil
Sender �� [[c:Net::IMAP::Address]] ���֥������Ȥ�������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- reply_to -> [Net::IMAP::Address] | nil
Reply-To �� [[c:Net::IMAP::Address]] ���֥������Ȥ�������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- to -> [Net::IMAP::Address] | nil
To �� [[c:Net::IMAP::Address]] ���֥������Ȥ�������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- cc -> [Net::IMAP::Address] | nil
Cc �� [[c:Net::IMAP::Address]] ���֥������Ȥ�������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- bcc -> [Net::IMAP::Address] | nil
Bcc �� [[c:Net::IMAP::Address]] ���֥������Ȥ�������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���


--- in_reply_to -> String | nil
In-reply-to �����Ƥ�ʸ������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���

--- message_id -> String | nil
message_id ��ʸ������֤��ޤ���

����٥��פ�¸�ߤ��ʤ��Ȥ��� nil ���֤��ޤ���

= class Net::IMAP::Address < Struct

�᡼�륢�ɥ쥹��ɽ�����饹�Ǥ���

== Instance Methods

--- name -> String | nil
�᡼�륢�ɥ쥹�� [[RFC:822]] �θĿ�̾(personal name)���֤��ޤ���

�Ŀ�̾��¸�ߤ��ʤ����� nil ���֤��ޤ���

�̾�� nil ���֤��ޤ���

--- route -> String | nil
�᡼�륢�ɥ쥹�� SMTP at-domain-list ���֤��ޤ���

¸�ߤ��ʤ����� nil ���֤��ޤ���

�̾�� nil ���֤��ޤ���

--- mailbox -> String | nil
�᡼�륢�ɥ쥹�Υ᡼��ܥå���̾���֤��ޤ���

���줬 nil �ʤ�Ф���� [[RFC:822]] group �ν������̣���ޤ���
���줬 nil �Ǥʤ���[[m:Net::IMAP::Address#mailbox]] �� nil �ʤ�С�
[[RFC:822]] �Υ��롼��̾��ɽ���ޤ���
�ɤ�Ǥ�ʤ���С�[[RFC:822]] �� local-part ��ɽ���ޤ���

�̾�ϡ��᡼�륢�ɥ쥹�Ρ�@�פμ������֤��ޤ���

--- host -> String | nil
�᡼�륢�ɥ쥹�Υۥ���̾���֤��ޤ���

nil �� [[RFC:822]] �Υ��롼��ʸˡ���б����ޤ���
����ˤĤ��Ƥ� [[m:Net::IMAP::Address#mailbox]] �⻲�Ȥ��Ƥ���������
�����Ǥʤ����� [[RFC:822]] �Υɥᥤ��̾��ɽ���ޤ���

�̾�ϡ��᡼�륢�ɥ쥹�Ρ�@�פθ��Υɥᥤ��̾���֤��ޤ���

= class Net::IMAP::ContentDisposition < Struct

[[RFC:1806]], [[RFC:2183]] ���������Ƥ��� MIME ��
Content-Disposition �ե�����ɤ�ɽ�����饹�Ǥ���

== Instance Methods

--- dsp_type -> String
Content-Disposition �ե�����ɤΥ����פ�ʸ������֤��ޤ���

"INLINE", "ATTACHMENT" �ʤɤ�ʸ������֤��ޤ���

�ܤ����� [[RFC:2183]] �ʤɤ򸫤Ƥ���������

--- param -> { String => String } | nil
Content-Disposition �ե�����ɤΥѥ�᡼����ϥå���ơ��֥��
�֤��ޤ���

�ϥå���ơ��֥�Υ����ϰʲ��Τ褦���ͤ���ޤ����ܤ�����
[[RFC:2183]] �ʤɤ򸫤Ƥ���������
  * "FILENAME"
  * "CREATION-DATE"
  * "MODIFICATION-DATE"
  * "READ-DAT"
  * "SIZE"

= class Net::IMAP::ThreadMember < Struct

[[m:Net::IMAP#thread]]�� [[m:Net::IMAP#uid_thread]] ����
�����륹��åɤ��ڹ�¤�ΥΡ��ɤ�ɽ�����饹�Ǥ���

== Instance Methods

--- seqno -> Integer | nil
��å������� sequence number �⤷���� UID ���֤��ޤ���

root �Ȥʤ��å�������¸�ߤ��ʤ���礷�ʤ��ڤξ���
nil ���֤��ޤ���

--- children -> [Net::IMAP::ThreadMember]
����åɤ��ڹ�¤�ˤ����뼫�Ȥβ��̤���ʬ���֤��ޤ���


= class Net::IMAP::BodyTypeBasic < Struct

text ��([[c:Net::IMAP::BodyTypeText]])��
multipart ��([[c:Net::IMAP::BodyTypeMultipart]])��
message ��([[c:Net::IMAP::BodyTypeMessage]])��
�Τ�����Ǥ�ʤ��褦�ʥ�å������ܥǥ���¤��ɽ�����饹�Ǥ���

ź�եե�����ʤɤ�ɽ���ޤ���
�ܤ����� MIME ��RFC([[RFC:2045]])�򻲾Ȥ��Ƥ���������

== Instance Methods

--- media_type -> String
MIME �Υ�ǥ��������פ��֤��ޤ���

@see [[m:Net::IMAP::BodyTypeBasic#subtype]]

--- subtype -> String
--- media_subtype -> String
MIME �Υ�ǥ��������פΥ��֥����פ��֤��ޤ���
 
media_subtype �� obsolete �Ǥ���

@see [[m:Net::IMAP::BodyTypeBasic#media_type]]

--- param -> { String => String } | nil
MIME �Υܥǥ��ѥ�᡼����ϥå���ơ��֥���֤��ޤ���

�ϥå���ơ��֥�Υ������ѥ�᡼��̾�Ȥʤ�ޤ���

@see [[RFC:2045]]

--- content_id -> String | nil
Content-ID ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]
--- description -> String | nil
Content-Description ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- encoding -> String
Content-Transfer-Encoding ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- size -> Integer
�ܥǥ��Υ������Υ����ƥåȿ����֤��ޤ���

--- md5 -> String | nil
�ܥǥ��� MD5 �ͤ�ʸ������֤��ޤ���

--- disposition -> Net::IMAP::ContentDisposition | nil
Content-Dispotition ���ͤ��֤��ޤ���

[[c:Net::IMAP::ContentDisposition]] ���֥������Ȥ��֤��ޤ���

@see [[RFC:1806]], [[RFC:2183]]

--- language -> String | [String] | nil
[[RFC:1766]] ���������Ƥ���ܥǥ������ɽ�魯
ʸ����⤷����ʸ�����������֤��ޤ���

--- extension -> Array | nil
��å������γ�ĥ�ǡ������֤��ޤ���

--- multipart? -> bool
�ޥ���ѡ��Ȥ��ɤ������֤��ޤ���
false ���֤��ޤ���

= class Net::IMAP::BodyTypeText < Struct

Content-Type �� text �Ǥ����å�������ɽ�����饹�Ǥ���

ʿʸ�Υ᡼���ɽ���ޤ���
�ܤ����� MIME ��RFC([[RFC:2045]])�򻲾Ȥ��Ƥ���������

== Instance Methods

--- media_type -> String
MIME �Υ�ǥ��������פ��֤��ޤ���

����� "TEXT" ���֤��ޤ���

@see [[m:Net::IMAP::BodyTypeText#subtype]]

--- subtype -> String
--- media_subtype -> String
MIME �Υ�ǥ��������פΥ��֥����פ��֤��ޤ���
 
media_subtype �� obsolete �Ǥ���

@see [[m:Net::IMAP::BodyTypeText#media_type]]

--- param -> { String => String } | nil
MIME �Υܥǥ��ѥ�᡼����ϥå���ơ��֥���֤��ޤ���

�ϥå���ơ��֥�Υ������ѥ�᡼��̾�Ȥʤ�ޤ���

@see [[RFC:2045]]

--- content_id -> String | nil
Content-ID ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- description -> String | nil
Content-Description ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- encoding -> String
Content-Transfer-Encoding ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- size -> Integer
�ܥǥ��Υ������Υ����ƥåȿ����֤��ޤ���

--- lines -> Integer
�ܥǥ��ιԿ����֤��ޤ���

--- md5 -> String | nil
�ܥǥ��� MD5 �ͤ�ʸ������֤��ޤ���

--- disposition -> Net::IMAP::ContentDisposition | nil
Content-Dispotition ���ͤ��֤��ޤ���

[[c:Net::IMAP::ContentDisposition]] ���֥������Ȥ��֤��ޤ���

@see [[RFC:1806]], [[RFC:2183]]

--- language -> String | [String] | nil
[[RFC:1766]] ���������Ƥ���ܥǥ������ɽ�魯
ʸ����⤷����ʸ�����������֤��ޤ���


--- extension -> Array | nil
��å������γ�ĥ�ǡ������֤��ޤ���

--- multipart? -> bool
�ޥ���ѡ��Ȥ��ɤ������֤��ޤ���
false ���֤��ޤ���

= class Net::IMAP::BodyTypeMessage < Struct

Content-Type �� "message" �Ǥ����å�������ɽ�����饹�Ǥ���

�᡼���᡼���ź�դ������ʤɤ˻Ȥ��ޤ���
�ܤ����� [[RFC:2045]], [[RFC:822]] �򻲾Ȥ��Ƥ���������


== Instance Methods

--- media_type -> String
MIME �Υ�ǥ��������פ��֤��ޤ���

����� "MESSAGE" ���֤��ޤ���

@see [[m:Net::IMAP::BodyTypeMessage#subtype]]

--- subtype -> String
--- media_subtype -> String

MIME �Υ�ǥ��������פΥ��֥����פ��֤��ޤ���
 
media_subtype �� obsolete �Ǥ���

@see [[m:Net::IMAP::BodyTypeMessage#media_type]]

--- param -> { String => String } | nil
MIME �Υܥǥ��ѥ�᡼����ϥå���ơ��֥���֤��ޤ���

�ϥå���ơ��֥�Υ������ѥ�᡼��̾�Ȥʤ�ޤ���

@see [[RFC:2045]]

--- content_id -> String | nil
Content-ID ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- description -> String | nil
Content-Description ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- encoding -> String
Content-Transfer-Encoding ���ͤ�ʸ������֤��ޤ���

@see [[RFC:2045]]

--- size -> Integer
�ܥǥ��Υ������Υ����ƥåȿ����֤��ޤ���

--- envelope -> Net::IMAP::Envelpe | nil
��å������Υ���٥��פ��֤��ޤ���

--- body -> Net::IMAP::BodyTypeBasic | Net::IMAP::BodyTypeMessage | Net::IMAP::BodyTypeText | Net::IMAP::BodyTypeMultipart

�ܥǥ����֤��ޤ���

--- lines -> Integer
�ܥǥ��Υƥ����ȤιԿ����֤��ޤ���

--- md5 -> String | nil
�ܥǥ��� MD5 �ͤ�ʸ������֤��ޤ���

--- disposition -> Net::IMAP::ContentDisposition | nil
Content-Dispotition ���ͤ��֤��ޤ���

[[c:Net::IMAP::ContentDisposition]] ���֥������Ȥ��֤��ޤ���

@see [[RFC:1806]], [[RFC:2183]]

--- language -> String | [String] | nil
[[RFC:1766]] ���������Ƥ���ܥǥ������ɽ�魯
ʸ����⤷����ʸ�����������֤��ޤ���

--- extension  -> Array | nil
��å������γ�ĥ�ǡ������֤��ޤ���

--- multipart?  -> bool
�ޥ���ѡ��Ȥ��ɤ������֤��ޤ���
false ���֤��ޤ���


= class Net::IMAP::BodyTypeMultipart < Struct

�ޥ���ѡ��Ȥʥ�å�������ɽ�����饹�Ǥ���

�ܤ����� MIME ��RFC([[RFC:2045]])�򻲾Ȥ��Ƥ���������

== Instance Methods

--- media_type -> String
MIME �Υ�ǥ��������פ��֤��ޤ���

"MULTIPART" ���֤��ޤ���

@see [[m:Net::IMAP::BodyTypeMultipart#subtype]]

--- subtype -> String
--- media_subtype -> String
MIME �Υ�ǥ��������פΥ��֥����פ��֤��ޤ���
 
media_subtype �� obsolete �Ǥ���

@see [[RFC:2045]], [[m:Net::IMAP::BodyTypeText#media_type]]

--- parts -> [Net::IMAP::BodyTypeBasic | Net::IMAP::BodyTypeText | Net::IMAP::BodyTypeMessage | Net::IMAP::BodyTypeMultipart]

�ޥ���ѡ��Ȥγ���ʬ���֤��ޤ���

--- param -> { String => String }
MIME �Υܥǥ��ѥ�᡼����ϥå���ơ��֥���֤��ޤ���

�ϥå���ơ��֥�Υ������ѥ�᡼��̾�Ȥʤ�ޤ���

@see [[RFC:2045]]

--- disposition -> Net::IMAP::ContentDisposition | nil
Content-Dispotition ���ͤ��֤��ޤ���

[[c:Net::IMAP::ContentDisposition]] ���֥������Ȥ��֤��ޤ���

@see [[RFC:1806]], [[RFC:2183]]

--- language -> String | [String] | nil
[[RFC:1766]] ���������Ƥ���ܥǥ������ɽ�魯
ʸ����⤷����ʸ�����������֤��ޤ���

--- extension -> Array | nil
��å������γ�ĥ�ǡ������֤��ޤ���

--- multipart? -> bool
�ޥ���ѡ��Ȥ��ɤ������֤��ޤ���
true ���֤��ޤ���



#@# internal classes:
#@# = class Net::IMAP::Atom
#@# = class Net::IMAP::Literal
#@# = class Net::IMAP::QuotedString
#@# = class Net::IMAP::MessageSet
#@# = class Net::IMAP::RawData


#@# internal classes for authentication
#@# = class Net::IMAP::LoginAuthenticator
#@# 
#@# Authenticator for the "LOGIN" authentication type.
#@# See [[m:Net::IMAP#authenticate]].
#@# 
#@# == Class Methods
#@# 
#@# --- new(user, password)
#@# #@todo
#@# 
#@# == Instance Methods
#@# 
#@# --- process(data)
#@# #@todo
#@# 
#@# 
#@# 
#@# = class Net::IMAP::CramMD5Authenticator
#@# 
#@# Authenticator for the "CRAM-MD5" authentication type.
#@# See [[m:Net::IMAP#authenticate]].
#@# 
#@# == Class Methods
#@# 
#@# --- new(user, password)
#@# #@todo
#@# 
#@# == Instance Methods
#@# 
#@# --- process(challenge)
#@# #@todo
#@# 
#@# 
#@# 
#@# #@since 1.9.1
#@# = class Net::IMAP::PlainAuthenticator
#@# 
#@# Authenticator for the "PLAIN" authentication type.
#@# See [[m:Net::IMAP#authenticate]].
#@# 
#@# == Class Methods
#@# 
#@# --- new(user, password)
#@# #@todo
#@# 
#@# == Instance Methods
#@# 
#@# --- process(data)
#@# #@todo
#@# 
#@# 
#@# 
#@# = class Net::IMAP::DigestMD5Authenticator
#@# 
#@# Authenticator for the "DIGEST-MD5" authentication type.
#@# See [[m:Net::IMAP#authenticate]].
#@# 
#@# == Class Methods
#@# 
#@# --- new(user, password, authname = nil)
#@# #@todo
#@# 
#@# == Instance Methods
#@# 
#@# --- process(challenge)
#@# #@todo
#@# #@end



= class Net::IMAP::Error < StandardError

���٤Ƥ� IMAP �㳰���饹�Υ����ѡ����饹��

= class Net::IMAP::DataFormatError < Net::IMAP::Error

�ǡ����ե����ޥåȤ��������ʤ�����ȯ�������㳰�Υ��饹�Ǥ���

= class Net::IMAP::ResponseParseError < Net::IMAP::Error

�����Ф���Υ쥹�ݥ󥹤��������ѡ����Ǥ��ʤ�����ȯ������
�㳰�Υ��饹�Ǥ���

= class Net::IMAP::ResponseError < Net::IMAP::Error

�����Ф���Υ쥹�ݥ󥹤����顼�򼨤��Ƥ������ȯ�������㳰
�Υ��饹�Ǥ���

�ºݤˤϤ����Ѿ�����
  * [[c:Net::IMAP::NoResponseError]]
  * [[c:Net::IMAP::BadResponseError]]
  * [[c:Net::IMAP::ByeResponseError]]
�����Υ��饹���㳰��ȯ�����ޤ���

== Instance Methods
#@since 1.9.2
--- response -> Net::IMAP::TaggedResponse | Net::IMAP::UntaggedResponse
���顼�Ȥʤä��쥹�ݥ󥹤�ɽ�����֥������Ȥ��֤��ޤ���

--- response=(resp)
���顼�Ȥʤä��쥹�ݥ󥹤�ɽ�����֥������Ȥ����ꤷ�ޤ���

@param resp ���ꤹ��쥹�ݥ󥹥��֥�������
#@end

= class Net::IMAP::NoResponseError < Net::IMAP::ResponseError

�����Ф��� "NO" �쥹�ݥ󥹤��褿����ȯ�������㳰�Υ��饹�Ǥ���
���ޥ�ɤ�����˴�λ���ʤ��ä�����ȯ�����ޤ���

= class Net::IMAP::BadResponseError < Net::IMAP::ResponseError

�����Ф��� "BAD" �쥹�ݥ󥹤��褿����ȯ�������㳰�Υ��饹�Ǥ���
���饤����Ȥ���Υ��ޥ�ɤ� IMAP �ε��ʤ��鳰��Ƥ������
�������������顼�ξ���ȯ�����ޤ���

= class Net::IMAP::ByeResponseError < Net::IMAP::ResponseError

�����Ф��� "BYE" �쥹�ݥ󥹤��褿����ȯ�������㳰�Υ��饹�Ǥ���
�����󤬵��ݤ��줿���䡢���饤����Ȥ�̵ȿ����
�����ॢ���Ȥ�������ȯ�����ޤ���

#@since 1.9.1
= class Net::IMAP::FlagCountError < Net::IMAP::Error

�����Ф���Υ쥹�ݥ󥹤˴ޤޤ��ե饰��¿������Ȥ���ȯ�������㳰�Ǥ���

���ξ�¤� [[m:Net::IMAP.max_flag_count=]] �����ꤷ�ޤ���

#@end

