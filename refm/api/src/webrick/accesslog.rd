WEBrick::HTTPServer �Υ����������η�����������뤿��������ǻȤ���饤�֥��Ǥ���

= module WEBrick::AccessLog

WEBrick::HTTPServer �Υ����������η�����������뤿��������ǻȤ���⥸�塼��Ǥ���

�����������η����� Apache �� mod_log_config �η����˽�򤷤ޤ�����HTTP ���ơ����������ɤ�
���ꤹ�뤳�ȤϽ���ޤ��󡣺Ǹ�Υ��ơ�������ɽ�� %>s �� %s ��Ʊ���褦�˲�ᤵ��ޤ���

 * [[url:http://httpd.apache.org/docs/mod/mod_log_config.html#formats]]

 "%h %l %u %t \"%r\" %s %b"
 "%{User-Agent}i"

����Ǥ�������ϰʲ��ΤȤ���Ǥ���

: %a
  ��⡼�� IP ���ɥ쥹
: %b
  �쥹�ݥ󥹤ΥХ��ȿ���HTTP �إå��Ͻ�����CLF �񼰡�
  ���ʤ����1 �Х��Ȥ������ʤ��ä��Ȥ��� 0 �ǤϤʤ��� '-' �ˤʤ�
: %{FOOBAR}e
  �Ķ��ѿ� FOOBAR ������
: %f
  �ե�����̾
: %h
  ��⡼�ȥۥ���
: %{Foobar}i
  �����Ф�����줿�ꥯ�����Ȥ� Foobar:  �إå�������
: %l
  "-"
: %m
  �ꥯ�����ȥ᥽�å�
: %{Foobar}n
  req.attributes
: %{Foobar}o
  ������ Foobar: �إå�������
: %p
  �ꥯ�����Ȥ򰷤äƤ��륵���Ф������ʥݡ���
: %q
  ������ʸ����
: %r
  �ꥯ�����Ȥκǽ�ι�
: %s
  ���ơ�������"%>s" �ϥ��ݡ��Ȥ��ޤ���
: %t
  �ꥯ�����Ȥ���դ������ CLF �λ���ν� (ɸ��αѸ�ν�)
: %{format}t
  format ��Ϳ����줿�񼰤ˤ����format �� [[m:Time#strftime]] �� �񼰤Ǥ���ɬ�פ����롣
: %T
  �ꥯ�����Ȥ򰷤��Τˤ����ä����֡���ñ��
: %u
  ��⡼�ȥ桼��
: %U
  �ꥯ�����Ȥ��줿 URL �ѥ���������ʸ����ϴޤޤʤ�
: %v
  �ꥯ�����Ȥ򰷤äƤ��륵���Ф������� ServerName

== Constants

--- CLF_TIME_FORMAT -> String

Apache �Υ�����������Ʊ������η�����ɽ���ʲ���ʸ����Ǥ���

  "[%d/%b/%Y:%H:%M:%S %Z]"

--- COMMON_LOG_FORMAT -> String
--- CLF -> String

Apache �Υ����������ǰ���Ū�˻Ȥ��������ɽ���ʲ���ʸ����Ǥ���

  "%h %l %u %t \"%r\" %s %b"

--- REFERER_LOG_FORMAT -> String

Apache �Υ����������ǰ���Ū�˻Ȥ����ե���η�����ɽ���ʲ���ʸ����Ǥ���

  "%{Referer}i -> %U"

--- AGENT_LOG_FORMAT -> String

Apache �Υ����������ǰ���Ū�˻Ȥ��� User-Agent �η�����ɽ���ʲ���ʸ����Ǥ���

  "%{User-Agent}i"

--- COMBINED_LOG_FORMAT -> String

Apache �Υ����������ǰ���Ū�˻Ȥ��������ɽ���ʲ���ʸ����Ǥ���

  "%h %l %u %t \"%r\" %s %b \"%{Referer}i\" \"%{User-agent}i\""

== Module Functions

--- escape(data) -> String

Ϳ����줿ʸ���󤬱�������Ƥ����硢����ʸ����̵�������ޤ���

@param data ���������פ���ʸ�������ꤷ�ޤ���

--- format(format_string, params) -> String

Ϳ����줿�ե����ޥå�ʸ����ȥѥ�᡼������Ѥ��ƥ����������ޤ���

@param format_string �ե����ޥå�ʸ�������ꤷ�ޤ���

@param params �ѥ�᡼������ꤷ�ޤ���

--- setup_params(config, request, response) -> Hash

Ϳ����줿��������Ѥ��ƥ����Ϥ˻��Ѥ���ѥ�᡼������������֤��ޤ���

@param config �ϥå������ꤷ�ޤ���

@param request [[c:WEBrick::HTTPRequest]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param response [[c:WEBrick::HTTPResponse]] �Υ��󥹥��󥹤���ꤷ�ޤ���

= class WEBrick::AccessLog::AccessLogError < StandardError

���ꤵ�줿�����������η������������ʤ�����ȯ�����ޤ���
