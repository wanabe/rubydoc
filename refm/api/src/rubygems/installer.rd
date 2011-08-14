require rubygems/format
require rubygems/ext
require rubygems/require_paths_builder

RubyGems �� Gem �򥤥󥹥ȡ��뤹�뤿��Υ饤�֥��Ǥ���

= class Gem::Installer
include Gem::UserInteraction
include Gem::RequirePathsBuilder

[[c:Gem::Installer]] �� Gem ��Ÿ������  Gem �˴ޤޤ�Ƥ����ե������
�ե����륷���ƥ������������֤����֤��ޤ���

�ޤ���gemspec �� specifications �ǥ��쥯�ȥ�ˡ�����å���� cache �ǥ��쥯�ȥ�ˡ�
�¹ԥե�����䥷��ܥ�å���󥯤ʤɤ� bin �ǥ��쥯�ȥ�����֤��ޤ���

== Public Instance Methods

--- app_script_text -> String

���ץꥱ�������Τ���μ¹ԥե�����ο����Υƥ����Ȥ��֤��ޤ���

--- bin_dir -> String

�¹ԥե�����򥤥󥹥ȡ��뤹��ǥ��쥯�ȥ���֤��ޤ���

--- build_extensions
#@# -> discard
��ĥ�饤�֥���ӥ�ɤ��ޤ���

��ĥ�饤�֥���ӥ�ɤ��뤿��Υե����륿���פȤ���ͭ���Ǥ���Τϡ�
extconf.rb, configure script, Rakefile, mkmf_files �Ǥ���

--- ensure_dependency(spec, dependency) -> true

���󥹥ȡ��뤷�褦�Ȥ��Ƥ��� Gem ����¸�ط����������Ƥ�������ǧ���ޤ���

��¸�ط����������Ƥ��ʤ����ϡ��㳰 [[c:Gem::InstallError]] ��ȯ�����ޤ���

@param spec [[c:Gem::Specification]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param dependency [[c:Gem::Dependency]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@raise Gem::InstallError ��¸�ط����������Ƥ��ʤ�����ȯ�����ޤ���

--- extract_files
#@# -> discard
�ե�����Υ���ǥå������ɤ߼�äơ����줾��Υե������ Gem �Υǥ��쥯�ȥ��Ÿ�����ޤ���

�ޤ����ե������ Gem �ǥ��쥯�ȥ�˥��󥹥ȡ��뤷�ʤ��褦�ˤ��ޤ���

@raise ArgumentError ���Ȥ� [[c:Gem::Format]] �����åȤ���Ƥ��ʤ�����ȯ�����ޤ���

@raise Gem::InstallError ���󥹥ȡ�����Υѥ��������ʾ���ȯ�����ޤ���

--- formatted_program_filename(filename) -> String

Ruby �Υ��ޥ�ɤ�Ʊ���ץ�ե��å����ȥ��ե��å������դ����ե�����̾���֤��ޤ���

@param filename �¹ԥե�����Υե�����̾����ꤷ�ޤ���

--- gem_home -> String

Gem �Υ��󥹥ȡ�������֤��ޤ���

--- generate_bin
#@# -> discard
Gem �ǥ��󥹥ȡ��뤵���¹ԥե������������ޤ���

@raise Gem::FilePermissionError ���󥹥ȡ�����˽���߽���ʤ�����ȯ�����ޤ���

--- generate_bin_script(filename, bindir)
#@# -> discard
Gem �����äƤ��륢�ץꥱ��������¹Ԥ��뤿��Υ�����ץȤ�������ޤ���

@param filename �ե�����̾����ꤷ�ޤ���

@param bindir �¹ԥե���������֤���ǥ��쥯�ȥ����ꤷ�ޤ���

--- generate_bin_symlink(filename, bindir)
#@# -> discard
Gem �����äƤ��륢�ץꥱ��������¹Ԥ��뤿��Υ���ܥ�å���󥯤�������ޤ���

���ߥ��󥹥ȡ��뤵��Ƥ��� Gem ���⿷���� Gem �򥤥󥹥ȡ��뤹��Ȥ��ϡ�
����ܥ�å���󥯤򹹿����ޤ���

@param filename �ե�����̾����ꤷ�ޤ���

@param bindir �¹ԥե���������֤���ǥ��쥯�ȥ����ꤷ�ޤ���

#@since 1.9.2
--- generate_windows_script(filename, bindir)
#@else
--- generate_windows_script(bindir, filename)
#@end
#@# -> discard
���ޥ�ɤμ¹Ԥ��ưפˤ��뤿��� Windows �����ΥХå��ե������������ޤ���

@param bindir �¹ԥե���������֤���ǥ��쥯�ȥ����ꤷ�ޤ���

@param filename �ե�����̾����ꤷ�ޤ���

--- install -> Gem::Specification

Gem �򥤥󥹥ȡ��뤷�ޤ���

�ʲ��Υǥ��쥯�ȥ깽¤�� Gem �򥤥󥹥ȡ��뤷�ޤ���

   @gem_home/
     cache/<gem-version>.gem              #=> ���󥹥ȡ��뤷�� Gem �Υ��ԡ�
     gems/<gem-version>/...               #=> ���󥹥ȡ������Ÿ�������ե�����
     specifications/<gem-version>.gemspec #=> gemspec �ե�����

@return ���ɤ��줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤��֤��ޤ���

@raise Gem::InstallError �׵ᤵ�줿 Ruby �ΥС��������������Ƥ��ʤ�����ȯ�����ޤ���

@raise Gem::InstallError �׵ᤵ�줿 RubyGems �ΥС��������������Ƥ��ʤ�����ȯ�����ޤ���

@raise Gem::InstallError [[c:Zlib::GzipFile::Error]] ��ȯ����������ȯ�����ޤ���

--- installation_satisfies_dependency?(dependency) -> bool

��Ͽ����Ƥ��륽��������ǥå�����Ϳ����줿��¸�ط���
���������Ȥ��Ǥ�����ϡ������֤��ޤ��������Ǥʤ����ϵ����֤��ޤ���

@param dependency [[c:Gem::Dependency]] �Υ��󥹥��󥹤���ꤷ�ޤ���

--- shebang(bin_file_name) -> String

�¹ԥե�������ǻ��Ѥ��� shebang line (#! line) ��ɽ��ʸ������֤��ޤ���

@param bin_file_name �¹ԥե������̾������ꤷ�ޤ���

--- spec -> Gem::Specification

���󥹥ȡ��뤷�褦�Ȥ��Ƥ��� Gem ���б����� [[c:Gem::Specification]] �Υ��󥹥��󥹤��֤��ޤ���

--- unpack(directory)
#@# -> discard
Ϳ����줿�ǥ��쥯�ȥ�� Gem ��Ÿ�����ޤ���

@param directory Gem ��Ÿ������ǥ��쥯�ȥ����ꤷ�ޤ���

--- windows_stub_script -> String

���ޥ�ɤ�ư���뤿��˻��Ѥ��� Windows �ѤΥХå��ե���������Ƥ�
ʸ����Ȥ����֤��ޤ���

--- write_spec
#@# -> discard
Ruby ������ץȷ����� .gemspec �ե������������ޤ���

== Singleton Methods

--- new(gem, options = {}) -> Gem::Installer
#@todo �񤤤Ƥʤ����ץ���󤬤��äѤ�����

Ϳ����줿�����Ǽ��Ȥ��������ޤ���

@param gem ���󥹥ȡ����оݤ� Gem �Υѥ�����ꤷ�ޤ���

@param options ���󥹥ȡ��餬���Ѥ��륪�ץ�����ϥå���ǻ��ꤷ�ޤ���
               ���ѤǤ��륭���ϰʲ����̤�Ǥ���
: :env_shebang
  ���ޥ�ɤΥ�åѡ��� shebang line �� /usr/bin/env ����Ѥ��ޤ���
: :force
  ��̾���줿 Gem �Τߤ򥤥󥹥ȡ��뤹��Ȥ����ݥꥷ���ʳ���
  ���ƤΥС����������å��ȥ������ƥ��ݥꥷ���Υ����å���Ԥ�ʤ��褦�ˤ��ޤ���
: :ignore_dependencies
  ��¸�ط����������Ƥ��ʤ����Ǥ��㳰��ȯ�������ޤ���
: :install_dir
  Gem �򥤥󥹥ȡ��뤹��ǥ��쥯�ȥ����ꤷ�ޤ���
: :format_executable
  �¹ԥե������̾���� ruby ��Ʊ���ե����ޥåȤˤ��뤫�ɤ������ꤷ�ޤ���
  ���󥹥ȡ��뤵��Ƥ��� ruby �� ruby19 �Ȥ���̾���ξ�硢foo_exec �Ȥ���̾����
  �¹ԥե������ foo_exec19 �Ȥ���̾���ǥ��󥹥ȡ��뤵��ޤ���
: :security_policy
  ����Υ������ƥ��ݥꥷ������Ѥ��ޤ����ܺ٤� [[c:Gem::Security]] �򻲾Ȥ��Ƥ���������
: :wrappers
  �����ͤ����ξ��ϡ���åѡ��򥤥󥹥ȡ��뤷�ޤ������ξ��ϡ�����ܥ�å���󥯤�������ޤ���
: :user_install
  �����ͤ� false �ξ��ϡ��桼���Υۡ���ǥ��쥯�ȥ�� Gem �򥤥󥹥ȡ��뤷�ޤ���
  �����ͤ� nil �ξ��ϡ��桼���Υۡ���ǥ��쥯�ȥ�� Gem �򥤥󥹥ȡ��뤷�ޤ������ٹ�ɽ������ޤ���

@raise Gem::InstallError Gem �Υե����ޥåȤ������Ǥ������ȯ�����ޤ���

@raise Gem::FilePermissionError �񤭹�����Υǥ��쥯�ȥ�˽񤭹��߸��¤��ʤ�����ȯ�����ޤ���

--- exec_format -> String

�¹ԥե�����̾�Υե����ޥåȤ��֤��ޤ���

���ꤷ�ʤ����� ruby ���ޥ�ɤ�Ʊ���ե����ޥåȤ���Ѥ��ޤ���

--- exec_format=(format)

�¹ԥե�����̾�Υե����ޥåȤ򥻥åȤ��ޤ���

@param format �¹ԥե�����̾�Υե����ޥåȤ���ꤷ�ޤ���

--- home_install_warning -> bool

�����ͤ����ξ�硢�ۡ���ǥ��쥯�ȥ�� Gem �򥤥󥹥ȡ��뤷�褦�Ȥ���ȷٹ��ɽ�����ޤ���

--- home_install_warning=(flag)

�ۡ���ǥ��쥯�ȥ�� Gem �򥤥󥹥ȡ��뤷�褦�Ȥ���ȷٹ��ɽ�����뤫�ɤ������åȤ��ޤ���

@param flag ������ꤹ��ȥۡ���ǥ��쥯�ȥ�� Gem �򥤥󥹥ȡ��뤷�褦
            �Ȥ���ȷٹ��ɽ������褦�ˤʤ�ޤ���

--- path_warning -> bool

�����ͤ� ���ξ��� Gem.bindir �� PATH �˴ޤޤ�Ƥ��ʤ����˷ٹ��ɽ�����ޤ���

--- path_warning=(flag)

Gem.bindir �� PATH �˴ޤޤ�Ƥ��ʤ����˷ٹ��ɽ�����뤫�ɤ������åȤ��ޤ���

@param flag ������ꤹ��ȡ�Gem.bindir �� PATH �˴ޤޤ�Ƥ��ʤ����˷�
            ���ɽ������褦�ˤʤ�ޤ���

= class Gem::Installer::ExtensionBuildError < Gem::InstallError

��ĥ�饤�֥���ӥ����˥��顼��ȯ����������ȯ�����ޤ���
