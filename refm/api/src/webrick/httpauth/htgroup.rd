Apache �Ǿ�ǧ�˻��Ѥ���桼�����롼�פΰ�������Ǽ����Ƥ���ƥ����ȥե������
�ɤ߽񤭤��뵡ǽ���󶡤���饤�֥��Ǥ���

 * [[url:http://httpd.apache.org/docs/2.2/mod/mod_authz_groupfile.html#authgroupfile]]

= class WEBrick::HTTPAuth::Htgroup < Object

Apache �Ǿ�ǧ�˻��Ѥ���桼�����롼�פΰ�������Ǽ����Ƥ���ƥ����ȥե�������ɤ߽񤭤��뤿��Υ��饹�Ǥ���

== Class Methods

--- new(path) -> WEBrick::HTTPAuth::Htgroup

���Ȥ��������ޤ���

@param path �ե�����̾����ꤷ�ޤ���

== Instance Methods

--- reload
#@# -> discard
�ե����뤫������ɤ߹��ߤޤ���

--- flush(path = nil) -> ()

�ե�����˽񤭹��ߤޤ���

@param path �ե�����̾����ꤷ�ޤ���

--- members(group) -> [String]

[[m:WEBrick::HTTPAuth::Htgroup#reload]] ��Ƥ�Ǥ���Ϳ����줿���롼�פ˽�°������ФΥꥹ�Ȥ��֤��ޤ���

@param group ���롼��̾����ꤷ�ޤ���

--- add(group, members)
#@# -> discard

Ϳ����줿���롼�פ˥��Ф��ɲä��ޤ���

@param group ���Ф��ɲä��륰�롼�פ���ꤷ�ޤ���

@param members �ɲä�����Ф�����ǻ��ꤷ�ޤ���

