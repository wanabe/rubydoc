require irb/cmd/nop
require irb/ext/loader

irb ��� irb_load��irb_require��irb_source ���ޥ�ɤΤ���γ�ĥ�������
�����֥饤�֥��Ǥ���

���Υ饤�֥����������Ƥ���᥽�åɤϥ桼����ľ�ܻ��Ѥ����ΤǤϤ�
��ޤ���

= class IRB::ExtendCommand::Load < IRB::ExtendCommand::Nop

include IRB::IrbLoader

irb ��� irb_load ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(file_name, priv = nil) -> nil

�ե����� path �� Ruby ������ץȤȤߤʤ������ߤ� irb ���󥿥ץ꥿��Ǽ�
�Ԥ��ޤ���

[[m:Kernel.#load]] �Ȱۤʤꡢpath �����Ƥ� irb �ǰ�Ԥ��ĥ����פ�������
�褦�ˡ�irb ��ǰ�Ԥ���ɾ������ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param priv ������ꤷ�����ϼ¹Ԥ�����Ū�����������̵̾�⥸�塼���
            �ǹԤ�졢�����Х��̾�����֤�������ޤ���

@raise LoadError �ɤ߹��ߤ˼��Ԥ�������ȯ�����ޤ���

= class IRB::ExtendCommand::Require < IRB::ExtendCommand::Nop

include IRB::IrbLoader

irb ��� irb_require ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(file_name) -> bool

�ե����� file_name �򸽺ߤ� irb ���󥿥ץ꥿��Ǽ¹Ԥ��ޤ���

file_name �� Ruby ������ץȤ���ꤷ�����ϡ�[[m:Kernel.#kernel]] �Ȱ�
�ʤꡢfile_name �����Ƥ� irb �ǰ�Ԥ��ĥ����פ������Τ褦�ˡ�irb ��ǰ�
�Ԥ���ɾ������ޤ���require �������������� true �򡢤����Ǥʤ�����
false ���֤��ޤ���

��ĥ�饤�֥��(*.so,*.o,*.dll �ʤ�)����ꤷ������ñ��� require ����
�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

= class IRB::ExtendCommand::Source < IRB::ExtendCommand::Nop

include IRB::IrbLoader

irb ��� irb_source ���ޥ�ɤΤ���γ�ĥ������������饹�Ǥ���

== Instance Methods

--- execute(file_name) -> nil

���ߤ� irb ���󥿥ץ꥿��ǡ� Ruby ������ץ� path ��ɾ�����ޤ���

path �����Ƥ� irb �ǰ�Ԥ��ĥ����פ������Τ褦�ˡ�irb ��ǰ�Ԥ���ɾ��
����ޤ���[[m:$"]] �Ϲ������줺�����٤Ǥ�¹Ԥ�ľ�������Ǥ��ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���
