require rubygems

Gem �ѥå������˴ޤޤ�Ƥ���ե�����Τ������ɲ�ǽ�ʤ�Τ򸡺����뤿��Υ饤�֥��Ǥ���

= class Gem::GemPathSearcher

Gem �ѥå������˴ޤޤ�Ƥ���ե�����Τ������ɲ�ǽ�ʤ�Τ򸡺����뤿��Υ��饹�Ǥ���

== Public Instance Methods

--- find(path) -> nil | Gem::Specification

Ϳ����줿�ѥ��˥ޥå����� [[c:Gem::Specification]] ���Ĥ����֤��ޤ���

@see [[m:Array#find]]

--- find_all(path) -> [Gem::Specification]

Ϳ����줿�ѥ��˥ޥå����� [[c:Gem::Specification]] �������֤��ޤ���

@see [[m:Array#find_all]]

--- init_gemspecs -> [Gem::Specification]

���󥹥ȡ���Ѥߤ� Gem �� [[c:Gem::Specification]] �Υꥹ�Ȥ��֤��ޤ���

�ꥹ�Ȥϥ���ե��٥åȽ礫�ĥС������ο�������˥����Ȥ���Ƥ��ޤ���

--- lib_dirs_for(spec) -> String

�饤�֥��γ�Ǽ����Ƥ���ǥ��쥯�ȥ�� glob �˻Ȥ���������֤��ޤ���

��:
  '/usr/local/lib/ruby/gems/1.8/gems/foobar-1.0/{lib,ext}'


--- matching_file?(spec, path) -> bool

Ϳ����줿 spec �� path ���ޤޤ�Ƥ����硢�����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

@param spec [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param path õ���оݤΥѥ�����ꤷ�ޤ���

--- matching_files(spec, path) -> [String]

Ϳ����줿 spec �� path ���ޤޤ�Ƥ����硢���� path �Υꥹ�Ȥ��֤��ޤ���

@param spec [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param path õ���оݤΥѥ�����ꤷ�ޤ���


== Singleton Methods

--- new -> Gem::GemPathSearcher

������Ԥ��Τ�ɬ�פʥǡ������������ޤ���


