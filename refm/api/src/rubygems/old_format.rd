RubyGems �� Gem �ե������������¤�򰷤�����Υ饤�֥��Ǥ���

@see [[lib:rubygems/format]]

= class Gem::OldFormat

RubyGems �� Gem �ե������������¤��ɽ�����饹�Ǥ���

@see [[c:Gem::Format]]

== Public Instance Methods

--- file_entries -> Array

Gem �ѥå������˴ޤޤ��ե������������֤��ޤ���

--- file_entries=(file_entries)

Gem �ѥå������˴ޤޤ��ե����������򥻥åȤ��ޤ���

@param file_entries

--- gem_path -> String

Gem �Υѥ����֤��ޤ���

--- gem_path=(path)

Gem �Υѥ��򥻥åȤ��ޤ���

@param path Gem �Υѥ��򥻥åȤ��ޤ���

--- spec -> Gem::Specification

Gem �� [[c:Gem::Specification]] ���֤��ޤ���

--- spec=(spec)

Gem �� [[c:Gem::Specification]] �򥻥åȤ��ޤ���

@param spec Gem �� [[c:Gem::Specification]] �򥻥åȤ��ޤ���

== Singleton Methods

--- from_file_by_path(file_path) -> Gem::OldFormat

Gem �ե�����Υѥ�����ǡ������ɤ߹���ǡ����Ȥ����������֤��ޤ���

@param file_path Gem �ե�����ؤΥѥ�����ꤷ�ޤ���

--- from_io(io, gem_path = '(io)') -> Gem::OldFormat

Gem �ե����뤫��ǡ������ɤ߹���� IO �������ꡢ���Ȥ����������֤��ޤ���

@param io Gem �ѥå����������Ƥ��ɤ߹���� IO ���֥������Ȥ���ꤷ�ޤ���

@param gem_path Gem �ե�����Υѥ�����ꤷ�ޤ���

--- new(gem_path) -> Gem::OldFormat

���Ȥ��������ޤ���

@param gem_path Gem �ե�����ؤΥѥ�����ꤷ�ޤ���
