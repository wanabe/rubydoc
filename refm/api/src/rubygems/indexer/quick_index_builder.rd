require rubygems/indexer

���Ƥ� gemspec �򥤥󥯥��󥿥�˥��ɤ��뤿��Υ饤�֥��Ǥ���

= class Gem::Indexer::QuickIndexBuilder < Gem::Indexer::AbstractIndexBuilder

���Ƥ� gemspec �򥤥󥯥��󥿥�˥��ɤ��뤿��Υ��饹�Ǥ���

== Public Instance Methods
--- add(spec)
#@# -> discard
Ϳ����줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤򥤥�ǥå������ɲä��ޤ���

@param spec ����ǥå������ɲä��� [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

--- add_marshal(spec)
#@# -> discard
Ϳ����줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤� YAML �����ǥե�����˽񤭽Ф��ޤ���

@param spec ����ǥå������ɲä��� [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

--- add_yaml(spec)
#@# -> discard
Ϳ����줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤� [[m:Marshal.#dump]] ���ƥե�����˽񤭽Ф��ޤ���

@param spec ����ǥå������ɲä��� [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

--- cleanup
#@# -> discard
����ǥå����ե�����򰵽̤��ޤ���

@see [[m:Gem::Indexer::AbstractIndexBuilder#cleanup]]

