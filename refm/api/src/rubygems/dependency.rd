
Gem �ΰ�¸�ط���������뤿��Υ饤�֥��Ǥ���

= class Gem::Dependency

Gem �ΰ�¸�ط���������륯�饹�Ǥ���

== Public Instance Methods

--- <=>(other) -> Integer

self �� other �� [[m:Gem::Dependency#name]] �� ASCII �����ɤ���Ӥ���
self ���礭�����ˤ��������������������ˤ� 0�����������ˤ�����������֤��ޤ���

--- =~(other) -> bool

self �� other ����Ӥ��ƿ����ͤ��֤��ޤ���

self �� [[m:Gem::Dependency#name]] ������ɽ���Ȥ��� other �ȥޥå����ʤ����ϵ����֤��ޤ���
self �� other �Ȥΰ�¸�ط����������Ƥ���п����֤��ޤ����������Ƥ��ʤ���е����֤��ޤ���

--- name -> String

��¸�ط���̾����ʸ��������ɽ�����֤��ޤ���

--- name=(name)

��¸�ط���̾����ʸ��������ɽ���ǥ��åȤ��ޤ���

#@until 1.9.2
--- normalize -> nil
#@todo ???

@see [[c:Gem::Requirement]]
#@end
--- requirement_list  -> [String]
--- requirements_list -> [String]

�С�������ɬ�׾���ʸ���������Ȥ����֤��ޤ���

--- type -> Symbol

��¸�ط��η����֤��ޤ���

--- version_requirements -> Gem::Requirement

��¸���Ƥ���С��������֤��ޤ���

--- version_requirements=(version_requirements)

��¸���Ƥ���С����������ꤷ�ޤ���

@param version_requirements [[c:Gem::Requirement]] �Υ��󥹥��󥹤���ꤷ�ޤ���

== Constants

--- TYPES -> Array

ͭ���ʰ�¸�ط��η���ɽ������Ǥ���

@see [[m:Gem::Specification::CURRENT_SPECIFICATION_VERSION]]
