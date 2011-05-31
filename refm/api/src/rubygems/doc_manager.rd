require rubygems

Gem �ѥå������� RDoc, RI ���������뤿��Υ��饹�򰷤��饤�֥��Ǥ���

= class Gem::DocManager
include Gem::UserInteraction

Gem �ѥå������� RDoc, RI ���������뤿��Υ��饹�Ǥ���

== Public Instance Methods

--- generate_rdoc
#@# -> discard

���Ȥ˥��åȤ���Ƥ��� [[c:Gem::Specification]] �ξ�����Ȥ� RDoc �Υɥ�����Ȥ��������ޤ���

--- generate_ri
#@# -> discard

���Ȥ˥��åȤ���Ƥ��� [[c:Gem::Specification]] �ξ�����Ȥ� RI �ѤΥǡ������������ޤ���

--- install_rdoc
#@# -> discard

RDoc ���������ƥ��󥹥ȡ��뤷�ޤ���

--- install_ri
#@# -> discard

RI �Υǡ������������ƥ��󥹥ȡ��뤷�ޤ���

--- rdoc_installed? -> bool

RDoc �����󥹥ȡ���Ѥߤξ��ϡ������֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

--- run_rdoc(*args)
#@# -> discard

Ϳ����줿��������Ѥ��� RDoc ��¹Ԥ��ޤ���

@param args RDoc ��Ϳ�����������ꤷ�ޤ���

@raise Gem::FilePermissionError RDoc �ǥɥ������������˥ե�����˥�����������ʤ��ä�����ȯ�����ޤ���

--- setup_rdoc
#@# -> discard

RDoc ��¹Ԥ��뤿��ν�����Ԥ��ޤ���

@raise Gem::FilePermissionError RDoc ����¸����ǥ��쥯�ȥ�˥����������븢�¤��ʤ�����ȯ�����ޤ���

--- uninstall_doc
#@# -> discard

RDoc �� RI �ѤΥǡ����������ޤ���

== Singleton Methods

--- new(spec, rdoc_args = "") -> Gem::DocManager

���Ȥ��������ޤ���

@param spec �ɥ�����Ȥ����������оݤ� [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param rdoc_args RDoc ���Ϥ����ץ�������ꤷ�ޤ���

--- configured_args -> Array

RDoc ���Ϥ��������֤��ޤ���

--- configured_args=(args)

RDoc ���Ϥ������򥻥åȤ��ޤ���

@param args ʸ��������󤫶�����ڤ��ʸ�������ꤷ�ޤ���

--- load_rdoc
#@# -> discard

Gem �� RDoc �����Ѳ�ǽ�ʾ��ϻ��Ѥ��ޤ���
�����Ǥʤ����ϡ�ɸ��ź�դ� RDoc ����Ѥ��ޤ���

@raise Gem::DocumentError RDoc �����ѤǤ��ʤ�����ȯ�����ޤ���

--- update_ri_cache
#@# -> discard

RDoc 2 �����󥹥ȡ��뤵��Ƥ������ RI �Υ���å���򹹿����ޤ���
�����Ǥʤ����ϲ��⤷�ޤ���
