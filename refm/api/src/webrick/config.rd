require webrick/httpversion
require webrick/httputils
require webrick/utils
require webrick/log

= module WEBrick::Config

�����ʥ��饹������Υǥե�����ͤ��󶡤���⥸�塼��Ǥ���

== Constants

--- General -> Hash

[[c:WEBrick::GenericServer]] ������Υǥե�����ͤ��ݻ������ϥå���Ǥ���

  WEBrick::Config::General = {
    :ServerName     => Utils.getservername,
    :BindAddress    => nil,   # "0.0.0.0" or "::" or nil
    :Port           => nil,   # users MUST specify this!!
    :MaxClients     => 100,   # maximum number of the concurrent connections
    :ServerType     => nil,   # default: WEBrick::SimpleServer
    :Logger         => nil,   # default: WEBrick::Log.new
    :ServerSoftware => "WEBrick/#{WEBrick::VERSION} " +
                       "(Ruby/#{RUBY_VERSION}/#{RUBY_RELEASE_DATE})",
    :TempDir        => ENV['TMPDIR']||ENV['TMP']||ENV['TEMP']||'/tmp',
    :DoNotListen    => false,
    :StartCallback  => nil,
    :StopCallback   => nil,
    :AcceptCallback => nil,
    :DoNotReverseLookup => nil,
  }

--- HTTP -> Hash

[[c:WEBrick::HTTPServer]] ������Υǥե�����ͤ��ݻ������ϥå���Ǥ���

  WEBrick::Config::HTTP = {
    :ServerName     => Utils.getservername,
    :BindAddress    => nil,   # "0.0.0.0" or "::" or nil
    :Port           => 80,
    :MaxClients     => 100,   # maximum number of the concurrent connections
    :ServerType     => nil,   # default: WEBrick::SimpleServer
    :Logger         => nil,   # default: WEBrick::Log.new
    :ServerSoftware => "WEBrick/#{WEBrick::VERSION} " +
                       "(Ruby/#{RUBY_VERSION}/#{RUBY_RELEASE_DATE})",
    :TempDir        => ENV['TMPDIR']||ENV['TMP']||ENV['TEMP']||'/tmp',
    :DoNotListen    => false,
    :StartCallback  => nil,
    :StopCallback   => nil,
    :AcceptCallback => nil,
    :DoNotReverseLookup => nil,

    :RequestTimeout => 30,
    :HTTPVersion    => HTTPVersion.new("1.1"),
    :AccessLog      => nil,
    :MimeTypes      => HTTPUtils::DefaultMimeTypes,
    :DirectoryIndex => ["index.html","index.htm","index.cgi","index.rhtml"],
    :DocumentRoot   => nil,
    :DocumentRootOptions => { :FancyIndexing => true },
    :RequestCallback => nil,
    :ServerAlias    => nil,

    :CGIInterpreter => nil,
    :CGIPathEnv     => nil,

    :Escape8bitURI  => false
  }

--- FileHandler -> Hash

[[c:WEBrick::HTTPServlet::FileHandler]] ������Υǥե�����ͤ��ݻ������ϥå���Ǥ���

    WEBrick::Config::FileHandler = {
      :NondisclosureName => [".ht*", "*~"],
      :FancyIndexing     => false,
      :HandlerTable      => {},
      :HandlerCallback   => nil,
      :DirectoryCallback => nil,
      :FileCallback      => nil,
      :UserDir           => nil,  # e.g. "public_html"
      :AcceptableLanguages => []  # ["en", "ja", ... ]
    }

: :AcceptableLanguages

����ƥ�Ĥθ�������򤹤륪�ץ���������ͤ�ʸ���������

���饤����Ȥ���Υꥯ�����Ȥ˴ޤޤ��Accept-Language�����Ƥ�fr�ǡ�
����:AcceptableLanguages�ˤ�['ja', 'en']�����ꤵ��Ƥ����硢
WEBrick::HTTPServlet::FileHandler�ϰʲ��ν��֤ǥե������õ����
  (1) index.html
  (2) index.html.fr
  (3) index.html.ja
  (4) index.html.en

: :FancyIndexing
���饤����Ȥ��ǥ��쥯�ȥ��ꥯ�����Ȥ�����ɽ������ե����뤬̵�����ε�ư����롣
�ͤϿ����͡�

true�ʤ�С�����˥ե����������ɽ�����롣
false�ʤ�Х��顼(403 Forbidden)�Ȥʤ롣

: :DirectoryCallback
: :FileCallback
: :HandlerCallback
: :HandlerTable
: :NondisclosureName
����ǥå�����ɽ���������ʤ��ե�����λ��ꡣ�ͤ�ʸ���������
ɽ���������ʤ��ե������磻��ɥ����ɤǻ��ꤹ�롣

: :UserDir
�桼����Υɥ�����ȥ롼�ȤΥǥ��쥯�ȥ�̾���ͤ�ʸ����

�桼��foo�Υۡ���ǥ��쥯�ȥ꤬/home/foo�ǡ�:UserDir��public_html�����ꤷ����硢
���饤����Ȥ���/~foo/index.html���ꥯ�����Ȥ�����/home/foo/public_html/index.html�����Ƥ�ɽ������롣

���������ͭ���ˤ���ˤϰʲ��ξ�郎ɬ�ס�
  * [[lib:etc]]�饤�֥�꤬�Ȥ�����֤Ǥ��롣
  * �Ķ��ѿ� SCRIPT_NAME ����(��ʸ����)�Ǥ��롣

--- BasicAuth -> Hash

[[c:WEBrick::HTTPAuth::BasicAuth]] ������Υǥե�����ͤ��ݻ������ϥå���Ǥ���

    WEBrick::Config::BasicAuth = {
      :AutoReloadUserDB     => true,
    }

--- DigestAuth -> Hash

[[c:WEBrick::HTTPAuth::DigestAuth]] ������Υǥե�����ͤ��ݻ������ϥå���Ǥ���

    WEBrick::Config::DigestAuth = {
      :Algorithm            => 'MD5-sess', # or 'MD5'
      :Domain               => nil,        # an array includes domain names.
      :Qop                  => [ 'auth' ], # 'auth' or 'auth-int' or both.
      :UseOpaque            => true,
      :UseNextNonce         => false,
      :CheckNc              => false,
      :UseAuthenticationInfoHeader => true,
      :AutoReloadUserDB     => true,
      :NonceExpirePeriod    => 30*60,
      :NonceExpireDelta     => 60,
      :InternetExplorerHack => true,
      :OperaHack            => true,
    }

--- LIBDIR -> String

���Υե�����Τ���ǥ��쥯�ȥ�Υѥ����֤��ޤ���

