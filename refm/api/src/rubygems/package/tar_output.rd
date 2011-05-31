
gem-format �� tar �ե������񤭽Ф� [[c:Gem::Package::TarWriter]] �Υ��
�ѡ����饹���󶡤���饤�֥��Ǥ���

= class Gem::Package::TarOutput

gem-format �� tar �ե������񤭽Ф� [[c:Gem::Package::TarWriter]] �Υ��
�ѡ����饹�Ǥ���

== Public Instance Methods

--- add_gem_contents{|data_tar_writer| ... } -> self

gem-format �� tar �ե�������� data.tar.gz �˥ե�������ɲä��뤿��Υ�
���åɤǤ���

�֥�å��ˤ� data.tar.gz ��ɳ�դ��� [[c:Gem::Package::TarWriter]] �Υ�
�󥹥��󥹤��Ϥ���ޤ������Υ֥�å��ѥ�᡼���ˤ�
[[c:Gem::Specification]] ���ɲä��뤿��� metadata, metadata= �Ȥ�����
�ۥ᥽�åɤ��ɲä���Ƥ��ޤ���

--- add_metadata
#@# -> discard
gem-format �� tar �ե������ metadata.gz ���ɲä��ޤ���

����� [[m:Gem::Package::TarOutput#add_gem_contents]] �θƤӽФ��ʹߤ�
�ѹ������᥿�ǡ�����񤭹��ߤޤ���

--- add_signatures
#@# -> discard
gem-format �� tar �ե������ data.tar.gz.sig, metadata.gz.sig ���ɲä��ޤ���

@see [[c:Gem::Security::Signer]]

--- close
#@# -> discard

���Ȥ˴�Ϣ�դ���줿 IO �� close ���ޤ���

== Singleton Methods

--- open(io, signer = nil){|data_tar_writer| ... }
#@# -> discard

gem-format �� tar �ե�������� data.tar.gz �˥ե�������ɲä��뤿��Υ�
���åɤǤ���

@param io gem-format �� tar �ե�����򰷤������ IO ����ꤷ�ޤ���

@param signer [[c:Gem::Security::Signer]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@see [[m:Gem::Package::TarOutput#add_gem_contents]]

--- new(io, signer) -> Gem::Package::TarOutput

gem-format �� tar �ե�������� data.tar.gz �˥ե�������ɲä��뤿���
���Ȥ��������ޤ���

@param io gem-format �� tar �ե�����򰷤������ IO ����ꤷ�ޤ���

@param signer [[c:Gem::Security::Signer]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@see [[c:Gem::Security::Signer]]
