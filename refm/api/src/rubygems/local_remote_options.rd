require rubygems

[[c:Gem::Command]] �ǻ��Ѥ��� --local, --remote ���ץ����Τ���Υ⥸�塼���
��������饤�֥��Ǥ���

= module Gem::LocalRemoteOptions

[[c:Gem::Command]] �ǻ��Ѥ��� --local, --remote ���ץ����Τ���Υ⥸�塼��Ǥ���

== Public Instance Methods

--- accept_uri_http
#@# -> discard
HTTP �� URI �򰷤���褦�ˤ��뤿��Υ᥽�åɤǤ���

--- add_bulk_threshold_option
#@# -> discard
���ץ���� --bulk-threshold ���ɲä��ޤ���

--- add_local_remote_options
#@# -> discard
���ץ���� --local, --remote, --both ���ɲä��ޤ���

--- add_proxy_option
#@# -> discard
���ץ���� --http-proxy ���ɲä��ޤ���

--- add_source_option
#@# -> discard
���ץ���� --source ���ɲä��ޤ���

--- add_update_sources_option
#@# -> discard
���ץ���� --update-source ���ɲä��ޤ���

--- both? -> bool

������ȥ�⡼�Ȥξ����ξ���Ȥ����������Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

--- local? -> bool

������ξ�������������Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

--- remote? -> bool

��⡼�Ȥξ�������������Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

