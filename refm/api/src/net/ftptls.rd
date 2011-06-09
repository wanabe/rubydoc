net/ftp �� TLS ��ĥ���������饤�֥��Ǥ���

[RFC:4217] ���������Ƥ��� FTP over SSL/TLS (FTPS) ��������Ƥ��ޤ���
����ȥ��륳�ͥ������� SSL/TLS �ǰŹ沽���ޤ���

RFC�Ǥϥǡ������ͥ������� TLS �ǰŹ沽���뵡ǽ���������Ƥ��ޤ�����
���Υ饤�֥��Ǥϼ�������Ƥ��ޤ���

�ޤ���SSL/TLS ��³�γƥѥ�᡼�����ѹ�������ˡ�Ϥ���ޤ���

�嵭������ʤɤ�ꡢ���Υ饤�֥��� 1.9.1 �ʹ��ѻߤ���ޤ���

= class Net::FTPTLS < Net::FTP
FTP over SSL/TLS ������������饹�Ǥ���

[[m:Net::FTP]] ��Ѿ����Ƥ��뤿�ᡢFTP ���饹�Υ᥽�åɤ����ѤǤ��ޤ���

== Instance Methods

#@since 1.8.6
--- connect(host, port=Net::FTP::FTP_PORT) -> ()
host �ǻ��ꤵ�줿�ۥ��Ȥ���³���ޤ���

[[m:Net::FTP#connect]] �Ȥϡ�ȯ�������㳰��ޤ�ۤ�Ʊ���Ǥ���

@param host ��³����ۥ���̾�Ǥ���
@param port ��³����ݡ����ֹ�Ǥ���
@see [[m:Net::FTP#connect]]

#@end

--- login(user = "anonymous", passwd = nil, acct = nil) -> ()
�ۥ��ȤؤΥ����������Ԥʤ��ޤ���

����������� SSL/TLS �ǰŹ沽�̿��򳫻Ϥ��ޤ�������¾��
[[m:Net::FTP#login]] ��Ʊ�ͤǤ���

@param user ������˻Ȥ��桼��̾����ꤷ�ޤ���
@param passwd ������˻Ȥ��ѥ���ɤ���ꤷ�ޤ���
@param acct ������������ ACCT ���ޥ�ɤΥѥ�᡼������ꤷ�ޤ���
@see [[m:Net::FTP#login]]



