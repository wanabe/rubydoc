require rubygems/command
require rubygems/local_remote_options
require rubygems/version_option
require rubygems/source_info_cache

���󥹥ȡ��뤵��Ƥ��� Gem �ѥå������ΰ�¸�ط���ɽ�����뤿��Υ饤�֥��Ǥ���

  Usage: gem dependency GEMNAME [options]
    Options:
      -v, --version VERSION            ���ꤷ���С������ΰ�¸�ط���ɽ�����ޤ�
          --platform PLATFORM          ���ꤷ���ץ�åȥե�����ΰ�¸�ط���ɽ�����ޤ�
      -R, --[no-]reverse-dependencies  ���� Gem ����Ѥ��Ƥ��� Gem ��ɽ�����ޤ�
      -p, --pipe                       Pipe Format (name --version ver)
#@include(local_remote_options)
#@include(common_options)
    Arguments:
      GEMNAME       ��¸�ط���ɽ������ Gem ��̾������ꤷ�ޤ�
    Summary:
      ���󥹥ȡ��뤵��Ƥ��� Gem �ΰ�¸�ط���ɽ�����ޤ�
    Defaults:
      --local --version '>= 0' --no-reverse-dependencies


= class Gem::Commands::DependencyCommand < Gem::Command
include Gem::LocalRemoteOptions
include Gem::VersionOption

���󥹥ȡ��뤵��Ƥ��� Gem �ѥå������ΰ�¸�ط���ɽ�����뤿��Υ��饹�Ǥ���


== Public Instance Methods

--- usage -> String

������ˡ��ɽ��ʸ������֤��ޤ���

--- arguments -> String

������������ɽ��ʸ������֤��ޤ���

--- execute -> ()

���ޥ�ɤ�¹Ԥ��ޤ���

--- find_gems(name, source_index) -> Hash

Ϳ����줿 Gem ��̾���򥤥�ǥå������鸡�����ޤ���

@param name Gem ��̾������ꤷ�ޤ���

@param source_index [[c:Gem::SourceIndex]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@see [[m:Gem::SourceIndex#search]]

--- find_reverse_dependencies(spec) -> Array

Ϳ����줿 Gem ���ڥå��˰�¸���� Gem �Υꥹ�Ȥ��֤��ޤ���

@param spec [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

--- print_dependencies(spec, level = 0) -> String

��¸�ط���ɽ��ʸ������֤��ޤ���

@param spec [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param level ��¸�ط��ο�������ꤷ�ޤ���
