gem-format �� tar �ե�������ɤि��Υ��饹���󶡤���饤�֥��Ǥ���

= class Gem::Package::TarReader
include Gem::Package

gem-format �� tar �ե�������ɤि��Υ��饹�Ǥ���

== Public Instance Methods

--- close -> nil

���Ȥ� close ���ޤ���

--- each{|entry| ... }
--- each_entry{|entry| ... }

�֥�å��˰�Ĥ��ĥ���ȥ���Ϥ���ɾ�����ޤ���

--- rewind -> Integer

���Ȥ˴�Ϣ�դ���줿 IO �Υե�����ݥ��󥿤���Ƭ�˰�ư���ޤ����ޤ��ϡ�
[[m:Gem::Package::TarReader.new]] �����Ȥ��� [[m:IO#pos]] �˥ե������
���󥿤���Ƭ�˰�ư���ޤ���

[[m:Gem::Package::TarReader#each]] �μ¹���˸ƤФʤ��褦�ˤ��Ƥ���������

@return ��ä����֤��֤��ޤ���

@raise Gem::Package::NonSeekableIO ���Ȥ˴�Ϣ�դ���줿 IO ����������ǽ
                                   �Ǥʤ�����ȯ�����ޤ���

== Singleton Methods

--- new(io) -> Gem::Package::TarReader

io �˴�Ϣ�դ��� [[c:Gem::Package::TarReader]] ���������ޤ���

@param io pos, eof?, read, getc, pos= �Ȥ������󥹥��󥹥᥽�åɤ����
          ���֥������Ȥ���ꤷ�ޤ���

= class Gem::Package::TarReader::UnexpectedEOF < StandardError

IO ����������ǽ�Ǥʤ�����ȯ�������㳰�Ǥ���

