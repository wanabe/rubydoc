Gem �ΰ�¸�ط��򰷤�����Υ饤�֥��Ǥ���

= class Gem::DependencyList
include TSort

Gem �ΰ�¸�ط��򰷤�����Υ��饹�Ǥ���

== Public Instance Methods

--- add(*gemspecs)
#@# -> discard

Ϳ����줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤򼫿Ȥ��ɲä��ޤ���

@param gemspecs [[c:Gem::Specification]] �Υ��󥹥��󥹤��İʾ���ꤷ�ޤ���

--- dependency_order -> [Gem::Specification]

��¸���� Gem �ο������ʤ���˥����Ȥ��줿 [[c:Gem::Specification]] �Υꥹ�Ȥ��֤��ޤ���

���Τ��Ȥϡ����󥹥ȡ���Ѥߤ� Gem ��������Ȥ��������Ǥ���
���Υ᥽�åɤ��֤��줿��˥��󥹥ȡ���Ѥߤ� Gem �������ȡ�
��¸�ط��ˤ��¿�����������򤹤뤳�Ȥ��Ǥ��ޤ���

If there are circular dependencies (yuck!), then gems will be
returned in order until only the circular dependents and anything
they reference are left.  Then arbitrary gemspecs will be returned
until the circular dependency is broken, after which gems will be
returned in dependency order again.

--- find_name(full_name) -> Gem::Specification | nil

���Ȥ˴ޤޤ��Ϳ����줿̾������� [[c:Gem::Specification]] �Υ��󥹥��󥹤��֤��ޤ���

���Ĥ���ʤ��ä����� nil ���֤��ޤ���

@param full_name �С�������ޤ�ե�͡���� Gem ��̾������ꤷ�ޤ���

@see [[m:Gem::Specification#full_name]]

--- ok? -> bool

���Ȥ˴ޤޤ�����Ƥ� [[c:Gem::Specification]] ����¸�ط����������Ƥ���п����֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

--- ok_to_remove?(full_name) -> bool

Ϳ����줿̾������� [[c:Gem::Specification]] �򼫿Ȥ��������Ƥ� OK �ʾ��Ͽ����֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

Ϳ����줿̾������� [[c:Gem::Specification]] �򼫿Ȥ���������ȡ�
��¸�ط�������Ƥ��ޤ���礬������������ƤϤ����ʤ����Ǥ���

@param full_name �С�������ޤ�ե�͡���� Gem ��̾������ꤷ�ޤ���

@see [[m:Gem::Specification#full_name]]

--- remove_by_name(full_name) -> Gem::Specification

Ϳ����줿̾������� [[c:Gem::Specification]] �򼫿Ȥ��������ޤ���

���Υ᥽�åɤǤϺ����ΰ�¸�ط�������å����ޤ���

@param full_name �С�������ޤ�ե�͡���� Gem ��̾������ꤷ�ޤ���

@see [[m:Gem::Specification#full_name]], [[m:Array#delete_if]]

--- spec_predecessors -> Hash
#@todo ???

Return a hash of predecessors.  <tt>result[spec]</tt> is an
Array of gemspecs that have a dependency satisfied by the named
spec.

#@# �褯�狼��ʤ���
#@# [[c:Gem::Specification]] => Array of [[c:Gem::Specification]]

== Singleton Methods

--- from_source_index(src_index) -> Gem::DependencyList

Ϳ����줿 [[c:Gem::SourceIndex]] �Υ��󥹥��󥹤��鼫�Ȥ�������ޤ���

@param src_index [[c:Gem::SourceIndex]] ����ꤷ�ޤ���

@see [[c:Gem::SourceIndex]]
