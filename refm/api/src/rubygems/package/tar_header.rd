tar ���������֤γƥ���ȥ�Υإå���ɽ�����饹���󶡤���饤�֥��Ǥ���

= class Gem::Package::TarHeader

tar ���������֤γƥ���ȥ�Υإå���ɽ�����饹�Ǥ���

  * [[man:tar(5)]]

== Public Instance Methods

--- ==(other) -> bool

���Ȥ� other ����������п����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

@param other ����оݤΥ��֥������Ȥ���ꤷ�ޤ���

--- checksum -> Integer

tar �Υإå��˴ޤޤ������å�������֤��ޤ���

--- devmajor -> Integer

tar �Υإå��˴ޤޤ�� devmajor ���֤��ޤ���

--- devminor -> Integer

tar �Υإå��˴ޤޤ�� devminor ���֤��ޤ���

--- empty? -> bool

�إå��� "\0" �������Ƥ����硢�����֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

--- gid -> Integer

tar �Υإå��˴ޤޤ�� gid ���֤��ޤ���

--- gname -> String

tar �Υإå��˴ޤޤ�륰�롼��̾���֤��ޤ���

--- linkname -> String

tar �Υإå��˴ޤޤ�� linkname ���֤��ޤ���

--- magic -> String

tar �Υإå��˴ޤޤ�� magic ���֤��ޤ���

--- mode -> Integer

tar �Υإå��˴ޤޤ�� mode ���֤��ޤ���

--- mtime -> Integer

tar �Υإå��˴ޤޤ�� mtime ���֤��ޤ���

--- name -> String

tar �Υإå��˴ޤޤ�� name ���֤��ޤ���

--- prefix -> String

tar �Υإå��˴ޤޤ�� prefix ���֤��ޤ���

--- size -> Integer

tar �Υإå��˴ޤޤ�� size ���֤��ޤ���

--- to_s -> String

�إå��ξ����ʸ����Ȥ����֤��ޤ���

--- typeflag -> String

tar �Υإå��˴ޤޤ�� typeflag ���֤��ޤ���

--- uid -> Integer

tar �Υإå��˴ޤޤ�� uid ���֤��ޤ���

--- uname -> String

tar �Υإå��˴ޤޤ��桼��̾���֤��ޤ���

--- update_checksum
#@# -> discard
�����å�����򹹿����ޤ���

--- version -> Integer

tar �Υإå��˴ޤޤ�� version ���֤��ޤ���

== Singleton Methods

--- from(stream) -> Gem::Package::TarHeader

stream ������Ƭ 512 �Х��Ȥ��ɤ߹���� [[c:Gem::Package::TarHeader]] ��
���󥹥��󥹤���������֤��ޤ���

@param stream IO �Τ褦�� read �᥽�åɤ���ĥ��֥������Ȥ���ꤷ�ޤ���

== Constants

--- FIELDS -> Array

�����ǻ��Ѥ��ޤ���

--- PACK_FORMAT -> String

�����ǻ��Ѥ��ޤ���

--- UNPACK_FORMAT -> String

�����ǻ��Ѥ��ޤ���

