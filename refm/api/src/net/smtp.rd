�᡼����������뤿��Υץ�ȥ��� SMTP (Simple Mail Transfer Protocol)
�򰷤��饤�֥��Ǥ���

�إå��ʤɥ᡼��Υǡ����򰷤����ȤϤǤ��ޤ���
SMTP �μ����� [[RFC:2821]] �˴𤤤Ƥ��ޤ���

=== ������

==== �Ȥˤ����᡼�������

SMTP ��Ȥäƥ᡼�������ˤϤޤ� SMTP.start �ǥ��å����򳫤��ޤ���
�������������ФΥ��ɥ쥹������������ݡ����ֹ�Ǥ���
�֥�å���Ȥ��� File.open ��Ʊ���褦�˽�ü������ưŪ�ˤ�äƤ����
�ΤǤ�������Ǥ���

  require 'net/smtp'
  Net::SMTP.start( 'smtp-server.example.com', 25 ) {|smtp|
    # use smtp object only in this block
  }

smtp-server.example.com ��Ŭ�ڤ� SMTP �����ФΥ��ɥ쥹���ɤߤ����Ƥ���������
�̾�� LAN �δ����Ԥ�ץ�Х����� SMTP �����Ф��Ѱդ��Ƥ���Ƥ���Ϥ��Ǥ���

���å���󤬳������餢�Ȥ� [[m:Net::SMTP#send_message]]
�ǥ᡼���ή����������Ǥ���

  require 'net/smtp'
  
  Net::SMTP.start('your.smtp.server', 25) {|smtp|
    smtp.send_message(<<-EndOfMail, 'your@mail.address', 'to@some.domain')
  From: Your Name <your@mail.address>
  To: Dest Address <to@some.domain>
  Subject: test mail
  Date: Sat, 23 Jun 2001 16:26:43 +0900
  Message-Id: <unique.message.id.string@some.domain>
  
  This is a test mail.
    EndOfMail
  }

==== ���å�����λ����

�᡼������ä��� [[m:Net::SMTP#finish]] ��Ƥ��
���å�����λ���ʤ���Ф����ޤ���
File �Τ褦�� GC ���˾���� close ����뤳�Ȥ⤢��ޤ���

  # using SMTP#finish
  require 'net/smtp'
  smtp = Net::SMTP.start('your.smtp.server', 25)
  smtp.send_message mail_string, 'from@address', 'to@address'
  smtp.finish

�ޤ��֥�å��դ��� [[m:Net::SMTP.start]], [[m:Net::SMTP#start]]
��Ȥ��� finish ��Ƥ�Ǥ����Τ������Ǥ���
��ǽ�ʸ¤�֥�å��դ��� start ��Ȥ��Τ��褤�Ǥ��礦��

  # using block form of SMTP.start
  require 'net/smtp'
  Net::SMTP.start('your.smtp.server', 25) {|smtp|
    smtp.send_message mail_string, 'from@address', 'to@address'
  }

==== ʸ����ʳ����������

�ҤȤľ����Ǥ�ʸ�����ƥ�� (�ҥ��ɥ������) ��Ȥä��������ޤ�������
each �᥽�åɤ���ä����֥������Ȥ���ʤ�ʤ�Ǥ����뤳�Ȥ��Ǥ��ޤ���
�ʲ��� File ���֥������Ȥ���ľ������������Ǥ���

  require 'net/smtp'

  Net::SMTP.start('your.smtp.server', 25) {|smtp|
    File.open('Mail/draft/1') {|f|
      smtp.send_message f, 'from@example.ne.jp', 'to@example.ne.jp'
    }
  }

=== HELO �ɥᥤ��

SMTP �Ǥϥ᡼�������¦�Υۥ��Ȥ�̾�� (HELO �ɥᥤ��ȸƤ�) ���׵�
����ޤ���HELO �ɥᥤ��� [[m:Net::SMTP.start]], [[m:Net::SMTP#start]]
���軰���� helo_domain �˻��ꤷ�ޤ���
�����Ƥ��� SMTP �����ФϤ��� HELO �ɥᥤ��
�ˤ��ǧ�ڤϤ��ޤ꿿���ܤ˹Ԥ�ʤ��Τ� (��ñ�˵�¤�Ǥ��뤫��Ǥ�)
�ǥե�����ͤ��Ѥ�������ˤʤ�ʤ����Ȥ�¿���ΤǤ��������å������ڤ���
���Ȥ⤢��ޤ������������Ȥ��ϤȤꤢ���� HELO �ɥᥤ���Ϳ���Ƥߤ�
���������������󤽤�ʳ��λ��� HELO �ɥᥤ��Ϥ������Ϥ��Τ�
�褤�Ǥ��礦��

  Net::SMTP.start('your.smtp.server.example.ne.jp', 25, 'mail.from.domain.example.jp') {|smtp|

�褯���������륢�åץۥ��Ȥξ�硢HELO �ɥᥤ��ˤ� ISP �Υ᡼��
�����ФΥɥᥤ���ȤäƤ����Ф����Ƥ��̤�ޤ���

=== SMTPǧ��

[[c:Net::SMTP]] �� PLAIN, LOGIN, CRAM MD5 ��3�Ĥ���ˡ��ǧ�ڤ򤹤뤳�Ȥ��Ǥ��ޤ���
(ǧ�ڤˤĤ��Ƥ� [[RFC:2554]], [[RFC:2195]] �򻲾Ȥ��Ƥ�������)

ǧ�ڤ��뤿��ˤϡ�[[m:Net::SMTP.start]] �⤷���� [[m:Net::SMTP#start]]
�ΰ������ɲäΰ������Ϥ��Ƥ���������

  # ��
  Net::SMTP.start('smtp.example.com', 25, 'yourdomain.example.jp',
                  'your_account', 'your_password', :cram_md5)

=== TLS���Ѥ���SMTP�̿�
[[c:Net::SMTP]] �� [[RFC:3207]] �˴�Ť��� STARTTLS ���Ѥ���
��ˡ���⤷���� SMTPS �ȸƤФ����ɸ��Ū����ˡ
(�ݡ���465���Ѥ����̿����Τ�TLS�����)
�ˤ��᡼�������ΰŹ沽����ǽ�Ǥ���

����2�Ĥ���¾�ǡ�Ʊ�������ѤǤ��ޤ���

TLS���Ѥ��뤳�Ȥǡ��̿�����ǧ�ڡ�������̿���ϩ�ΰŹ沽���Ǥ��ޤ���
�����������ߤΥ᡼�������λ��ȤߤȤ��ơ����륵���Ф����̤Υ����Фؤ�
��Ѥ�Ԥ����Ȥ�����ޤ��������Ǥ��̿���ǧ�ڤ���Ƥ��뤫�ݤ����Ź沽����
�Ƥ��뤫�ݤ��Ϥ��λ��Ȥߤ��ϰϳ��Ǥ��ꡢ�ʤ�餫���ݾڤ�����櫓�Ǥ�
�ʤ����Ȥ���դ��Ƥ����������᡼�뤽�Τ�ΤΰŹ沽�䡢�᡼���
����͡��������ͤ�ǧ�ڤ���
ɬ�פ���������̤���ˡ��ͤ���ɬ�פ�����Ǥ��礦��

  # STARTTLS����
  smtp = Net::SMTP.new('smtp.example.com', 25)
  # SSL�Υ���ƥ����Ȥ��������SSL������򤷡�context ���������Ƥ���
  # TLS���˻Ȥ��褦�ˤ���
  smtp.enable_starttls(context)
  smtp.start() do
    # send messages ...
  end
= class Net::SMTP < Object
alias Net::SMTPSession

SMTP �Υ��å�����ɽ���������饹�Ǥ���


== Singleton Methods

--- new(address, port = Net::SMTP.default_port) -> Net::SMTP
������ SMTP ���֥������Ȥ��������ޤ���
address ��SMTP�����С���FQDN�ǡ�
port ����³����ݡ����ֹ�Ǥ���
�����������Υ᥽�åɤǤϤޤ�TCP����³�Ϥ��ޤ���
[[m:Net::SMTP#start]] ����³���ޤ���

���֥������Ȥ���������³��Ʊ���ˤ��������ˤ�
[[m:Net::SMTP.start]] ������˻ȤäƤ���������

@param address ��³���SMTP�����Ф�ʸ����
@param port ��³�ݡ����ֹ�

@see [[m:Net::SMTP.start]], [[m:Net::SMTP#start]]

#@until 1.9.1
--- start(address, port = Net::SMTP.default_port, helo_domain = 'localhost.localdomain', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) -> Net::SMTP
--- start(address, port = Net::SMTP.default_port, helo_domain = 'localhost.localdomain', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) {|smtp| .... } -> object
#@else
--- start(address, port = Net::SMTP.default_port, helo_domain = 'localhost', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) -> Net::SMTP
--- start(address, port = Net::SMTP.default_port, helo_domain = 'localhost', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) {|smtp| .... } -> object
#@end

������ SMTP ���֥������Ȥ��������������Ф���³�������å����򳫻Ϥ��ޤ���


�ʲ���Ʊ���Ǥ���

  Net::SMTP.new(address, port).start(helo_domain, account, password, authtype)

���Υ᥽�åɤ˥֥�å���Ϳ�������ˤϡ����������줿 [[c:Net::SMTP]] ���֥�������
������Ȥ��Ƥ��Υ֥�å���Ƥӡ��֥�å���λ���˼�ưŪ����³���Ĥ��ޤ���
�֥�å���Ϳ���ʤ��ä����ˤϿ��������줿 [[c:Net::SMTP]] ���֥������Ȥ�
�֤���ޤ������ξ�罪λ���� [[m:Net::SMTP#close]] ��Ƥ֤Τ����ѼԤ���Ǥ��
�ʤ�ޤ���

account �� password ��ξ����Ϳ����줿��硢
SMTP AUTH ���ޥ�ɤˤ�ä�ǧ�ڤ�Ԥ��ޤ���
authtype �ϻ��Ѥ���ǧ�ڤΥ����פǡ�
����ܥ�� :plain, :login, :cram_md5 ����ꤷ�ޤ���

Example:

  require 'net/smtp'

  Net::SMTP.start('your.smtp.server') {|smtp|
    smtp.send_message mail_string, 'from@example.jp', 'dest@example.jp'
  }

@param address ��³���륵���Ф�ۥ���̾�⤷����IP���ɥ쥹�ǻ��ꤷ�ޤ�
@param port �ݡ����ֹ桢�ǥե���Ȥ� 25 �Ǥ�
@param helo_domain HELO ��̾���ɥᥤ��̾�Ǥ�
@param account ǧ�ڤǻȤ����������̾
@param password ǧ�ڤǻȤ��ѥ����
@param authtype ǧ�ڤμ���(:plain, :login, :cram_md5 �Τ����줫)

@raise TimeoutError ��³���˥����ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::SMTPUnsupportedCommand TLS�򥵥ݡ��Ȥ��Ƥ��ʤ������Ф�TLS��Ȥ����Ȥ�������ȯ�����ޤ�
@raise Net::SMTPServerBusy SMTP���顼������420,450�ξ���ȯ�����ޤ�
@raise Net::SMTPSyntaxError SMTP���顼������500�ξ���ȯ�����ޤ�
@raise Net::SMTPFatalError SMTP���顼������5xx�ξ���ȯ�����ޤ�

@see [[m:Net::SMTP#start]], [[m:Net::SMTP.new]]
--- default_port -> Integer
SMTP�Υǥե���ȤΥݡ����ֹ�(25)���֤��ޤ���

#@since 1.8.7
--- default_submission_port -> Integer
�ǥե���ȤΥ��֥ߥå����ݡ����ֹ�(587)���֤��ޤ���

--- default_ssl_context -> OpenSSL::SSL::SSLContext
SSL �̿��˻Ȥ��� SSL �Υ���ƥ����ȤΥǥե�����ͤ��֤��ޤ���

--- default_tls_port -> Integer
--- default_ssl_port -> Integer
�ǥե���Ȥ�SMTPS�Υݡ����ֹ�(465)���֤��ޤ���

#@end

== Instance Methods

--- esmtp? -> bool
--- esmtp -> bool
���� Net::SMTP ���֥������Ȥ� ESMTP ��Ȥ����˿����֤��ޤ���
�ǥե���ȤϿ��Ǥ���

@see [[m:Net::SMTP#esmtp=]]

--- esmtp=(bool)
���� Net::SMTP ���֥������Ȥ� ESMTP ��Ȥ����ɤ�������ꤷ�ޤ���

���λ���� [[m:Net::SMTP#start]] ��Ƥ����ˤ���ɬ�פ�����ޤ���
ESMTP�⡼�ɤ� [[m:Net::SMTP#start]] ��Ƥӡ����ޤ������ʤ��ä�
���ˤ� ���̤� SMTP �⡼�ɤ��ڤ��ؤ��Ƥ��ʤ����ޤ�
(�դϤ��ޤ���)��


@see [[m:Net::SMTP#esmtp?]]

#@since 1.8.7
--- capable_starttls? -> bool
�����Ф� STARTTLS �򹭹𤷤Ƥ������˿����֤��ޤ���

���Υ᥽�åɤ� [[m:Net::SMTP#start]] �ʤɤǥ��å����򳫻�
�����ʹߤˤ����������ͤ��֤��ޤ���


--- capable_cram_md5_auth? -> bool
�����Ф� AUTH CRAM-MD5 �򹭹𤷤Ƥ������˿����֤��ޤ���

���Υ᥽�åɤ� [[m:Net::SMTP#start]] �ʤɤǥ��å����򳫻�
�����ʹߤˤ����������ͤ��֤��ޤ���


--- capable_login_auth? -> bool
�����Ф� AUTH LOGIN �򹭹𤷤Ƥ������˿����֤��ޤ���

���Υ᥽�åɤ� [[m:Net::SMTP#start]] �ʤɤǥ��å����򳫻�
�����ʹߤˤ����������ͤ��֤��ޤ���

--- capable_plain_auth? -> bool
�����Ф� AUTH PLAIN �򹭹𤷤Ƥ������˿����֤��ޤ���

���Υ᥽�åɤ� [[m:Net::SMTP#start]] �ʤɤǥ��å����򳫻�
�����ʹߤˤ����������ͤ��֤��ޤ���

--- capable_auth_types -> [String]
��³���������Ф����Ѳ�ǽ��ǧ�ڤ�������֤��ޤ���

�֤��ͤ���������Ǥϡ� 'PLAIN', 'LOGIN', 'CRAM-MD5' �Ǥ���

���Υ᥽�åɤ� [[m:Net::SMTP#start]] �ʤɤǥ��å����򳫻�
�����ʹߤˤ����������ͤ��֤��ޤ���

--- tls? -> bool
--- ssl? -> bool
���� Net::SMTP ���֥������Ȥ� SMTPS �����Ѥ���ʤ�п����֤��ޤ���

@see [[m:Net::SMTP#enable_tls]], [[m:Net::SMTP#disable_tls]], [[m:Net::SMTP#start]]

--- enable_ssl(context = Net::SMTP.default_ssl_context) -> ()
--- enable_tls(context = Net::SMTP.default_ssl_context) -> ()
���� Net::SMTP ���֥������Ȥ� SMTPS �����Ѥ���褦���ꤷ�ޤ���

���Υ᥽�åɤ� [[m:Net::SMTP#start]] ��Ƥ����˸Ƥ�ɬ�פ�����ޤ���

@param context SSL��³�����Ѥ��� [[c:OpenSSL::SSL::SSLContext]] 

@see [[m:Net::SMTP#tls?]], [[m:Net::SMTP#disable_tls]]
--- disable_ssl -> ()
--- disable_tls -> ()

���� Net::SMTP ���֥������Ȥ� SMTPS �����Ѥ��ʤ��褦���ꤷ�ޤ���

@see [[m:Net::SMTP#disable_tls]], [[m:Net::SMTP#tls?]]

--- starttls? -> Symbol/nil
���� Net::SMTP ���֥������Ȥ� STARTTLS�����Ѥ��뤫�ɤ������֤��ޤ���

������Ѥ���(���ѤǤ��ʤ��Ȥ��� [[m:Net::SMTP#start]] ���㳰 
[[c:Net::SMTPUnsupportedCommand]] ��ȯ��) ����Ȥ��� :always ��
���Ѳ�ǽ�ʾ��Τ����Ѥ������ :auto ��
������Ѥ��ʤ����ˤ� nil ���֤��ޤ���

@see [[m:Net::SMTP#start]]

--- starttls_always? -> bool
���� Net::SMTP ���֥������Ȥ� ���STARTTLS�����Ѥ���
(���ѤǤ��ʤ����ˤ��㳰��ȯ������)�ʤ��
�����֤��ޤ���

@see [[m:Net::SMTP#starttls?]], [[m:Net::SMTP#starttls_auto?]], [[m:Net::SMTP#enable_starttls]]

--- starttls_auto? -> bool
���� Net::SMTP ���֥������Ȥ����Ѳ�ǽ�ʾ��ˤΤߤ�STARTTLS�����Ѥ���ʤ��
�����֤��ޤ���

@see [[m:Net::SMTP#starttls?]], [[m:Net::SMTP#starttls_always?]], [[m:Net::SMTP#enable_starttls_auto]]

--- enable_starttls(context = Net::SMTP.default_ssl_context) -> ()
���� Net::SMTP ���֥������Ȥ� ���STARTTLS�����Ѥ���
(���ѤǤ��ʤ����ˤ��㳰��ȯ������)�褦�����ꤷ�ޤ���

@param context SSL��³�����Ѥ��� [[c:OpenSSL::SSL::SSLContext]] 
@see [[m:Net::SMTP#starttls?]], [[m:Net::SMTP#starttls_always?]], [[m:Net::SMTP#enable_starttls_auto]]

--- enable_starttls_auto(context = Net::SMTP.default_ssl_context) -> ()
���� Net::SMTP ���֥������Ȥ�STARTTLS�����Ѳ�ǽ�ʾ��
(�Ĥޤꥵ���Ф�STARTTLS�򹭹𤷤����)�Τߤ�STARTTLS�����Ѥ���
�褦�����ꤷ�ޤ���

@see [[m:Net::SMTP#starttls?]], [[m:Net::SMTP#starttls_auto?]], [[m:Net::SMTP#enable_starttls_auto]]
@param context SSL��³�����Ѥ��� [[c:OpenSSL::SSL::SSLContext]] 
@see [[m:Net::SMTP#starttls?]], [[m:Net::SMTP#starttls_auto?]], [[m:Net::SMTP#enable_starttls]]

--- disable_starttls -> ()
���� Net::SMTP ���֥������Ȥ�STARTTLS���˻Ȥ�ʤ��褦���ꤷ�ޤ���

@see [[m:Net::SMTP#starttls?]], [[m:Net::SMTP#enable_starttls]], [[m:Net::SMTP#enable_starttls_auto]]
#@end

--- set_debug_output(f) -> ()
#@since 1.8.7
--- debug_output=(f)
#@end
�ǥХå����Ϥν��������ꤷ�ޤ���
���Υ᥽�åɤϿ���ʥ������ƥ��ۡ���θ����Ȥʤꤨ�ޤ���
�ǥХå��ѤˤΤ����Ѥ��Ƥ���������

@param f �ǥХå�������� [[c:IO]] (�⤷���� << �Ȥ����᥽�åɤ���ĥ��饹)�ǻ��ꤷ�ޤ�

#@until 1.9.1
--- start(helo_domain = 'localhost.localdomain', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) -> Net::SMTP
--- start(helo_domain = 'localhost.localdomain', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) {|smtp| .... } -> object
#@else
--- start(helo_domain = 'localhost', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) -> Net::SMTP
--- start(helo_domain = 'localhost', account = nil, password = nil, authtype = DEFAULT_AUTH_TYPE) {|smtp| .... } -> object
#@end
�����Ф˥��ͥ�������ĥ�ꡢƱ���� SMTP ���å����򳫻Ϥ��ޤ���

�⤷���Ǥ˥��å���󤬳��Ϥ��Ƥ����� IOError ��ȯ�����ޤ���

account �� password ��ξ����Ϳ����줿��硢
SMTP AUTH ���ޥ�ɤˤ�ä�ǧ�ڤ�Ԥ��ޤ���
authtype �ϻ��Ѥ���ǧ�ڤΥ����פǡ�
����ܥ�� :plain, :login, :cram_md5 ����ꤷ�ޤ���

���Υ᥽�åɤ˥֥�å���Ϳ�������ˤϡ����Υ��֥�������
������Ȥ��Ƥ��Υ֥�å���Ƥӡ��֥�å���λ���˼�ưŪ����³���Ĥ��ޤ���
�֥�å���Ϳ���ʤ��ä����ˤϼ�ʬ���Ȥ��֤��ޤ���
���ξ�罪λ���� [[m:Net::SMTP#close]] ��Ƥ֤Τ����ѼԤ���Ǥ��
�ʤ�ޤ���

[[m:Net::SMTP#enable_tls]] �� [[m:Net::SMTP#
@param helo_domain HELO ��̾���ɥᥤ��̾�Ǥ�
@param account ǧ�ڤǻȤ����������̾
@param password ǧ�ڤǻȤ��ѥ����
@param authtype ǧ�ڤμ���(:plain, :login, :cram_md5 �Τ����줫)

@raise IOError ���Ǥ˥��å����򳫻Ϥ��Ƥ������ȯ�����ޤ�
@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::SMTPUnsupportedCommand STARTTLS�򥵥ݡ��Ȥ��Ƥ��ʤ������Ф�STARTTLS�����Ѥ��褦�Ȥ�������ȯ�����ޤ�
@raise Net::SMTPServerBusy SMTP���顼������420,450�ξ���ȯ�����ޤ�
@raise Net::SMTPSyntaxError SMTP���顼������500�ξ���ȯ�����ޤ�
@raise Net::SMTPFatalError SMTP���顼������5xx�ξ���ȯ�����ޤ�

--- started? -> bool
SMTP ���å���󤬳��Ϥ���Ƥ����鿿���֤��ޤ���

���å���󤬤ޤ����Ϥ��Ƥ��ʤ����⤷���Ͻ�λ���Ƥ�����ˤϵ����֤��ޤ���

@see [[m:Net::SMTP#start]], [[m:Net::SMTP#finish]]

--- inspect -> String
@see [[Object#inspect]]

--- address -> String

��³��Υ��ɥ쥹���֤��ޤ���

--- port -> Integer

��³��Υݡ����ֹ���֤��ޤ���

--- open_timeout -> Integer

��³�����Ԥĺ����ÿ����֤��ޤ���

�ǥե���Ȥ�30(��)�Ǥ���
�����ÿ����äƤ⥳�ͥ������
�����ʤ�����㳰 TimeoutError ��ȯ�����ޤ���

@see [[m:Net::SMTP#open_timeout=]]

--- open_timeout=(n)

��³�����Ԥĺ����ÿ������ꤷ�ޤ���

@see [[m:Net::SMTP#open_timeout]]

--- read_timeout -> Integer
�ɤߤ��� ([[man:read(2)]] ���) �ǥ֥�å����Ƥ褤�����ÿ����֤��ޤ���

�ǥե���Ȥ�60(��)�Ǥ���
�����ÿ����äƤ��ɤߤ���ʤ�����㳰 TimeoutError ��ȯ�����ޤ���

@see [[m:Net::SMTP#read_timeout=]]
--- read_timeout=(n)
�ɤ߹��ߤǥ֥�å����Ƥ褤�����ÿ������ꤷ�ޤ���

@see [[m:Net::SMTP#read_timeout]]
--- finish -> ()
SMTP ���å�����λ���ޤ���

@raise IOError ���å���󳫻����ˤ��Υ᥽�åɤ��ƤФ줿����ȯ�����ޤ�

@see [[m:Net::SMTP#start]]

--- send_message(mailsrc, from_addr, *to_addrs) -> ()
--- send_mail(mailsrc, from_addr, *to_addrs) -> ()
--- sendmail(mailsrc, from_addr, *to_addrs) -> ()

�᡼����������ޤ���

mailsrc ��᡼��Ȥ����������ޤ���
mailsrc �� each ���ƥ졼�������
���֥������Ȥʤ�ʤ�Ǥ⹽���ޤ���(���Ȥ��� String �� File)��

from_domain �������Υ᡼�륢�ɥ쥹 ('...@...'�Τ�����) ��
to_addrs �ˤ�������᡼�륢�ɥ쥹��ʸ������Ϥ��ޤ���

  require 'net/smtp'

  Net::SMTP.start('your.smtp.server') {|smtp|
    smtp.send_message mail_string,
                      'from@mail.address',
                      'dest@mail.address', 'dest2@mail.address'
  }

sendmail �� obsolete �Ǥ���

@param mailsrc �᡼�������
@param from_addr �������Υ᡼�륢�ɥ쥹
@param to_addrs ������Υ᡼�륢�ɥ쥹(ʣ���ġ����ʤ��Ȥ�1��)

@raise IOError ���Ǥ˥��å���󤬽�λ���Ƥ������ȯ�����ޤ�
@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::SMTPServerBusy SMTP���顼������420,450�ξ���ȯ�����ޤ�
@raise Net::SMTPSyntaxError SMTP���顼������500�ξ���ȯ�����ޤ�
@raise Net::SMTPFatalError SMTP���顼������5xx�ξ���ȯ�����ޤ�
@raise Net::SMTPUnknownError SMTP���顼�����ɤ��ץ�ȥ���������ʾ���ȯ�����ޤ�

--- open_message_stream(from_addr, *to_addrs) {|f| .... } -> ()
--- ready(from_addr, *to_addrs) {|f| .... } -> ()
�᡼��񤭹��ߤν����򤷡��񤭹�����Υ��ȥ꡼�४�֥������Ȥ�
�֥�å����Ϥ��ޤ����֥�å���λ�塢�񤭤������̤�
�����ޤ���

�Ϥ���륹�ȥ꡼�४�֥������Ȥϰʲ��Υ᥽�åɤ���äƤ��ޤ���
  * puts(str = '') str����Ϥ��� CR LF�����
  * print(str)     str�����
  * printf(fmt, *args)   sprintf(fmt,*args) �����
  * write(str)::         str ����Ϥ��ƽ񤭹�����Х��ȿ����֤�
  * <<(str)::            str ����Ϥ��ƥ��ȥ꡼�४�֥������ȼ��Ȥ��֤�

from_domain �������Υ᡼�륢�ɥ쥹 ('...@...'�Τ�����) ��
to_addrs �ˤ�������᡼�륢�ɥ쥹��ʸ������Ϥ��ޤ���

  require 'net/smtp'

  Net::SMTP.start('smtp.exmaple.com', 25) {|smtp|
    smtp.open_message_stream('from@mail.addr', 'dest@mail.addr') {|f|
      f.puts 'From: aamine@loveruby.net'
      f.puts 'To: someone@somedomain.org'
      f.puts 'Subject: test mail'
      f.puts
      f.puts 'This is test mail.'
    }
  }

ready �� obsolete �Ǥ���

@param from_addr �������Υ᡼�륢�ɥ쥹
@param to_addrs ������Υ᡼�륢�ɥ쥹(ʣ���ġ����ʤ��Ȥ�1��)

@raise IOError ���Ǥ˥��å���󤬽�λ���Ƥ������ȯ�����ޤ�
@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::SMTPServerBusy SMTP���顼������420,450�ξ���ȯ�����ޤ�
@raise Net::SMTPSyntaxError SMTP���顼������500�ξ���ȯ�����ޤ�
@raise Net::SMTPFatalError SMTP���顼������5xx�ξ���ȯ�����ޤ�
@raise Net::SMTPAuthenticationError ������ɬ�פ�ǧ�ڤ�ԤäƤ��ʤ��ä�����ȯ�����ޤ�
@raise Net::SMTPUnknownError SMTP���顼�����ɤ��ץ�ȥ���������ʾ���ȯ�����ޤ�

@see [[m:Net::SMTP#send_message]]

#@since 1.8.7

--- authenticate(user, secret, authtype) -> ()
ǧ�ڤ�Ԥ��ޤ���

���Υ᥽�åɤϥ��å���󳫻�([[m:Net::SMTP#start]])�塢
�᡼����������˸ƤӤ����Ƥ���������

@param user ǧ�ڤǻȤ����������̾
@param secret ǧ�ڤǻȤ��ѥ����
@param authtype ǧ�ڤμ���(:plain, :login, :cram_md5 �Τ����줫)

@see [[m:Net::SMTP.start]], [[m:Net::SMTP#start]], [[m:Net::SMTP#auth_plain]], [[m:Net::SMTP#auth_login]], [[m:Net::SMTP#auth_cram_md5]]

--- auth_plain(user, secret) -> ()
PLAIN ǧ�ڤ�Ԥ��ޤ���

���Υ᥽�åɤϥ��å���󳫻�([[m:Net::SMTP#start]])�塢
�᡼����������˸ƤӤ����Ƥ���������

@param user ǧ�ڤǻȤ����������̾
@param secret ǧ�ڤǻȤ��ѥ����

--- auth_login(user, secret) -> ()
LOGIN ǧ�ڤ�Ԥ��ޤ���

���Υ᥽�åɤϥ��å���󳫻�([[m:Net::SMTP#start]])�塢
�᡼����������˸ƤӤ����Ƥ���������

@param user ǧ�ڤǻȤ����������̾
@param secret ǧ�ڤǻȤ��ѥ����


--- auth_cram_md5(user, secret) -> ()
CRAM-MD5 ǧ�ڤ�Ԥ��ޤ���

���Υ᥽�åɤϥ��å���󳫻�([[m:Net::SMTP#start]])�塢
�᡼����������˸ƤӤ����Ƥ���������

@param user ǧ�ڤǻȤ����������̾
@param secret ǧ�ڤǻȤ��ѥ����

--- starttls -> Net::SMTP::Response
STARTTLS ���ޥ�ɤ�����ޤ���

�̾�� [[m:Net::SMTP#start]] �� STARTTLS �������뤿��
���Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

--- helo(domain) -> Net::SMTP::Response
HELO ���ޥ�ɤ�����ޤ�(ɸ��Ū�� SMTP ��Ȥ��ޤ�)��

�̾�� [[m:Net::SMTP.start]], [[m:Net::SMTP#start]] �� HELO ��
�����뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���


@param domain HELO������ɥᥤ��̾

--- ehlo(domain) -> Net::SMTP::Response
EHLO ���ޥ�ɤ�����ޤ�(ESMTP ��Ȥ��ޤ�)��

�̾�� [[m:Net::SMTP.start]], [[m:Net::SMTP#start]] �� EHLO ��
�����뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

@param domain EHLO������ɥᥤ��̾

--- mailfrom(from_addr) -> Net::SMTP::Response
MAILFROM ���ޥ�ɤ�����ޤ���

�̾�� [[m:Net::SMTP#send_message]], [[m:Net::SMTP#open_message_stream]] ��
MAILFROM �������뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

@param from_addr �������᡼�륢�ɥ쥹

--- rcptto_list(to_addrs) -> Net::SMTP::Response
RCPTTO ���ޥ�ɤ� to_addrs �Τ��٤ƤΥ᡼�륢�ɥ쥹���Ф�������ޤ���

�̾�� [[m:Net::SMTP#send_message]], [[m:Net::SMTP#open_message_stream]] ��
RCPTTO �������뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

@param to_addrs ������᡼�륢�ɥ쥹������

--- rcptto(to_addr) -> Net::SMTP::Response
RCPTTO ���ޥ�ɤ�����ޤ���

�̾�� [[m:Net::SMTP#send_message]], [[m:Net::SMTP#open_message_stream]] ��
RCPTTO �������뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

@param to_addr ������᡼�륢�ɥ쥹

--- data(message) -> Net::SMTP::Response
--- data {|f| .... } -> Net::SMTP::Response
DATA ���ޥ�ɤ�����ޤ���

ʸ����������Ϳ�������Ϥ������ʸ�Ȥ�������ޤ���
�֥�å���Ϳ�������ˤϤ��Υ֥�å��˥��ȥ꡼�४�֥������Ȥ��Ϥ���ޤ�
([[m:Net::SMTP#open_message_stream]]����)��

�̾�� [[m:Net::SMTP#send_message]], [[m:Net::SMTP#open_message_stream]] ��
DATA �������뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

@param �᡼�����ʸ

--- quit -> Net::SMTP::Response
QUIT ���ޥ�ɤ�����ޤ���

�̾�� [[m:Net::SMTP#finish]] ��
QUIT �������뤿�����Ѥ���ɬ�פϤʤ��Ϥ��Ǥ���

#@end

== Constants

#@since 1.8.7
--- DEFAULT_AUTH_TYPE -> Symbol
�ǥե���Ȥ�ǧ�ڥ�������(:plain)�Ǥ���
#@end

#@# internal constants for CRAM-MD5 authentication
#@# --- IMASK
#@# --- OMASK
#@# --- CRAM_BUFSIZE

#@# --- Revision -> String
#@# �ե�����Υ�ӥ����Ǥ���

#@since 1.8.7
= class Net::SMTP::Response < Object
[[c:Net::SMTP]] �������ѥ��饹�Ǥ���
#@end

= module Net::SMTPError
SMTP ��Ϣ���㳰�� include �����⥸�塼��Ǥ���

= class Net::SMTPAuthenticationError < Net::ProtoAuthError
include Net::SMTPError

SMTP ǧ�ڥ��顼(���顼������ 530)���б������㳰���饹�Ǥ���

= class Net::SMTPServerBusy < Net::ProtoServerError
include Net::SMTPError

SMTP ������顼���б������㳰���饹�Ǥ���
SMTP ���顼������ 420, 450 ���б����ޤ���

= class Net::SMTPSyntaxError < Net::ProtoSyntaxError
include Net::SMTPError

SMTP ���ޥ��ʸˡ���顼(���顼������ 500) ���б�����
�㳰���饹�Ǥ���

= class Net::SMTPFatalError < Net::ProtoFatalError
include Net::SMTPError

SMTP ��̿Ū���顼(���顼������ 5xx�� ������500����)���б�����
�㳰���饹�Ǥ���

= class Net::SMTPUnknownError < Net::ProtoUnknownError
include Net::SMTPError

�����Ф���α��������ɤ�ͽ������Ƥ��ʤ��ͤǤ��ä�����
�б������㳰���饹�Ǥ��������Ф⤷���ϥ��饤����Ȥ˲��餫��
�Х������ä�����ȯ�����ޤ���


= class Net::SMTPUnsupportedCommand < Net::ProtocolError
include Net::SMTPError

�����Ф����ѤǤ��ʤ����ޥ�ɤ������Ȥ�������ȯ������
�㳰�Υ��饹�Ǥ���

