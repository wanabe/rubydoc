require rubygems
require rubygems/doc_manager

Gem �ѥå����������ۤ����� Gem �ѥå�������Ʊ������Ƥ���ɥ�����Ȥ򻲾Ȥ��뤿���
�ʰץ����֥����Ф�ư��������Υ饤�֥��Ǥ���

[[lib:rubygems/commands/server_command]] ����Ѥ��Ƶ�ư���륦���֥����Ф����ΤǤ���

���Υ饤�֥�����Ѥ��������֥����Фϰʲ��������ư��ޤ���

: "/"
  ���󥹥ȡ��뤵��Ƥ��� Gem �ѥå������ΰ�����ɽ�����ޤ���
: "/specs.#{Gem.marshal_version}.gz"
  ���󥹥ȡ��뤵��Ƥ������С������ξ��� (�ѥå�����̾���С�����󡢥ץ�åȥե�����) ���֤��ޤ���
: "/latest_specs.#{Gem.marshal_version}.gz"
  ���󥹥ȡ��뤵��Ƥ���ǿ��С������ξ��� (�ѥå�����̾���С�����󡢥ץ�åȥե�����) ���֤��ޤ���
: "/quick/index", "/quick/index.rz", "/quick/latest_index", "/quick/latest_index.rz"
  ���󥹥ȡ��뤵��Ƥ��� Gem �ѥå������ΰ������֤��ޤ���
: "/gems/"
  ��������ɲ�ǽ�� Gem �ѥå������ΰ�����ɽ�����ޤ���

�ʲ��Υ���ǥå����ϥ쥬�����ʤ�ΤǤ���

: "/Marshal.#{Gem.marshal_version}"
  ���󥹥ȡ��뤵��Ƥ��� Gem �ѥå������� [[c:Gem::SourceIndex]] �� [[c:Marshal]] ��
  �����ǥ���פ�����Τ��֤��ޤ���
: "/yaml"
  ���󥹥ȡ��뤵��Ƥ��� Gem �ѥå������� [[c:Gem::SourceIndex]] �� YAML ������
  ����פ����᥿�ǡ������֤��ޤ������ε�ǽ����侩�Ǥ���

= class Gem::Server
include Gem::UserInteraction

Gem �ѥå����������ۤ����� Gem �ѥå�������Ʊ������Ƥ���ɥ�����Ȥ򻲾Ȥ��뤿���
�ʰץ����֥����Ф�ư��������Υ��饹�Ǥ���

== Instance Methods

--- Marshal(request, response) -> ()

�᥽�å�̾���б����� URI ���Ф���ꥯ�����Ȥ��������᥽�åɤǤ���

@param request  [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

@param response [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

--- latest_specs(request, response) -> ()

�᥽�å�̾���б����� URI ���Ф���ꥯ�����Ȥ��������᥽�åɤǤ���

@param request  [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

@param response [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

--- quick(request, response) -> ()

�᥽�å�̾���б����� URI ���Ф���ꥯ�����Ȥ��������᥽�åɤǤ���

@param request  [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

@param response [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

--- root(request, response) -> ()

�᥽�å�̾���б����� URI ���Ф���ꥯ�����Ȥ��������᥽�åɤǤ���

@param request  [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

@param response [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

--- run -> ()

�����Ф�¹Ԥ��ޤ���

--- specs(request, response) -> ()

�᥽�å�̾���б����� URI ���Ф���ꥯ�����Ȥ��������᥽�åɤǤ���

@param request  [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

@param response [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

--- yaml(request, response) -> ()

�᥽�å�̾���б����� URI ���Ф���ꥯ�����Ȥ��������᥽�åɤǤ���

@param request  [[c:WEBrick::HTTPRequest]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

@param response [[c:WEBrick::HTTPResponse]] ���֥������Ȥ���ưŪ�˻��ꤵ��ޤ���

== Singleton Methods

#@since 1.9.2
--- new(gem_dirs, port, daemon, addresses = nil) -> Gem::Server
#@else
--- new(gem_dir, port, daemon) -> Gem::Server
#@end

�����С����������ޤ���

#@since 1.9.2
@param gem_dirs Gem ���Ǽ���Ƥ���ǥ��쥯�ȥ����ꤷ�ޤ���
#@end
@param gem_dir Gem ���Ǽ���Ƥ���ǥ��쥯�ȥ����ꤷ�ޤ���

@param port ��å��󤹤�ݡ��Ȥ���ꤷ�ޤ���

@param daemon ������ꤹ��ȥǡ����Ȥ��Ƶ�ư���ޤ���

#@since 1.9.2
@param addresses 
#@end

--- run(options) -> Gem::Server

Ϳ����줿���ץ�������Ѥ��ƥ����Ф�ư���ޤ���

@param options ���ץ�����ɽ���ϥå������ꤷ�ޤ����ޤޤ�륭���� :gemdir, :port, :daemon �Ǥ���

@see [[m:Gem::Server.new]]


== Constants

--- DOC_TEMPLATE -> String

�ɥ�����ȤΥƥ�ץ졼�Ȥ�ɽ��ʸ����Ǥ���

--- RDOC_CSS -> String

RDoc �Τ���� CSS ��ɽ��ʸ����Ǥ���
