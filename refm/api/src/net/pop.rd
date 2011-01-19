���Υ饤�֥��ϡ�POP3 (Post Office Protocol version 3) ��
�Ѥ���POP�����Ф���᡼���������뵡ǽ���󶡤���饤�֥��Ǥ���

POP3 �μ����� [[RFC:1939]] �˴𤤤Ƥ��ޤ���

[[RFC:2449]] ���������Ƥ���POP3��ĥ�ˤ��б����Ƥ��ޤ���
=== ������

==== �᡼��μ���

�ʲ��Υ����ɤϡ��᡼���������ƥե����� 'inbox/1' 'inbox/2'... ��
�񤭤��ߡ������о夫��᡼���ä��ޤ���

'pop.example.com' ��Ŭ����POP3�Υ����ФΥۥ���̾�ˡ�
'YourAccount' �� 'YourPassword' ��Ŭ���ʥ��������̾�ȥѥ����
��Ŭ���ɤߤ����Ƥ���������

  require 'net/pop'
  
  pop = Net::POP3.new('pop.example.com', 110)
  pop.start('YourAccount', 'YourPassword') # POP�Υ��å����򳫻�
  if pop.mails.empty?
    $stderr.puts 'no mail.'
  else
    pop.mails.each_with_index do |m, idx|  # �ƥ�å������˥�����������
      File.open("inbox/#{idx + 1}", 'w') {|f|
        f.write m.pop
      }
      m.delete
    end
    $stderr.puts "#{pop.mails.size} mails popped."
  end
  pop.finish                                        # ���å�����λ����

POP �����Фϥͥåȥ���Τळ����¸�ߤ���Τǡ�
�ʤˤ��Ż��򤵤���ˤϤ������˳��ϼ�³����
����ä��齪λ��³���򡢹Ԥ�ʤ���Ф����ޤ���
�����Ԥ��Τ� [[m:Net::POP3#start]] �� [[m:Net::POP3#finish]] �ǡ�
POP3 ���֥������ȤϤ�����ĤΥ᥽�åɤδ֤Ǥ���ͭ���ˤʤ�ޤ���

�����о�Υ᡼��� [[c:Net::POPMail]] ���֥������ȤȤ���ɽ������Ƥ��ꡢ����
���֥������ȤΥ᥽�åɤ�Ƥ֤��Ȥǥ᡼����äƤ�����ä����ꤹ��
���Ȥ��Ǥ��ޤ���[[m:Net::POP3#mails]] �Ϥ��� [[c:Net::POPMail]] ���֥������Ȥ�����Ǥ��ꡢ
[[m:Net::POP3#each_mail]] �Ϥ���� pop.mails.each �Υ��硼�ȥ��åȤǤ���

==== û������

�����Ϥ����ƾ�ά��û���ѥ᥽�åɤ��򤱤�����ˤ��ʤ��Ĺ�Ǥ���
�ޤ����֥�å��դ��� [[m:Net::POP3.start]] ��Ȥ����Ȥ�
POP3.new, #start, #finish ��ʻ��Ǥ��ޤ���

  require 'net/pop'
  
  Net::POP3.start('pop.example.com', 110,
                  'YourAccount', 'YourPassword') {|pop|
    if pop.mails.empty?
      $stderr.puts 'no mail.'
    else
      pop.mails.each_with_index do |m, idx|
        File.open("inbox/#{idx + 1}", 'w') {|f|
          f.write m.pop
        }
        m.delete
      end
      $stderr.puts "#{pop.mails.size} mails popped."
    end
  }

[[m:Net::POP3#delete_all]] ��Ȥ���
����� [[m:Net::POP3#each_mail]] ��
[[m:Net::POPMail#delete]] ��ʻ��Ǥ��ޤ���

  require 'net/pop'
  
  Net::POP3.start('pop.example.com', 110,
                  'YourAccount', 'YourPassword') {|pop|
    if pop.mails.empty?
      $stderr.puts 'no mail.'
    else
      i = 0
      pop.delete_all do |m|
        File.open("inbox/#{i}", 'w') {|f|
          f.write m.pop
        }
        i += 1
      end
    end
  }

���饹�᥽�åɤ� [[m:Net::POP3.delete_all]] ��Ȥ��Ȥ����û���ʤ�ޤ���

  require 'net/pop'
  
  i = 0
  Net::POP3.delete_all('pop.example.com', 110,
                       'YourAccount', 'YourPassword') do |m|
    File.open("inbox/#{i}", 'w') {|f|
      f.write m.pop
    }
    i += 1
  end

==== ��������̤򸺤餹

����ޤǤ���Ǥ� [[m:Net::POPMail#pop]] ��Ȥ���
�᡼���ҤȤĤ�ʸ����Ȥ��Ƥ����ȤäƤ��ޤ�����
���������⤷�᡼�뤬 100MB ��ۤ���褦�ʵ���ʥ᡼����ä���硢
������ˡ�ǤϤޤ������⤷��ޤ���
���Τ褦�ʾ��ϰʲ��Τ褦�� [[m:Net::POPMail#pop]] ��
File ���֥������Ȥ�Ϳ����꤬�Ȥ��ޤ���

  require 'net/pop'
  
  i = 0
  Net::POP3.delete_all('pop.example.com', 110,
                       'YourAccount', 'YourPassword') do |m|
    File.open('inbox/#{i}', 'w') {|f|
        m.pop f
    }
    i += 1
  end

[[m:Net::POPMail#pop]]�˥֥�å����Ϥ��ȡ�
�᡼��ǡ�����٤���ʬ�䤷�ƥ֥�å���ƤӤ����ޤ���
���ε�ǽ��Ȥä�Ʊ�ͤΤ��Ȥ��Ǥ��ޤ���

  require 'net/pop'
  
  i = 0
  Net::POP3.delete_all('pop.example.com', 110,
                       'YourAccount', 'YourPassword') do |m|
    File.open('inbox/#{i}', 'w') {|f|
      m.pop {|chunk|
        f.write(chunk)
      }
    }
    i += 1
  end

==== APOP ��Ȥ�

Net::POP3 ���饹�Τ����� Net::APOP ���饹��Ȥ��ȡ�
ǧ�ڻ��� APOP ��Ȥ��褦�ˤʤ�ޤ���
�ޤ�ưŪ�˥Ρ��ޥ� POP �� APOP �����򤹤�ˤϡ�
�ʲ��Τ褦�� [[m:Net::POP3.APOP]] �᥽�åɤ�Ȥ��Τ������Ǥ���

  require 'net/pop'
  
  # use APOP authentication if $isapop == true
  pop = Net::POP3.APOP($isapop).new('apop.example.com', 110)
  pop.start(YourAccount', 'YourPassword') {|pop|
    # �Ĥ�Υ����ɤ�Ʊ��
  }

������ˡ�ϥ��饹���Τ��Ѥ���Τǡ����饹�᥽�åɤ� start �� foreach��
delete_all��auth_only �ʤɤ� APOP �ȤȤ�˻Ȥ��ޤ���


==== UIDL ���ޥ�ɤ�Ȥä�����Υ᡼���������Ф�

���Ѥ��Ƥ���POP3�����Ф� UIDL ��ǽ���󶡤��Ƥ�����ˤϡ�
�ʲ��Τ褦�ˤ�������Υ᡼���������Ф����Ȥ��Ǥ��ޤ���

  def need_pop?(id)
    # ���Ф������᡼��ξ��˿����֤�
  end
  
  Net::POP3.start('pop.example.com', 110,
                  'Your account', 'Your password') do |pop|
    pop.mails.select { |m| need_pop?(m.unique_id) }.each do |m|
      do_something(m.pop)
    end
  end

[[m:Net::POPMail#unique_id]] �ϥ�å������Υ�ˡ���ID��ʸ������֤��ޤ���
������̾綠�Υ�å������Υϥå����ͤǤ���

==== SSL/TLS �ˤ��Ź沽
���Υ饤�֥��� pop3s �ȸƤФ�롢995�֥ݡ��Ȥ�Ȥ�POP3���̿����Τ�
SSL�������ˡ�Ǥ��̿���ǧ�ڤ���ӰŹ沽����ǽ�Ǥ���
������ˡ��ɸ�ಽ����Ƥ��ޤ���

[[RFC:2595]] ���������Ƥ��� STLS ��ĥ�ˤ�� TLS �����ѤϤǤ��ޤ���

[[m:Net::POP3#enable_ssl]] �Ǥ��Υ��֥������Ȥ� SSL �����Ѥ���褦��
���ꤷ�ޤ���

�ޤ���[[m:Net::POP3.enable_ssl]] �ǰʹ���������뤹�٤Ƥ�
[[c:Net::POP3]] ���֥������Ȥ� SSL �����Ѥ���褦������Ǥ��ޤ���
�����Х�˾��֤��ѹ�����ΤǤ��ޤ����Ѥ��ʤ��ۤ����褤�Ǥ��礦��


= class Net::POP3 < Object
alias Net::POP
alias Net::POPSession

POP3 �Υ��å�����ɽ�����饹�Ǥ���

== Class Methods

--- new(address, port = nil, apop = false) -> Net::POP3
[[c:Net::POP3]] ���֥������Ȥ��������ޤ���

���Υ᥽�åɤǤϥ����Ф���³�ϹԤ��ޤ���
apop �����ΤȤ��� APOP ǧ�ڤ�Ԥ����֥������Ȥ��������ޤ���

port �� nil ���Ϥ��ȡ�Ŭ���ʥݡ���(�̾��110��SSL���ѻ��ˤ� 995)��
�Ȥ��ޤ���

@param address POP3�����ФΥۥ���̾ʸ����
@param port ��³����POP3�����ФΥݡ����ֹ�
@param apop ���ξ��ˤ�APOP��ǧ�ڤ��ޤ�

@see [[m:Net::POP3#start]]
--- start(address, port = nil, account=nil, password=nil, isapop=false) -> Net::POP3
--- start(address, port = nil, account=nil, password=nil, isapop=false) {|pop| .... } -> object

[[c:Net::POP3]] ���֥������Ȥ��������������Ф���³���ޤ���

�֥�å���Ϳ���ʤ����ˤ������������֥������Ȥ��֤��ޤ���

�֥�å���Ϳ�������ˤϡ��������� [[c:Net::POP3]] ���֥������Ȥ�
�֥�å����Ϥ��졢�֥�å�������ä��Ȥ��˥��å�����λ�����ޤ���
���ξ���֤��ͤϥ֥�å����֤��ͤȤʤ�ޤ���

port �� nil ���Ϥ��ȡ�Ŭ���ʥݡ���(�̾��110��SSL���ѻ��ˤ� 995)��
�Ȥ��ޤ���

�ʲ��Υ����ɤ�Ʊ��ư��򤷤ޤ���
  Net::POP3.new(address, port, isapop).start(account, password)

������:

  require 'net/pop'

  Net::POP3.start(addr, port, account, password) {|pop|
    pop.each_mail do |m|
      file.write m.pop
      m.delete
    end
  }

@param address POP3�����ФΥۥ���̾ʸ����
@param port ��³����POP3�����ФΥݡ����ֹ�
@param account ���������̾ʸ����
@param password �ѥ����ʸ����
@param isapop ����APOP�����Ѥ��ޤ�

@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPAuthenticationError ǧ�ڤ˼��Ԥ������⤷����APOP�����Ѥ��褦�Ȥ����������Ф�APOP���󶡤��Ƥ��ʤ�����ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

@see [[m:Net::POP3#start]]
--- APOP(is_apop) -> Class
bool �����ʤ� [[c:Net::APOP]] ���饹�����ʤ� [[c:Net::POP3]] ���饹���֤��ޤ���

������:

  require 'net/pop'

  pop = Net::POP3::APOP($isapop).new(addr, port)
  pop.start(account, password) {
    ....
  }

@param is_apop ���ξ��� Net::APOP ���֤��ޤ���

--- foreach(address, port = nil, account, password, isapop=false) {|mail| .... } -> ()
POP ���å����򳫻Ϥ���
�����о�Τ��٤ƤΥ᡼����������
�ġ��Υ᡼�������Ȥ��ƥ֥�å���ƤӤ����ޤ���

�ġ��Υ᡼��� [[c:Net::POPMail]] �Υ��󥹥��󥹤��Ϥ���ޤ���

port �� nil ���Ϥ��ȡ�Ŭ���ʥݡ���(�̾��110��SSL���ѻ��ˤ� 995)��
�Ȥ��ޤ���

�ʲ��Υ����ɤ�Ʊ�ͤν����򤷤ޤ���
  Net::POP3.start(address, port, account, password, isapop=false) {|pop|
    pop.each_mail do |m|
      yield m
    end
  }
  
������:

  require 'net/pop'

  Net::POP3.foreach('pop.example.com', 110,
                    'YourAccount', 'YourPassword') do |m|
    file.write m.pop
    m.delete if $DELETE
  end

@param address POP3�����ФΥۥ���̾ʸ����
@param port ��³����POP3�����ФΥݡ����ֹ�
@param account ���������̾ʸ����
@param password �ѥ����ʸ����
@param isapop ����APOP�����Ѥ��ޤ�

@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPAuthenticationError ǧ�ڤ˼��Ԥ������⤷����APOP�����Ѥ��褦�Ȥ����������Ф�APOP���󶡤��Ƥ��ʤ�����ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�
@see [[m:Net::POP3.start]], [[m:Net::POP3#each_mail]]

--- delete_all(address, port = nil, account, password, isapop=false) -> ()
--- delete_all(address, port = nil, account, password, isapop=false) {|mail| .... } -> ()
POP ���å����򳫻Ϥ��������о�Υ᡼������ƾõ�ޤ���

�֥�å���Ϳ����줿�Ȥ��Ͼõ�����˳ƥ᡼�������Ȥ��ƥ֥�å���ƤӤ����ޤ���
�᡼��� [[c:Net::POPMail]] �Υ��󥹥��󥹤Ȥ����Ϥ���ޤ���

port �� nil ���Ϥ��ȡ�Ŭ���ʥݡ���(�̾��110��SSL���ѻ��ˤ� 995)��
�Ȥ��ޤ���

������:

  require 'net/pop'

  Net::POP3.delete_all(addr, nil, 'YourAccount', 'YourPassword') do |m|
    puts m.pop
  end

@param address POP3�����ФΥۥ���̾ʸ����
@param port ��³����POP3�����ФΥݡ����ֹ�
@param account ���������̾ʸ����
@param password �ѥ����ʸ����
@param isapop ����APOP�����Ѥ��ޤ�

@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPAuthenticationError ǧ�ڤ˼��Ԥ������⤷����APOP�����Ѥ��褦�Ȥ����������Ф�APOP���󶡤��Ƥ��ʤ�����ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�
@see [[m:Net::POP3.start]], [[m:Net::POP3#delete_all]]

--- auth_only(address, port = nil, account, password, isapop=false)
POP ���å����򳫤���ǧ�ڤ�����Ԥä���³���ڤ�ޤ���

��� POP before SMTP �Τ�����Ѱդ���Ƥ��ޤ���


������:

  require 'net/pop'

  Net::POP3.auth_only('pop.example.com', nil,     # using default port (110)
                      'YourAccount', 'YourPassword')

@param address POP3�����ФΥۥ���̾ʸ����
@param port ��³����POP3�����ФΥݡ����ֹ�
@param account ���������̾ʸ����
@param password �ѥ����ʸ����
@param isapop ����APOP�����Ѥ��ޤ�

@raise Net::POPAuthenticationError ǧ�ڤ˼��Ԥ������⤷����APOP�����Ѥ��褦�Ȥ����������Ф�APOP���󶡤��Ƥ��ʤ�����ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- default_port -> Integer
#@since 1.8.7
--- default_pop3_port -> Integer
#@end
POP3 �Υǥե���ȤΥݡ����ֹ�(110)���֤��ޤ���

#@since 1.8.7
--- default_pop3s_port -> Integer
�ǥե���Ȥ�POP3S�Υݡ����ֹ�(995)���֤��ޤ���

--- certs -> String|nil
SSL �Υѥ�᡼���� ca_file (�ʤ���� ca_path) ���֤��ޤ���

�ɤ�������ꤵ��Ƥ��ʤ����� nil ���֤��ޤ���

@see [[m:OpenSSL::SSL::SSLContext#ca_file]], [[m:OpenSSL::SSL::SSLContext#ca_path]]

--- verify -> Integer|nil
SSL �Υѥ�᡼���� verify_mode ���֤��ޤ���

���ꤵ��Ƥ��ʤ����� nil ���֤��ޤ���

@see [[m:OpenSSL::SSL::SSLContext#verify_mode]]

--- use_ssl? -> bool
�������������� [[c:Net::POP3]] ���֥������Ȥ�
SSL �ˤ���̿����Ѥ���ʤ�п����֤��ޤ���


--- enable_ssl(verify_or_params={}, certs=nil) -> ()
�������������� [[c:Net::POP3]] ���֥������Ȥ�
SSL �ˤ���̿����Ѥ���褦�����ꤷ�ޤ���

verify_or_params �˥ϥå�����Ϥ������ˤϡ���³�������������
[[c:OpenSSL::SSLContext]] ���֥������Ȥ�
[[m:OpenSSL::SSLContext#set_params]] ���Ϥ���ޤ���
certs ��̵�뤵��ޤ���

verify_or_params ���ϥå���Ǥʤ����ˤϡ���³�������������
[[c:OpenSSL::SSLContext]] ���֥������Ȥ�
[[m:OpenSSL::SSLContext#set_params]] ��
  { :verify_mode => verify_or_params, :ca_path => certs }
�Ȥ����ϥå��夬�Ϥ���ޤ���

@param verify_or_params SSL������Υϥå��塢�⤷���� SSL �� verify_mode
@param certs SSL �� ca_path

@see [[m:Net::POP3.disable_ssl]], [[m:Net::POP3.use_ssl?]]

--- ssl_params -> Hash|nil
SSL �Ǥ���³��ͭ���ˤ��Ƥ�����ˤϡ�
SSL ������Υϥå�����֤��ޤ���

���Υϥå���ϡ���³�������������
[[c:OpenSSL::SSLContext]] ���֥������Ȥ�
[[m:OpenSSL::SSLContext#set_params]] ���Ϥ���ޤ���
���Υϥå�����ѹ����뤳�Ȥǡ����Ѥ����ѥ�᡼����
�ѹ�����ޤ���

SSL ��ͭ���ˤ��Ƥ��ʤ����ˤ� nil ���֤��ޤ���

#@# internal use
#@# --- create_ssl_params(verify_or_params = {}, certs = nil)
#@# 

--- disable_ssl -> ()
�������������� [[c:Net::POP3]] ���֥������Ȥ�
SSL �����Ѥ��ʤ��褦�����ꤷ�ޤ���

@see [[m:Net::POP3.enable_ssl]], [[m:Net::POP3.use_ssl?]]

#@end

--- socket_type -> Class

���Υ᥽�åɤ� obsolete �Ǥ���
�Ȥ�ʤ��Ǥ���������

== Instance Methods

#@since 1.8.7

--- use_ssl? -> bool
���Υ��󥹥��󥹤� SSL ��Ȥä���³����ʤ鿿���֤��ޤ���

@see [[m:Net::POP3#enable_ssl]], [[m:Net::POP3#disable_ssl]]

--- enable_ssl(verify_or_params={}, certs=nil) -> ()
���Υ��󥹥��󥹤� SSL �ˤ���̿������Ѥ���褦�����ꤷ�ޤ���

verify_or_params �˥ϥå�����Ϥ������ˤϡ���³�������������
[[c:OpenSSL::SSLContext]] ���֥������Ȥ�
[[m:OpenSSL::SSLContext#set_params]] ���Ϥ���ޤ���
certs ��̵�뤵��ޤ���

verify_or_params ���ϥå���Ǥʤ����ˤϡ���³�������������
[[c:OpenSSL::SSLContext]] ���֥������Ȥ�
[[m:OpenSSL::SSLContext#set_params]] ��
  { :verify_mode => verify_or_params, :ca_path => certs }
�Ȥ����ϥå��夬�Ϥ���ޤ���

@param verify_or_params SSL������Υϥå��塢�⤷���� SSL ������� verify_mode
@param certs SSL ������� ca_path

@see [[m:Net::POP3.enable_ssl]], [[m:Net::POP3#disable_ssl]], [[m:Net::POP3#use_ssl?]]


--- disable_ssl -> ()
���Υ��󥹥��󥹤� SSL �ˤ���̿������Ѥ��ʤ��褦�����ꤷ�ޤ���

@see [[m:Net::POP3#enable_ssl]], [[m:Net::POP3#disable_ssl]], [[m:Net::POP3#use_ssl?]], [[m:Net::POP3.enable_ssl]]

#@end

#@# --- inspect

#@# --- logging   # internal use only

--- start(account, password) -> self
--- start(account, password) {|pop| .... } -> object
�����Ф���³����POP3�Υ��å����򳫻Ϥ��ޤ���

�֥�å����Ϥ��줿���ˤϥ��å���󳫻ϸ�
���Υ��֥������ȼ��Ȥ�����Ȥ��ƥ֥�å����ƤӤ�����ޤ���
�֥�å���λ���˥��å�����λ�����ޤ���

�֥�å����Ϥ���ʤ��ä����ˤϤ��Υ��֥������ȼ��Ȥ��֤��ޤ���
���ξ�祻�å�����λ������Τϥ桼������Ǥ�Ȥʤ�ޤ���


@param account ���������̾ʸ����
@param password �ѥ����ʸ����
@raise IOError ���å���󤬴��˳��Ϥ���Ƥ������ȯ�����ޤ�
@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPAuthenticationError ǧ�ڤ˼��Ԥ������⤷����APOP�����Ѥ��褦�Ȥ����������Ф�APOP���󶡤��Ƥ��ʤ�����ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

#@# TLS���ѻ��ˤϤ���˴ؤ����㳰��ȯ�������ǽ��������ޤ�

--- started? -> bool
--- active? -> bool
POP3 ���å���󤬳��Ϥ���Ƥ����鿿���֤��ޤ���

active? �� obsolete �Ǥ���

--- address -> String
��³���륢�ɥ쥹�Ǥ���

--- port -> Integer
��³����ݡ����ֹ�Ǥ���

--- set_debug_output(f) -> ()
�ǥХå��Ѥν��� f �򥻥åȤ��ޤ���

���Υ᥽�åɤϿ���ʥ������ƥ��ۡ���θ����Ȥʤꤨ�ޤ���
�ǥХå��ʳ������ӤǤϻȤ�ʤ��Ǥ���������

f �� << �᥽�åɤ���äƤ��륪�֥������ȤǤʤ���Фʤ�ޤ���

������:

  require 'net/pop'

  pop = Net::POP3.new('pop.example.com', 110)
  pop.set_debug_output $stderr
  pop.start('YourAccount', 'YourPassword') {
    p pop.n_bytes
  }

�¹Է��:

  POP session started: pop.example.com:110 (POP)
  -> "+OK popd <1162042773.26346.155555a1861c@pop.example.com>\r\n"
  <- "APOP YourAccount XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\r\n"
  -> "+OK\r\n"
  <- "STAT\r\n"
  -> "+OK 37 339936\r\n"
  339936
  <- "QUIT\r\n"
  -> "+OK\r\n"

--- open_timeout -> Interger
��³�����Ԥĺ����ÿ����֤��ޤ���

�����ÿ����äƤ⥳�ͥ�����󤬳����ʤ��Ȥ���
�㳰 TimeoutError ��ȯ�����ޤ���

�ǥե���Ȥ�30�äǤ���

@see [[m:Net::POP3#open_timeout=]]

--- open_timeout=(n)
��³�����Ԥĺ����ÿ������ꤷ�ޤ���

@see [[m:Net::POP3#open_timeout]]

--- read_timeout -> Interger
�ɤ߹��ߤǥ֥�å����Ƥ褤�����ÿ����֤��ޤ���

�����ÿ����äƤ��ɤߤ���ʤ�����㳰 TimeoutError ��ȯ�����ޤ���

�ǥե���Ȥ�60�äǤ���

@see [[m:Net::POP3#read_timeout=]]

--- read_timeout=(n)
�ɤ߹��ߤǥ֥�å����Ƥ褤�����ÿ������ꤷ�ޤ���

@see [[m:Net::POP3#read_timeout]]

--- finish -> ()
POP3 ���å�����λ������³���Ĥ��ޤ���

@raise IOError ���å���󳫻����ˤ��Υ᥽�åɤ�Ƥ֤�ȯ�����ޤ�

--- apop? -> bool
���Υ��󥹥��󥹤� APOP ��Ȥäƥ����Ф���³����ʤ� true ���֤��ޤ���

--- n_bytes -> Integer
�����Фˤ���᡼�����Х��ȿ����֤��ޤ���

@see [[m:Net::POP3#n_mails]]
@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф����顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- n_mails -> Integer
�����Фˤ���᡼��ο����֤��ޤ���

@see [[m:Net::POP3#n_bytes]]
@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф����顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- mails -> [Net::POPMail]
�����о�����ƤΥ᡼���[[c:Net::POPMail]]���֥������Ȥ�����Ȥ����֤��ޤ���

��������ϥ᡼���ǽ�˼������褦�Ȥ����Ȥ����������졢���å����δ�
����å��夵��ޤ���

@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф����顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�


--- each_mail {|popmail| .... } -> [Net::POPMail]
--- each {|popmail| .... } -> [Net::POPMail]
�����о�γƥ᡼�������Ȥ��ƥ֥�å���ƤӤ����ޤ���

�᡼��� [[c:Net::POPMail]] �Υ��󥹥��󥹤Ȥ����Ϥ���ޤ���

pop3.mails.each ��Ʊ���Ǥ���

@raise TimeoutError ��³�������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф����顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- delete_all -> ()
--- delete_all {|popmail| .... } -> ()
�����о�Υ᡼������ƾõ�ޤ���

�֥�å���Ϳ����줿�Ȥ��Ͼõ�����˳ƥ᡼�������Ȥ��ƥ֥�å���ƤӤ����ޤ���
�᡼��� [[c:Net::POPMail]] �Υ��󥹥��󥹤Ȥ����Ϥ���ޤ���

������:

  require 'net/pop'

  n = 1
  pop.delete_all do |m|
    File.open("inbox/#{n}") {|f| f.write m.pop }
    n += 1
  end

--- auth_only(account, password) -> ()
POP ���å����򳫤���ǧ�ڤ�����Ԥä���³���ڤ�ޤ���

��� POP before SMTP �Τ�����Ѱդ���Ƥ��ޤ���

������:

  require 'net/pop'

  pop = Net::POP3.new('pop.example.com')
  pop.auth_only 'YourAccount', 'YourPassword'

@param account ���������̾ʸ����
@param password �ѥ����ʸ����
@raise IOError ���å���󤬴��˳��Ϥ���Ƥ������ȯ�����ޤ�
@raise Net::POPAuthenticationError ǧ�ڤ˼��Ԥ������⤷����APOP�����Ѥ��褦�Ȥ����������Ф�APOP���󶡤��Ƥ��ʤ�����ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- reset -> ()
���å�����ꥻ�åȤ��ޤ���

�ꥻ�åȤˤ�ä� [[m:Net::POPMail#delete]] ���դ�������ޡ��������٤�
��������ޤ���

POP3 �Ǥϥ᡼���Ĥ��������褹����ˡ�Ϥ���ޤ���

#@# --- set_all_uids   # internal use only

== Constants

--- Revision -> String
�饤�֥��(�ե�����)�Υ�ӥ����Ǥ���
�Ȥ�ʤ��Ǥ���������



= class Net::APOP < Net::POP3
alias Net::APOPSession

���Υ��饹�ǤϿ������᥽�åɤ�Ƴ�����Ƥ��ޤ���
ǧ�������� APOP ���Ѥ������Ǥ���



= class Net::POPMail < Object

POP �����С���Υ᡼����̤�ɽ�����륯�饹��

�᡼��μ�����õ�Ȥ��ä����򥫥ץ��벽���ޤ���
[[c:Net::POP3]] ���饹�����������Τǡ��桼����ľ�ܤ��������ޤ���

== Instance Methods

--- pop -> String
--- all -> String
--- mail -> String
--- pop {|str| .... } -> nil
--- all {|str| .... } -> nil
--- mail {|str| .... } -> nil
--- pop(io) -> object
--- all(io) -> object
--- mail(io) -> object

�᡼���������ޤ���

������֥�å���Ϳ�����ʤ��ä����ˤϥ᡼��
�����Ƥ�ʸ������֤��ޤ���

�֥�å����Ϥ��줿�Ȥ��ϡ��᡼������Ƥ�
�����Ť��ɤ߹��ߡ��ɤߤ����ʸ�����
�����Ȥ��ƥ֥�å���ƤӤ����ޤ���

�֥�å��ʤ��ǡ����֥������Ȥ�
�����Ȥ����Ϥ��Ȥ��Υ��֥������Ȥ�
�᡼������Ƥ� << �᥽�åɤǽ缡�񤭹��ߤޤ���
�̾� [[c:IO]] ���֥������Ȥ��Ϥ��ޤ���
���ξ������Ȥ����Ϥ������֥������Ȥ��֤��ޤ���

pop, all, mail �Ϥ��٤�Ʊ�����̤Ǥ�����
all �� mail �� obsolete �Ǥ���


������:

  require 'net/pop'

  Net::POP3.start('pop.example.com', 110,
                  'YourAccount, 'YourPassword') {|pop|
    pop.mails.each do |m|
      puts m.pop
    end
  }


�֥�å������Ѥ�����:
  require 'net/pop'

  Net::POP3.start('pop.example.com', 110) {|pop|
    pop.each_mail do |m|
      m.pop do |str|
        print str
      end
    end
  }

@param io �᡼������Ƥ�񤭤��४�֥�������
@raise TimeoutError �̿��������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- header(dest='') -> String
�᡼��إå����������ʸ����Ȥ����֤��ޤ���

dest���Ϥ��Ȥ��Υ��֥������Ȥ˥ǡ�����񤭹��ߤޤ����������
obsolete �ʤΤǻȤ�ʤ��Ǥ���������

@param dest �إå���񤭹�����(obsolete�ʤΤǻȤ�ʤ��Ǥ�������)
@raise TimeoutError �̿��������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�

--- top(lines, dest='') -> String
�᡼��إå�����ʸ lines �Ԥ��������ʸ����Ȥ����֤��ޤ���

dest���Ϥ��Ȥ��Υ��֥������Ȥ˥ǡ�����񤭹��ߤޤ����������
obsolete �ʤΤǻȤ�ʤ��Ǥ���������

@param lines ��ʸ���ɤߤ����Կ�
@param dest �ǡ�����񤭹�����(obsolete�ʤΤǻȤ�ʤ��Ǥ�������)
@raise TimeoutError �̿��������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�


--- delete -> ()
--- delete! -> ()
�᡼��˺���ޡ������դ��ޤ���

����ޡ������դ����᡼����ɤ߽Ф��ʤ��ʤ�ޤ���
���å����λ���˼ºݤ˺������ޤ���
[[m:Net::POP3#reset]] ��Ƥ֤Ⱥ���ޡ����ϼ��ä���ޤ���

delete! �� obsolete �Ǥ���

@raise TimeoutError �̿��������ॢ���Ȥ�������ȯ�����ޤ�
@raise Net::POPError �����Ф�ǧ�ڼ��԰ʳ��Υ��顼����𤷤�����ȯ�����ޤ�
@raise Net::POPBadResponse �����Ф���α������ץ�ȥ���������Ǥ��ä�����ȯ�����ޤ�
@see [[m:Net::POPMail#deleted?]]
--- deleted? -> bool
�᡼��˺���ޡ������դ����Ƥ�����˿����֤��ޤ���

@see [[m:Net::POPMail#delete]]

--- size -> Integer
--- length -> Integer
�᡼��Υ����� (ñ�̤ϥХ���) �򤫤����ޤ���

--- number -> Integer
�᡼����Ф��ƿ���줿�����Υ᡼��ܥå����ǰ�դ��ֹ���֤��ޤ���

�����Ф���³���ʤ����Ȥ����ֹ���Ѳ������礬����ޤ���
�᡼�뤴�Ȥ˰�դʼ��̻Ҥ�ɬ�פʤȤ���
[[m:Net::POPMail#uidl]] ��ȤäƤ���������

--- uidl -> String
--- unique_id -> String
�᡼����Ф��ƿ���줿�������о�ǰ�դʼ��̻� (UIDL) �򤫤����ޤ���

[[m:Net::POPMail#number]] �Ȱ㤤��
���� UIDL ����³���ʤ����Ƥ��Ѳ����ޤ���

#@# internal use
#@# --- uid=
= class Net::POPError < Net::ProtocolError

POP3 �Ρ�ǧ�ڰʳ��Υ��顼���������Ȥ���ȯ�����ޤ���
�����Ф���� "-ERR" ���������ɤ��б����ޤ���

= class Net::POPBadResponse < Net::POPError

�����Ф���ͽ�����ʤ��쥹�ݥ󥹤����äƤ����Ȥ���ȯ�����ޤ���

= class Net::POPAuthenticationError < Net::ProtoAuthError

POP3 ��ǧ�ڤ˼��Ԥ����Ȥ���ȯ�����ޤ���

#@# memo:
#@# �����Ĥ��Υ᥽�åɤ�account��password���ά�Ǥ���褦�˽񤤤Ƥ��뤬
#@# ������ά������硢ǧ�ڤ�ɬ�����Ԥ���
