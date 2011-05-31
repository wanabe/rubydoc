tar �ե������񤭹��ि��Υ��饹���󶡤���饤�֥��Ǥ���

= class Gem::Package::TarWriter

tar �ե������񤭹��ि��Υ��饹�Ǥ���

== Public Instance Methods

--- add_file(name, mode) -> self
--- add_file(name, mode){|io| ... } -> self

���Ȥ˴�Ϣ�դ���줿 IO �˥ե�������ɲä��ޤ���

�֥�å���Ϳ����ȡ����Ȥ˴�Ϣ�դ���줿 IO ��֥�å����Ϥ��ƥ֥�å�
��ɾ�����ޤ���

@param name �ɲä���ե������̾������ꤷ�ޤ���

@param mode �ɲä���ե�����Υѡ��ߥå�������ꤷ�ޤ���

--- add_file_simple(name, mode, size) -> self
--- add_file_simple(name, mode, size){|io| ... } -> self

���Ȥ˴�Ϣ�դ���줿 IO �˥ե�������ɲä��ޤ���

�֥�å���Ϳ����ȡ����Ȥ˴�Ϣ�դ���줿 IO ��֥�å����Ϥ��ƥ֥�å�
��ɾ�����ޤ���

@param name �ɲä���ե������̾������ꤷ�ޤ���

@param mode �ɲä���ե�����Υѡ��ߥå�������ꤷ�ޤ���

@param size �ɲä���ե�����Υ���������ꤷ�ޤ���

--- check_closed
#@# -> discard
���Ȥ˴�Ϣ�դ���줿 IO ������ close ����Ƥ��뤫�ɤ��������å����ޤ���

@raise IOError ���Ȥ˴�Ϣ�դ���줿 IO ������ close ����Ƥ������ȯ
               �����ޤ���

--- close -> true

���Ȥ� close ���ޤ���

--- closed? -> bool

���Ȥ����� close ����Ƥ�����ϡ������֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

--- flush
#@# -> discard
���Ȥ˴�Ϣ�դ���줿 IO ��ե�å��夷�ޤ���

--- mkdir(name, mode) -> self

���Ȥ˴�Ϣ�դ���줿 IO �˥ǥ��쥯�ȥ���ɲä��ޤ���

@param name �ɲä���ǥ��쥯�ȥ��̾������ꤷ�ޤ���

@param mode �ɲä���ǥ��쥯�ȥ�Υѡ��ߥå�������ꤷ�ޤ���

#@#--- split_name
#@# nodoc

== Singleton Methods

--- new(io) -> Gem::Package::TarWriter

���Ȥ��������ޤ���

@param io ���Ȥ˴�Ϣ�դ��� IO ����ꤷ�ޤ���

= class Gem::Package::TarWriter::BoundedStream

�ǡ����������ξ�¤����� [[c:IO]] �Υ�åѡ����饹�Ǥ���

== Singleton Methods

--- new(io, limit) -> Gem::Package::TarWriter::BoundedStream

���Ȥ��������ޤ���

@param io ��åפ��� IO ����ꤷ�ޤ���

@param limit �񤭹��߲�ǽ�ʺ���Υ���������ꤷ�ޤ���

== Public Instance Methods

--- limit -> Integer

�񤭹��߲�ǽ�ʺ���Υ��������֤��ޤ���

--- written -> Integer

���˽񤭹�����ǡ����Υ��������֤��ޤ���

--- write(data) -> Integer

Ϳ����줿�ǡ����򼫿Ȥ˴�Ϣ�դ���줿 IO �˽񤭹��ߤޤ���

@param data �񤭹���ǡ�������ꤷ�ޤ���

@return �񤭹�����ǡ����Υ��������֤��ޤ���

@raise Gem::Package::TarWriter::FileOverflow [[m:Gem::Package::TarWriter::BoundedStream#limit]] ��ۤ���
       �񤭹��⤦�Ȥ�������ȯ�����ޤ���

= class Gem::Package::TarWriter::RestrictedStream

write �᥽�åɤΤߤ��󶡤��� [[c:IO]] �Υ�åѡ����饹�Ǥ���

== Singleton Methods

--- new(io) -> Gem::Package::TarWriter::RestrictedStream

���Ȥ��������ޤ���

@param io ��åפ��� IO ����ꤷ�ޤ���

== Public Instance Methods

--- write(data) -> Integer

Ϳ����줿�ǡ����򼫿Ȥ˴�Ϣ�դ���줿 IO �˽񤭹��ߤޤ���

@param data �񤭹���ǡ�������ꤷ�ޤ���

@return �񤭹�����ǡ����Υ��������֤��ޤ���

= class Gem::Package::TarWriter::FileOverflow < StandardError

��¥�������ۤ��ƽ񤭹��⤦�Ȥ�������ȯ�������㳰�Ǥ���
