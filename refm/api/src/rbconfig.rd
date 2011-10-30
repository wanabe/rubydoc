category Development

Ruby ���󥿥ץ꥿�����������ꤵ�줿������Ǽ�����饤�֥��Ǥ���

#@since 1.9.1
= module RbConfig
alias Config

Ruby ���󥿥ץ꥿�����������ꤵ�줿������Ǽ�����饤�֥��Ǥ���
RbConfig �⥸�塼���������ޤ���

#@else
= module Config
#@since 1.8.5
alias RbConfig
#@end

Ruby ���󥿥ץ꥿�����������ꤵ�줿������Ǽ�����饤�֥��Ǥ���
Config �⥸�塼���������ޤ���

#@since 1.8.5
RbConfig �⥸�塼��� Config ��Ʊ����ΤȤ���������ޤ���
#@end

#@end

== Singleton Methods

#@since 1.8.5
--- expand(val, config = CONFIG) -> String

Ϳ����줿�ѥ���Ÿ�����ޤ���

  RbConfig.expand("$(bindir)") # => /home/foobar/all-ruby/ruby19x/bin

@param val Ÿ���������ѿ�̾�� Makefile �˽񤯷����ǻ��ꤷ�ޤ���

@param config �ѿ�Ÿ���˻��Ѥ�������� [[c:Hash]] �ǻ��ꤷ�ޤ���
  
#@since 1.9.1
@see [[m:RbConfig::MAKEFILE_CONFIG]]
#@else
@see [[m:Config::MAKEFILE_CONFIG]]
#@end
#@end
#@since 1.9.2
--- ruby -> String

ruby ���ޥ�ɤΥե�ѥ����֤��ޤ���
#@end

== Constants

--- DESTDIR -> String

make install ����Ȥ��˻��ꤷ�� DESTDIR ���֤��ޤ���
��������ѥ��뤷���Ȥ��ʤɤ��ͤ����åȤ���Ƥ��ޤ���

--- TOPDIR -> String

Ruby �����󥹥ȡ��뤵��Ƥ���ǥ��쥯�ȥ�Ǥ���

  TOPDIR
  ������ bin
  ��   ������ ...
  ��   ������ ruby
  ������ include
  ������ lib
  ������ share
  
--- CONFIG -> Hash

�����ͤ��Ǽ�����ϥå���Ǥ���

��Ǽ����Ƥ������ǤΥ������ͤ� Ruby �ΥС���������Ѥ��Ƥ���ץ�å�
�ե�����ˤ�ä��Ѥ��ޤ���

@see [[man:autoconf(1)]], [[man:make(1)]]

--- MAKEFILE_CONFIG -> Hash

#@since 1.9.1
[[m:RbConfig::CONFIG]]
#@else
[[m:Config::CONFIG]]
#@end
��Ʊ���Ǥ����������ͤϰʲ��Τ褦�ʷ�
��¾���ѿ��ؤλ��Ȥ�ޤߤޤ���
  MAKEFILE_CONFIG["bindir"] = "$(exec_prefix)/bin"
����ϡ�Makefile ���ѿ����Ȥη����� MAKEFILE_CONFIG �ϡ�
Makefile �����κݤ����Ѥ���뤳�Ȥ����ꤷ�Ƥ��ޤ���

  require 'rbconfig'
  
  print <<-END_OF_MAKEFILE
  prefix = #{Config::MAKEFILE_CONFIG['prefix']}
  exec_prefix = #{Config::MAKEFILE_CONFIG['exec_prefix']}
  bindir = #{Config::MAKEFILE_CONFIG['bindir']}
  END_OF_MAKEFILE
  
  => prefix = /usr/local
     exec_prefix = $(prefix)
     bindir = $(exec_prefix)/bin

#@since 1.9.1
[[m:RbConfig.expand]]
#@else
[[m:Config.expand]]
#@end
�ϡ����Τ褦�ʻ��Ȥ��褹��
�᥽�åɤȤ��� rbconfig ���������Ѥ���Ƥ��ޤ���
(CONFIG �ѿ��ϡ�MAKEFILE_CONFIG �����Ƥ���
#@since 1.9.1
[[m:RbConfig.expand]]
#@else
[[m:Config.expand]]
#@end
��Ȥä���������Ƥ��ޤ�)

  require 'rbconfig'
  p Config.expand(Config::MAKEFILE_CONFIG["bindir"])
  # => "/usr/local/bin"
