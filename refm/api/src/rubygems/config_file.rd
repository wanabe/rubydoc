require rubygems

����ե�����˽񤫤�Ƥ��� gem ���ޥ�ɤΥ��ץ�����
���֥������Ȥ���¸���뤿��Υ饤�֥��Ǥ���

= class Gem::ConfigFile

����ե�����˽񤫤�Ƥ��� gem ���ޥ�ɤΥ��ץ�����
���֥������Ȥ���¸���뤿��Υ��饹�Ǥ���

���Υ��饹�Υ��󥹥��󥹤ϥϥå���Τ褦�˿����񤤤ޤ���

== Public Instance Methods

--- [](key) -> object

������Ϳ����줿�������б��������������֤��ޤ���

@param key ��������������뤿��˻��Ѥ��륭������ꤷ�ޤ���

--- []=(key, value)

������Ϳ����줿�������б������������򼫿Ȥ���¸���ޤ���

@param key �������򥻥åȤ��뤿��˻��Ѥ��륭������ꤷ�ޤ���

@param value ���������ͤ���ꤷ�ޤ���

--- args -> Array

����ե����륪�֥������Ȥ�Ϳ����줿���ޥ�ɥ饤������Υꥹ�Ȥ��֤��ޤ���

--- backtrace -> bool

���顼ȯ�����˥Хå��ȥ졼������Ϥ��뤫�ɤ������֤��ޤ���

���ξ��ϥХå��ȥ졼������Ϥ��ޤ��������Ǥʤ����ϥХå��ȥ졼������Ϥ��ޤ���

--- backtrace=(backtrace)

���顼ȯ�����˥Хå��ȥ졼������Ϥ��뤫�ɤ������ꤷ�ޤ���

@param backtrace ������ꤹ��ȥ��顼ȯ�����˥Хå��ȥ졼������Ϥ���褦�ˤʤ�ޤ���

--- benchmark -> bool

���ξ��ϥ٥���ޡ�����¹Ԥ��ޤ���
�����Ǥʤ����ϡ��٥���ޡ�����¹Ԥ��ޤ���

--- benchmark=(benchmark)

�٥���ޡ�����¹Ԥ��뤫�ɤ������ꤷ�ޤ���

@param benchmark ������ꤹ��ȥ٥���ޡ�����¹Ԥ���褦�ˤʤ�ޤ���

--- bulk_threshold -> Integer

����������ɤ����ͤ��֤��ޤ���
���󥹥ȡ��뤷�Ƥ��ʤ� Gem �����ο��ͤ�ۤ���Ȥ�����������ɤ�Ԥ��ޤ���

--- bulk_threshold=(bulk_threshold)

����������ɤ����ͤ����ꤷ�ޤ���

@param bulk_threshold ���ͤ���ꤷ�ޤ���

--- config_file_name -> String

����ե������̾�����֤��ޤ���

--- each{|key, value| ... } -> Hash

����ե�����γƹ��ܤΥ������ͤ�֥�å������Ȥ���Ϳ����줿�֥�å���ɾ�����ޤ���

--- handle_arguments(arg_list)

���ޥ�ɤ��Ϥ��줿������������ޤ���

@param arg_list ���ޥ�ɤ��Ϥ��줿�������������ꤷ�ޤ���

--- load_file(file_name) -> object

Ϳ����줿�ե�����̾�Υե����뤬¸�ߤ���� YAML �ե�����Ȥ��ƥ��ɤ��ޤ���

@param file_name YAML �����ǵ��Ҥ��줿����ե�����̾����ꤷ�ޤ���

--- path -> String

Gem ��õ������ѥ����֤��ޤ���

--- path=(path)

Gem ��õ������ѥ��򥻥åȤ��ޤ���

--- really_verbose -> bool

���Υ᥽�åɤ��֤��ͤ����ξ��� verbose �⡼�ɤ���¿���ξ����ɽ�����ޤ���

--- update_sources -> bool

���ξ��� [[c:Gem::SourceInfoCache]] ����󹹿����ޤ���
�����Ǥʤ����ϡ�����å��夬����Х���å���ξ������Ѥ��ޤ���

--- update_sources=(update_sources)

[[c:Gem::SourceInfoCache]] ����󹹿����뤫�ɤ������ꤷ�ޤ���

@param update_sources ������ꤹ������ [[c:Gem::SourceInfoCache]] �򹹿����ޤ���

--- verbose -> bool | Symbol

���ν��ϥ�٥���֤��ޤ���

@see [[m:Gem::ConfigFile#verbose=]]

--- verbose=(verbose_level)

���ν��ϥ�٥�򥻥åȤ��ޤ���

�ʲ��ν��ϥ�٥�����ꤹ�뤳�Ȥ��Ǥ��ޤ���

: false
  ������Ϥ��ޤ���
: true
  �̾�Υ�����Ϥ��ޤ���
: :loud
  ���¿���Υ�����Ϥ��ޤ���

@param verbose_level �����ͤޤ��ϥ���ܥ����ꤷ�ޤ���

--- write
#@# -> discard

���Ȥ��ɤ߹��������ե������񤭴����ޤ���

== Protected Instance Methods

--- hash -> Hash

����ե�����γƹ��ܤΥ������ͤ����ǤȤ��ƻ��ĥϥå���Ǥ���

== Constants

--- DEFAULT_BACKTRACE -> false

�Хå��ȥ졼����ɽ������뤫�ɤ����Υǥե�����ͤǤ���

--- DEFAULT_BENCHMARK -> false

�٥���ޡ�����¹Ԥ��뤫�ɤ����Υǥե�����ͤǤ���

--- DEFAULT_BULK_THRESHOLD -> 1000

����������ɤ򤹤뤫�ɤ����Υǥե�����ͤǤ���

--- DEFAULT_UPDATE_SOURCES -> true

��� [[c:Gem::SourceInfoCache]] �򹹿����뤫�ɤ����Υǥե�����ͤǤ���

--- DEFAULT_VERBOSITY -> true

����٥�Υǥե�����ͤǤ���

--- OPERATING_SYSTEM_DEFAULTS -> {}

Ruby ��ѥå������󥰤��Ƥ���ͤ��ǥե���Ȥ������ͤ򥻥åȤ��뤿��˻��Ѥ��ޤ���

���Ѥ���ե������ rubygems/defaults/operating_system.rb �Ǥ���

--- PLATFORM_DEFAULTS -> {}

Ruby �μ����Ԥ��ǥե���Ȥ������ͤ򥻥åȤ��뤿��˻��Ѥ��ޤ���

���Ѥ���ե������ rubygems/defaults/#{RUBY_ENGINE}.rb �Ǥ���

--- SYSTEM_WIDE_CONFIG_FILE -> String

�����ƥ����Τ�����ե�����Υѥ��Ǥ���
