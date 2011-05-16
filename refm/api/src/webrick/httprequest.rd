require webrick/httpversion
require webrick/httpstatus
require webrick/httputils
require webrick/cookie

HTTP �ꥯ�����ȤΤ���Υ��饹���󶡤���饤�֥��Ǥ���

= class WEBrick::HTTPRequest < Object

HTTP �ꥯ�����ȤΤ���Υ��饹�Ǥ���

�̾� WEBrick::HTTPRequest ���֥������Ȥϥ����֥�åȤ� service �᥽�åɤ� do_XXX �᥽�åɤ�
�����Ȥ���Ϳ�������ΤǤ��ꡢ�桼��������Ū����������ɬ�פϤ���ޤ���

== Class Methods

--- new(config) -> WEBrick::HTTPRequest

WEBrick::HTTPRequest �����������֤��ޤ���

@param config ������ݻ������ϥå������ꤷ�ޤ���

== Instance Methods

--- [](header_name)    -> String

�ꥯ�����ȤΥإå��γ����������Ƥ�ʸ������֤��ޤ���

@param header_name �إå���̾��ʸ����ǻ��ꤷ�ޤ�����ʸ���Ⱦ�ʸ������̤��ޤ���

#@since 1.8.2
--- accept    -> [String]

Accept �إå������Ƥ��ǥ��������פ�ɽ��ʸ�����������֤��ޤ���
������ʼ�����(qvalue)�ǥ����Ȥ���Ƥ��ޤ���

--- accept_charset    -> [String]

Accept-Charset  �إå������Ƥ�ʸ�����åȤ�ɽ��ʸ�����������֤��ޤ���
������ʼ�����(qvalue)�ǥ����Ȥ���Ƥ��ޤ���

--- accept_encoding    -> [String]

Accept-Encoding  �إå������Ƥ򥳡��ǥ��󥰤�ɽ��ʸ�����������֤��ޤ���
������ʼ�����(qvalue)�ǥ����Ȥ���Ƥ��ޤ���

--- accept_language    -> [String]

Accept-Language  �إå������Ƥ��������ɽ��ʸ�����������֤��ޤ���
������ʼ�����(qvalue)�ǥ����Ȥ���Ƥ��ޤ���

#@end

--- addr    -> Array

���饤����Ȥ���³����Ƥ��륽���åȤ� [[m:IPSocket#addr]] ���֤��ޤ���

--- attributes    -> Hash
#@todo ???

--- body                 -> String | nil
--- body {|chunk| ... }  -> String | nil

���饤����Ȥ��饨��ƥ��ƥ��ܥǥ����ɤ߹����֤��ޤ���
�ꥯ�����Ȥ˥���ƥ��ƥ��ܥǥ����ޤޤ�ʤ����� nil ���֤��ޤ���

�ꥯ�����Ȥ� chunked �����Ǥ��äƤ��֤��ͤϥǥ����ɤ�����֤���ޤ���
2���ܤθƤӽФ��ʹߤϺǽ���ɤ߹��������ƥ��ƥ��ܥǥ����֤��ޤ���
�֥�å�����ꤵ�줿��硢���饤����Ȥ���ǡ������ɤ߹��ि�Ӥˤ��Υǡ���(ʸ����)
������Ȥ��ƥ֥�å���¹Ԥ��ޤ����ꥯ�����Ȥ� chunked �����Ǥ��äƤ�����ϥǥ����ɤ���Ƥ��ޤ���

#@since 1.8.2
--- content_length    -> Integer

�ꥯ�����Ȥ� Content-Length �إå����ͤ��������֤��ޤ����ꥯ�����Ȥ� Content-Length �إå�
���ޤޤ�Ƥ��ʤ����� 0 ���֤��ޤ���

--- content_type    -> String | nil

�ꥯ�����Ȥ� Content-Type �إå���ʸ������֤���

#@end

#@since 1.9.3
--- continue
#@todo
Generate HTTP/1.1 100 continue response if the client expects it,
otherwise does nothing.
#@end

--- cookies    -> [WEBrick::Cookie]

�ꥯ�����Ȥ˴ޤޤ�� Cookie �إå����ͤ� [[c:WEBrick::Cookie]] ������Ȥ����֤��ޤ���

--- each {|key, val| ... }

�ꥯ�����Ȥγƥإå�̾�� key�����Ƥ� val �Ȥ��ƥ֥�å���ɾ�����ޤ���

--- fixup    -> ()

�ꥯ�����ȤλĤ�Υ���ƥ��ƥ��ܥǥ����ɤ߹��ߤޤ���

--- header    -> Hash

�إå�̾�򥭡������Ƥ򤽤��ͤȤ���ϥå�����֤��ޤ����������ͤ�ʸ����Ǥ���

--- host    -> String

�ꥯ������ URI �� host ��ʸ������֤���

--- http_version     -> WEBrick::HTTPVersion

�ꥯ�����Ȥ� HTTP �С�������ɽ�� [[c:WEBrick::HTTPVersion]] ���֥������Ȥ��֤��ޤ���

--- keep_alive     -> bool
--- keep_alive?    -> bool

�ꥯ�����Ȥ� Keep-Alive ���׵ᤷ�Ƥ��뤫�򿿵����֤��ޤ���
http_version �� 1.1 ��꾮�������� Keep-Alive ���׵ᤷ�Ƥ��Ƥ�̵�뤷��
false �Ȥʤ�ޤ���

--- meta_vars    -> Hash
#@todo
This method provides the metavariables defined by the revision 3
of ``The WWW Common Gateway Interface Version 1.1''.

@see [[url:http://Web.Golux.Com/coar/cgi/]]

--- parse(socket = nil)    -> ()

���ꤵ�줿 socket ���饯�饤����ȤΥꥯ�����Ȥ��ɤ߹��ߡ�
���ȤΥ��������ʤɤ�Ŭ�ڤ����ꤷ�ޤ���

@param socket ���饤����Ȥ���³���줿 IO ���֥������Ȥ���ꤷ�ޤ���

--- path    -> String

�ꥯ������ URI �Υѥ���ɽ��ʸ������֤��ޤ���

--- path_info          -> String

�ꥯ������ URI �Υѥ���ʸ������֤��ޤ����ǥե���Ȥ� path ��Ʊ���Ǥ���

--- path_info=(value)

�ꥯ������ URI �Υѥ��򥻥åȤ��ޤ���

@param value �ꥯ������ URI �Υѥ�����ꤷ�ޤ���

--- peeraddr    -> Array

���饤����Ȥ���³����Ƥ��륽���åȤ� [[m:IPSocket#peeraddr]] ���֤��ޤ���

--- port    -> String

�����ФΥݡ��Ȥ�ʸ������֤��ޤ���

--- query    -> Hash

�ꥯ�����ȤΥ����꡼���뤤�ϥ��饤����Ȥ��ե���������Ϥ����ͤ�ɽ���ϥå�����֤��ޤ���

�ϥå���Υ������ͤ� unescape ����Ƥ��ޤ��������� multipart/form-data �ʥե�����ǡ����ξ��ˤ�
�桼���� content-transfer-encoding �إå��򸫤�Ŭ�ڤ˽�������ɬ�פ�����ޤ���

�ϥå�����ͤ����Τˤ�ʸ����ǤϤʤ� String ���饹�Υ��֥��饹�Ǥ��� [[c:WEBrick::HTTPUtils::FormData]]
���饹�Υ��󥹥��󥹤Ǥ���

multipart/form-data �ʥե�����ǡ����Ǥ��äƤ⥵���������¤ʤ����̾�Υե�����ǡ�����
Ʊ���褦�˰����뤳�Ȥ���դ��Ƥ������������饤����Ȥ�������Ϥˤ�äƤϵ����ʸ����
��������Ƥ��ޤ��ޤ���

��:

  h = req.query
  p h['q']                       #=>  "ruby rails session"  
  p h['upfile']['content-type']  #=>  "plain/text"
  p h['upfile'].filename         #=>  "my_file.txt"
  p h['upfile']                  #=>  "hoge hoge hoge"

--- query_string          -> String

�ꥯ������ URI �Υ����꡼��ʸ�����ɽ�����������Ǥ���
�ǥե���Ȥ� request_uri.query �Ǥ���

#@since 1.8.4
--- query_string=(value)
#@end

�ꥯ������ URI �Υ����꡼��ʸ�����ɽ�����������Ǥ���
�ǥե���Ȥ� request_uri.query �Ǥ���

@param value �����꡼��ɽ��ʸ�������ꤷ�ޤ���

--- raw_header -> String
���Υإå����֤��ޤ���

--- request_line -> String

���饤����ȤΥꥯ�����Ȥκǽ�ι�(GET / HTTP/1.1)��ʸ������֤��ޤ���

--- request_method     -> String

���饤����ȤΥꥯ�����Ȥ� HTTP �᥽�å�(GET, POST,...)��ʸ������֤��ޤ���

--- request_time    -> Time

�ꥯ�����Ȥ��줿����� [[c:Time]] ���֥������Ȥ��֤��ޤ���

--- request_uri -> URI

�ꥯ������ URI ��ɽ�� [[c:URI]] ���֥������Ȥ��֤��ޤ���

--- script_name          -> String

CGI �ǤδĶ��ѿ� SCRIPT_NAME ��ʸ�����ɽ�����������Ǥ���

--- script_name=(value)

CGI �ǤδĶ��ѿ� SCRIPT_NAME ��ʸ�����ɽ�����������Ǥ���

@param value SCRIPT_NAME ��ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.1
--- server_name -> String

�����Ф�̾�����֤��ޤ���

--- ssl? -> bool

�ꥯ������ URI �Υ������ब https �Ǥ���п����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

#@end

--- to_s    -> String

�ꥯ�����ȤΥإå��ȥܥǥ���ޤȤ��ʸ����Ȥ����֤��ޤ���

--- unparsed_uri    -> String

�ꥯ�����Ȥ� URI ��ʸ������֤��ޤ���

--- user          -> String

REMOTE_USER ��ʸ����Ȥ����֤��ޤ���

--- user=(value)

REMOTE_USER ��ʸ�����ɽ������Τ��ͤ򥻥åȤ��ޤ���

@param value �桼��̾��ʸ����ǻ��ꤷ�ޤ���

#@#== Constants

#@#--- BODY_CONTAINABLE_METHODS
#@#todo

#@#--- BUFSIZE
#@#todo
