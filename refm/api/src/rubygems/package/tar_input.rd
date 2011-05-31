gem-format �� tar �ե�������ɤ߹��� [[c:Gem::Package::TarReader]] �Υ��
�ѡ����饹���󶡤���饤�֥��Ǥ���

= class Gem::Package::TarInput
include Gem::Package::FSyncDir
include Enumerable

gem-format �� tar �ե�������ɤ߹��� [[c:Gem::Package::TarReader]] �Υ��
�ѡ����饹�Ǥ���

== Singleton Methods

--- open(io, security_policy = nil){|is| ... }
#@todo ???
�֥�å��� [[c:Gem::Package::TarInput]] �Υ��󥹥��󥹤�Ϳ����ɾ�����ޤ���

@param io ���Ȥ˴�Ϣ�դ��� IO ����ꤷ�ޤ���

@param security_policy ???

== Private Singleton Methods

--- new(io, security_policy = nil)
#@todo ???
���Υ��饹���������ޤ���

@param io ���Ȥ˴�Ϣ�դ��� IO ����ꤷ�ޤ���

@param security_policy ???


== Public Instance Methods

--- close
#@# -> discard
���Ȥȼ��Ȥ˴�Ϣ�դ���줿 IO �� close ���ޤ���

--- each{|entry| ... }
#@# -> discard
data.tar.gz �γƥ���ȥ��֥�å����Ϥ��ƥ֥�å���ɾ�����ޤ���

@see [[m:Gem::Package::TarReader#each]]

--- extract_entry(destdir, entry, expected_md5sum = nil)
#@# -> discard
���ꤵ�줿 destdir �� entry ��Ÿ�����ޤ���

@param destdir Ÿ����Υǥ��쥯�ȥ����ꤷ�ޤ���

@param entry ����ȥ����ꤷ�ޤ���

@param expected_md5sum ���Ԥ��� MD5 �����å��������ꤷ�ޤ���

@raise Gem::Package::BadCheckSum �����å����ब���פ��ʤ��ä�����ȯ�����ޤ���

--- load_gemspec(io) -> Gem::Specification | nil

YAML ������ gemspec �� io �����ɤ߹��ߤޤ���

@param io ʸ���� [[c:IO]] ���֥������Ȥ���ꤷ�ޤ���

@see [[m:Gem::Specification.from_yaml]]

--- metadata -> Gem::Specification

�᥿�ǡ������֤��ޤ���

--- zipped_stream(entry) -> StringIO

Ϳ����줿 entry �ΰ��̤����ޤޤ� StringIO ���֤��ޤ���

@param entry ����ȥ����ꤷ�ޤ���
