require rubygems
require rubygems/source_index
require rubygems/remote_fetcher

[[c:Gem::SourceInfoCache]] �����ĥ���ȥ��ɽ������Υ饤�֥��Ǥ���

= class Gem::SourceInfoCacheEntry

[[c:Gem::SourceInfoCache]] �����ĥ���ȥ��ɽ������Υ��饹�Ǥ���

== Public Instance Methods

--- refresh(source_uri, all) -> Gem::SourceIndex

����������ǥå����򹹿����ޤ���

@param source_uri �ǡ������������ URI ����ꤷ�ޤ���

@param all ���ƤΥ���ǥå����򹹿����뤫�ɤ�������ꤷ�ޤ���

--- size -> Fixnum

����������ȥ�Υ������Ǥ���

����������ǥå������Ѳ��������Ȥ򸡽Ф��뤿��˻��Ѥ��ޤ���

--- source_index -> Gem::SourceIndex

���Υ���å��奨��ȥ���Ф��륽��������ǥå����Ǥ���

== Singleton Methods

--- new(si, size) -> Gem::SourceInfoCacheEntry

����å���Υ���ȥ��������ޤ���

@param si [[c:Gem::SourceIndex]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param size ����ȥ�Υ���������ꤷ�ޤ���
