require rubygems/command
require rubygems/gem_path_searcher

���ꤵ�줿 Gem �ѥå������˴ޤޤ��饤�֥��Υѥ��򸫤Ĥ��뤿��Υ饤�֥��Ǥ���

= class Gem::Commands::WhichCommand < Gem::Command

���ꤵ�줿 Gem �ѥå������˴ޤޤ��饤�֥��Υѥ��򸫤Ĥ��뤿��Υ��饹�Ǥ���

  Usage: gem which FILE [...] [options]
    Options:
      -a, --[no-]all                   show all matching files
      -g, --[no-]gems-first            search gems before non-gems
#@include(common_options)
    Arguments:
      FILE          Gem �ѥå�����̾����ꤷ�ޤ�
    Summary:
      ���ꤵ�줿 Gem �ѥå������Υ饤�֥��Τ������ɽ�����ޤ�
    Defaults:
      --no-gems-first --no-all


== Public Instance Methods
--- find_paths(package_name, dirs) -> Array

dirs ���� package_name �Ȥ���̾������ĥե������õ�����ޤ���

�ʲ��γ�ĥ�Ҥ���ĥե����뤬�оݤǤ���

  %w[.rb .rbw .so .dll .bundle]

@param package_name �ե������̾������ꤷ�ޤ���

@param dirs õ������ǥ��쥯�ȥ��ʸ���������ǻ��ꤷ�ޤ���

--- gem_paths(spec) -> Array

Ϳ����줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤��餽�� Gem ��
require ����ե�����Τ���ǥ��쥯�ȥ��ޤȤ���֤��ޤ���

@param spec [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

== Constants

--- EXT -> [String]

��ĥ�Ҥ�ɽ������Ǥ���

  %w[.rb .rbw .so .dll .bundle]
