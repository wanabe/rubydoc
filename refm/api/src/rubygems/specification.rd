require rubygems
require rubygems/version
require rubygems/requirement
require rubygems/platform

Gem �ѥå������Υ᥿�ǡ����򰷤�����Υ饤�֥��Ǥ���

�̾� gemspec �ե������ Rakefile �ǥ᥿�ǡ�����������ޤ���

��:

   spec = Gem::Specification.new do |s|
     s.name = 'rfoo'
     s.version = '1.0'
     s.summary = 'Example gem specification'
     ...
   end

#@# @see 

= class Gem::Specification

Gem �ѥå������Υ᥿�ǡ����򰷤�����Υ��饹�Ǥ���


== Instance Methods

--- _dump -> String

���פʥ��󥹥����ѿ��Τߤ� [[m:Marshal.dump]] ���ޤ���

@see [[m:Marshal.dump]]

--- add_bindir(executables) -> Array | nil

�¹ԥ��ޥ�ɤγ�Ǽ�����֤��ޤ���

@param executables �¹ԥ��ޥ��̾���Ǽ�����������ꤷ�ޤ���

--- add_dependency
#@todo

--- add_development_dependency(gem, *requirements) -> Array
--- add_runtime_dependency(gem, *requirements) -> Array
#@todo

���� Gem ��¹Ԥ��뤿��ΰ�¸�ط����ɲä��ޤ���

��:
  spec.add_runtime_dependency('jabber4r', '> 0.1', '<= 0.5')


@param gem ��¸���� Gem ��̾���� [[c:Gem::Dependency]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param requirements �С�������ɬ�ܾ�����ꤷ�ޤ����ǥե���Ȥ� ">= 0" �Ǥ���

@see [[c:Gem::Dependency]]

--- assign_defaults -> ()

���Ƥ�°���˥ǥե�����ͤ򥻥åȤ��ޤ���

����ϥ��������᥽�åɤ���Ѥ��ƹԤ���Τǡ��֥�å����Ѥ������̤ʽ������
������ȼ¹Ԥ���ޤ������åȤ�����ͤϥǥե�����ͤΥ��ԡ��Ǥ���

--- author -> String

�����Ԥ�̾�����֤��ޤ���

--- author=(name)

�����Ԥ�̾���򥻥åȤ��ޤ���

--- authors -> Array

�����Ԥ�̾����������֤��ޤ���

--- authors=(names)

�����Ԥ�̾��������򥻥åȤ��ޤ���

--- autorequire -> String

��侩��°���Ǥ���

--- autorequire=(lib)

��侩��°���Ǥ���

--- bindir -> String

�¹ԥե�������Ǽ����ǥ��쥯�ȥ���֤��ޤ���

--- bindir=(dir)

�¹ԥե�������Ǽ����ǥ��쥯�ȥ�򥻥åȤ��ޤ���

@param dir �¹ԥե�������Ǽ����ǥ��쥯�ȥ����ꤷ�ޤ����ǥե���Ȥ� "bin" �Ǥ���

--- cert_chain -> Array
#@todo

--- cert_chain=(arr)
#@todo

@param arr �ǥե���Ȥ϶�������Ǥ���

--- date -> Time

���դ��֤��ޤ���

--- date=(date)

@param date ���դ򥻥åȤ��ޤ����ǥե���ȤϺ����Ǥ���

--- default_executable -> String | nil

Gem �ѥå�������� gem ���ޥ�ɷ�ͳ�Ǽ¹Ԥ���ե�������֤��ޤ���

--- default_executable=(executable)

Gem �ѥå�������� gem ���ޥ�ɷ�ͳ�Ǽ¹Ԥ���ե�����򥻥åȤ��ޤ���

@param executable �¹ԥե��������ꤷ�ޤ���

--- dependencies -> Array

��¸���Ƥ��� Gem �Υꥹ�Ȥ��֤��ޤ���

@see [[c:Gem::Dependency]]

--- dependent_gems -> Array

���� Gem �˰�¸���Ƥ������Ƥ� Gem �ξ���Υꥹ�Ȥ��֤��ޤ���

���줾��Υ���ȥ������ˤʤäƤ��ꡢ�����Ǥϰʲ��Τ褦�ˤʤäƤ��ޤ���

 (0) [[c:Gem::Specification]]
 (1) [[c:Gem::Dependency]]
 (2) [[c:Gem::Specification]] ������


--- description -> String

Gem �ѥå��������������֤��ޤ���

--- description=(desc)

Gem �ѥå������������򥻥åȤ��ޤ���

@param desc �ѥå������ξܺ٤���������ʸ�Ϥ���ꤷ�ޤ���

--- development_dependencies -> Array

���� Gem ����¸���Ƥ��� Gem �Υꥹ�Ȥ��֤��ޤ���

--- email -> String

�᡼�륢�ɥ쥹���֤��ޤ���

--- email=(email)

�᡼�륢�ɥ쥹�򥻥åȤ��ޤ���

@param email �᡼�륢�ɥ쥹����ꤷ�ޤ���

--- executable -> String

�¹Բ�ǽ�ե�����̾���֤��ޤ���

--- executable=(executable)

�¹Բ�ǽ�ե�����̾�򥻥åȤ��ޤ���

@param executable �¹Բ�ǽ�ե�����̾����ꤷ�ޤ���

--- executables -> [String]

�¹Բ�ǽ�ե�����̾�Υꥹ�Ȥ��֤��ޤ���

--- executables=(executables)

�¹Բ�ǽ�ե�����̾�Υꥹ�Ȥ򥻥åȤ��ޤ���

@param executables �¹Բ�ǽ�ե�����̾�Υꥹ�Ȥ���ꤷ�ޤ���

--- extensions -> [String]

��ĥ�饤�֥��򥳥�ѥ��뤹�뤿���ɬ�פ� extconf.rb �����Υե�����Υꥹ�Ȥ��֤��ޤ���

--- extensions=(paths)

��ĥ�饤�֥��򥳥�ѥ��뤹�뤿���ɬ�פ� extconf.rb �����Υե�����Υꥹ�Ȥ򥻥åȤ��ޤ���

@param paths ��ĥ�饤�֥��򥳥�ѥ��뤹�뤿���ɬ�פ� extconf.rb �����Υե�����Υꥹ�Ȥ���ꤷ�ޤ���

--- extra_rdoc_files -> [String]

RDoc �ǥɥ�����Ȥ��������ݤ˻��Ѥ������̤ʥե�����Υꥹ�Ȥ��֤��ޤ���

--- extra_rdoc_files=(paths)

RDoc �ǥɥ�����Ȥ��������ݤ˻��Ѥ������̤ʥե�����Υꥹ�Ȥ򥻥åȤ��ޤ���

@param paths RDoc �ǥɥ�����Ȥ��������ݤ˻��Ѥ������̤ʥե�����Υꥹ�Ȥ���ꤷ�ޤ���

--- file_name -> String

��������� Gem �ѥå�������̾�����֤��ޤ���

--- files -> [String]

���� Gem �ѥå������˴ޤޤ��ե�����̾��������֤��ޤ���

--- files=(files)

���� Gem �ѥå������˴ޤޤ��ե�����̾������򥻥åȤ��ޤ���

@param files ���� Gem �ѥå������˴ޤޤ��ե�����̾���������ꤷ�ޤ���


--- full_gem_path -> String

���� Gem �ѥå������ؤΥե�ѥ����֤��ޤ���

--- full_name -> String

���� Gem �ѥå������ΥС�������ޤര����̾�� (name-version) ���֤��ޤ���

�ץ�åȥե�����ξ��󤬻��ꤵ��Ƥ�����ϡ������ޤߤޤ� (name-version-platform)��

--- has_rdoc -> bool

���ξ��� RDoc �����������󡣵��ξ��� RDoc ���������ޤ���

--- has_rdoc=(flag)

RDoc ���������뤫�ɤ����򥻥åȤ��ޤ����ǥե���Ȥϵ��Ǥ���

--- has_rdoc? -> bool

���ξ��� RDoc �����������󡣵��ξ��� RDoc ���������ޤ���

@see [[m:Gem::Specification#has_rdoc]]

--- has_test_suite? -> bool

���Υ᥽�åɤ���侩�Ǥ��� [[m:Gem::Specification#has_unit_tests?]] ����Ѥ��Ƥ���������

--- has_unit_tests? -> bool

���� Gem �ѥå���������˥åȥƥ��Ȥ�ޤफ�ɤ����֤��ޤ���

���ξ��ϥ�˥åȥƥ��Ȥ�ޤߤޤ��������Ǥʤ����ϵ����֤��ޤ���

--- homepage -> String

���� Gem �ѥå�������������Ƥ���ץ������Ȥ������ԤΥ����֥����Ȥ� URI ���֤��ޤ���

--- homepage=(uri)

���� Gem �ѥå�������������Ƥ���ץ������Ȥ������ԤΥ����֥����Ȥ� URI �򥻥åȤ��ޤ���

@param uri ���� Gem �ѥå�������������Ƥ���ץ������Ȥ������ԤΥ����֥����Ȥ� URI ����ꤷ�ޤ���

--- installation_path -> String

���� Gem �ѥå������Υ��󥹥ȡ�����Υѥ����֤��ޤ���

--- lib_files -> [String]

���� Gem �ѥå������˴ޤޤ�Ƥ���ե�����Τ��� [[m:Gem::Specification#require_paths]]
�ʲ��ˤ���ե�����Υꥹ�Ȥ��֤��ޤ���

--- loaded=(flag)

���� Gem �ѥå������� gemspec �����˥��ɤ���Ƥ��뤫�ɤ����򥻥åȤ��ޤ���

����°���ϱ�³�����ޤ���

@param flag ���˥��ɤ���Ƥ�����Ͽ�����ꤷ�ޤ���

--- loaded? -> bool

���� Gem �ѥå������� gemspec �����˥��ɤ���Ƥ��뤫�ɤ������֤��ޤ���

���˥��ɤ���Ƥ�����Ͽ����֤��ޤ��������Ǥʤ����ϵ����֤��ޤ���

--- loaded_from -> String

���� Gem �ѥå������� gemspec ����������֤��ޤ���

����°���ϱ�³������ޤ���

--- loaded_from=(path)

���� Gem �ѥå������� gemspec ��������򥻥åȤ��ޤ���

@param path ���� Gem �ѥå������� gemspec �����������ꤷ�ޤ���

--- mark_version -> String

RubyGems �ΥС������������˥��åȤ��ޤ���

--- name -> String

���� Gem �ѥå�������̾�����֤��ޤ���

--- name=(name)

���� Gem �ѥå�������̾���򥻥åȤ��ޤ���

@param name ���� Gem �ѥå�������̾������ꤷ�ޤ���

--- normalize -> [String]

���� Gem �ѥå������δޤޤ��ե�����ꥹ�Ȥ����ʣ��������ޤ���

--- original_name -> String

���Υ᥽�åɤϸ����ߴ����Τ���˻Ĥ���Ƥ��ޤ���

@see [[m:Gem::Specification#full_name]]

--- original_platform -> String

����°���ϸŤ��С������� Gem �ѥå������򥢥󥤥󥹥ȡ��뤹�뤿��˻Ĥ���Ƥ��ޤ���

--- original_platform=(platform)

����°���ϸŤ��С������� Gem �ѥå������򥢥󥤥󥹥ȡ��뤹�뤿��˻Ĥ���Ƥ��ޤ���

@param platform �ץ�åȥե��������ꤷ�ޤ���

--- platform -> String

���� Gem �ѥå���������ѤǤ���ץ�åȥե�������֤��ޤ���

--- platform=(platform)

���� Gem �ѥå���������ѤǤ���ץ�åȥե�����򥻥åȤ��ޤ���

@param platform ���� Gem �ѥå���������ѤǤ���ץ�åȥե��������ꤷ�ޤ���
       �ǥե���Ȥ� [[m:Gem::Platform::RUBY]] �Ǥ���

@see [[m:Gem::Platform::RUBY]]

--- post_install_message -> String

���󥹥ȡ��봰λ���ɽ�������å��������֤��ޤ���

--- post_install_message=(message)

���󥹥ȡ��봰λ���ɽ�������å������򥻥åȤ��ޤ���

@param message ��å���������ꤷ�ޤ���

--- rdoc_options -> [String]

API �ɥ�����Ȥ���������Ȥ��� rdoc ���ޥ�ɤ�Ϳ���륪�ץ������֤��ޤ���

--- rdoc_options=(options)

API �ɥ�����Ȥ���������Ȥ��� rdoc ���ޥ�ɤ�Ϳ���륪�ץ����򥻥åȤ��ޤ���

@param options API �ɥ�����Ȥ���������Ȥ��� rdoc ���ޥ�ɤ�Ϳ���륪�ץ�������ꤷ�ޤ���

--- require_path -> String

[[m:Gem::Specification#require_paths]] ��ñ���С������Ǥ���

@see [[m:Gem::Specification#require_paths]]

--- require_path=(path)

[[m:Gem::Specification#require_paths=]] ��ñ���С������Ǥ���

@param path ���� Gem �ѥå���������Ѥ����ݤ� require ����ե����뤬�֤���Ƥ���ǥ��쥯�ȥ����ꤷ�ޤ���

@see [[m:Gem::Specification#require_paths=]]

--- require_paths -> [String]

���� Gem �ѥå���������Ѥ����ݤ� require ����ե����뤬�֤���Ƥ���ǥ��쥯�ȥ�
�Υꥹ�Ȥ��֤��ޤ���

--- require_paths=(paths)

���� Gem �ѥå���������Ѥ����ݤ� require ����ե����뤬�֤���Ƥ���ǥ��쥯�ȥ�
�Υꥹ�Ȥ򥻥åȤ��ޤ���

@param paths ���� Gem �ѥå���������Ѥ����ݤ� require ����ե����뤬�֤���Ƥ���ǥ��쥯�ȥ�
             �Υꥹ�Ȥ���ꤷ�ޤ���


--- required_ruby_version -> Gem::Requirement

���� Gem �ѥå�������ư�����Τ�ɬ�פ� Ruby �ΥС��������֤��ޤ���

--- required_ruby_version=(requirement)

���� Gem �ѥå�������ư�����Τ�ɬ�פ� Ruby �ΥС������򥻥åȤ��ޤ���

@param requirement [[m:Gem::Requirement.create]] �������դ�������Υ��֥������Ȥ���ꤷ�ޤ���

@see [[c:Gem::Requirement]]

--- required_rubygems_version -> Gem::Requirement

���� Gem �ѥå�������ư�����Τ�ɬ�פ� RubyGems �ΥС��������֤��ޤ���

--- required_rubygems_version=(requirement)

���� Gem �ѥå�������ư�����Τ�ɬ�פ� RubyGems �ΥС������򥻥åȤ��ޤ���

@param requirement [[m:Gem::Requirement.create]] �������դ�������Υ��֥������Ȥ���ꤷ�ޤ���

@see [[c:Gem::Requirement]]

--- requirements -> Array

���� Gem �ѥå�������ư�����Τ�ɬ�פʾ����֤��ޤ���
����ϥ桼���Τ���Υ���ץ�ʾ���Ǥ���

--- requirements=(informations)

���� Gem �ѥå�������ư�����Τ�ɬ�פʾ��򥻥åȤ��ޤ���
����ϥ桼���Τ���Υ���ץ�ʾ���򥻥åȤ��ޤ���

@param informations �����ʸ���������ǻ��ꤷ�ޤ���

--- rubyforge_project -> String

���� Gem �� RubyForge ��ǤΥץ�������̾���֤��ޤ���

--- rubyforge_project=(project_name)

���� Gem �� RubyForge ��ǤΥץ�������̾�򥻥åȤ��ޤ���

@param project_name RubyForge ��Υץ�������̾����ꤷ�ޤ���

--- rubygems_version -> String

���� Gem �ѥå�������������� RubyGems �ΥС��������֤��ޤ���

--- rubygems_version=(version)

���� Gem �ѥå�������������� RubyGems �ΥС������򥻥åȤ��ޤ���
����°���� Gem �ѥå��������������줿���˼�ưŪ�˥��åȤ���ޤ���

@param version RubyGems �ΥС���������ꤷ�ޤ���

--- runtime_dependencies -> Array

���� Gem �ѥå���������¸���Ƥ��� Gem �ѥå������Υꥹ�Ȥ��֤��ޤ���

--- satisfies_requirement?(dependency) -> bool

���� Gem �ѥå�������Ϳ����줿��¸�ط������������ɤ������֤��ޤ���

��¸�ط������������Ͽ����֤��ޤ��������Ǥʤ����ϵ����֤��ޤ���

@param dependency �����å���������¸�ط�����ꤷ�ޤ���

@see [[c:Gem::Dependency]]

--- signing_key -> String

���� Gem �ѥå������ν�̾�˻��Ѥ��륭�����֤��ޤ���

--- signing_key=(key)

���� Gem �ѥå������ν�̾�˻��Ѥ��륭���򥻥åȤ��ޤ���

@param key ��̾�˻��Ѥ��륭������ꤷ�ޤ���

--- specification_version -> Integer

���� Gem �ѥå��������Ѥ����Ƥ��� gemspec �ΥС��������֤��ޤ���

--- specification_version=(version)

���� Gem �ѥå��������Ѥ����Ƥ��� gemspec �ΥС������򥻥åȤ��ޤ���

@param version gemspec �ΥС���������ꤷ�ޤ���

@see [[m:Gem::Specification::SPECIFICATION_VERSION_HISTORY]]

--- summary -> String

���� Gem �ѥå�������û���������֤��ޤ���

--- summary=(summary)

���� Gem �ѥå�������û�������򥻥åȤ��ޤ���

@param summary û����������ꤷ�ޤ���

--- test_file -> String

[[m:Gem::Specification#test_files]] ��ñ���С������Ǥ���

--- test_file=(file)

[[m:Gem::Specification#test_files=]] ��ñ���С������Ǥ���

--- test_files -> [String]

��˥åȥƥ��ȤΥե�����Υꥹ�Ȥ��֤��ޤ���


--- test_files=(files)

��˥åȥƥ��ȤΥե�����Υꥹ�Ȥ򥻥åȤ��ޤ���

@param files ��˥åȥƥ��ȤΥե�����Υꥹ�Ȥ���ꤷ�ޤ���

--- test_suite_file -> String

����°������侩�Ǥ��� [[m:Gem::Specification#test_files]] ����Ѥ��Ƥ���������

--- test_suite_file=(file)

����°������侩�Ǥ��� [[m:Gem::Specification#test_files=]] ����Ѥ��Ƥ���������

@param file �ƥ��ȥ������ȤΥե��������ꤷ�ޤ���

--- to_ruby -> String

���Ȥ�Ƹ����뤿��� Ruby ������ץȤ�ʸ������֤��ޤ���

��ά����Ƥ����ͤϥǥե�����ͤ����Ѥ���ޤ���

--- validate -> bool

ɬ��°���Υ����å��ȼ��Ȥδ���Ū�������������å���Ԥ��ޤ���

�����å��˥ѥ��������Ͼ�� true ���֤��ޤ��������Ǥʤ������㳰��ȯ�����ޤ���

@raise Gem::InvalidSpecificationException �����å��˥ѥ����ʤ��ä�����ȯ�����ޤ���

--- version -> Gem::Version

���� Gem �ѥå������ΥС��������֤��ޤ���

--- version=(version)

���� Gem �ѥå������ΥС������򥻥åȤ��ޤ���

@param version �С�������ʸ���� [[c:Gem::Version]] �Υ��󥹥��󥹤ǻ��ꤷ�ޤ���

--- yaml_initialize
#@todo

== Singleton Methods

--- _load(str) -> Gem::Specification

�ޡ�����뤵�줿�ǡ�������ɤ��뤿��Υ᥽�åɤǤ���

@param str �ޡ�����뤵�줿�ǡ�������ꤷ�ޤ���

--- array_attribute(name) -> ()

[[m:Gem::Specification.attribute]] ��Ʊ���Ǥ������ͤ�����˳�Ǽ���륢����������ޤ���

@param name °����̾������ꤷ�ޤ���

@see [[m:Gem::Specification.attribute]]

--- array_attributes -> Array

@@array_attributes ��ʣ�����֤��ޤ���

@see [[m:Object#dup]]

--- attribute(name) -> ()

�ǥե�����ͤ���ꤷ������������������뤿��˻��Ѥ��ޤ���

�ʲ��������Ѥ�����ޤ���

 * ���饹�ѿ� @@attributes, @@default_value ���ѹ����ޤ���
 * �̾��°���񤭹��ߥ᥽�åɤ�������ޤ���
 * �ǥե�����ͤ����°���ɤ߼��᥽�åɤΤ褦�˿����񤦥᥽�åɤ�������ޤ���

--- attribute_alias_singular(singular, plural) -> ()

����¸�ߤ���ʣ������°����ñ�����С�������������ޤ���

�����ñ�˰�Ĥΰ����������ꤽ���������ɲä���褦�ʥإ�ѡ��᥽�åɤ��������Ȥ������ȤǤ���

��:

  # ���Τ褦����������
  attribute_alias_singular :require_path, :require_paths
  # �����񤯤�����
  s.require_paths = ['mylib']
  # �����񤯤��Ȥ��Ǥ��ޤ���
  s.require_path = 'mylib'

@param singular °��̾��ñ��������ꤷ�ޤ���

@param plural °��̾��ʣ��������ꤷ�ޤ���

--- attribute_defaults -> Array
#@todo

@@attributes ��ʣ�����֤��ޤ���

--- attribute_names -> Array

°��̾��������֤��ޤ���

--- attributes(*args) -> ()

ʣ����°������٤˺������뤿��˻��Ѥ��ޤ���

��°���Υǥե�����ͤ� nil �ˤʤ�ޤ���

@param args °��̾���İʾ���ꤷ�ޤ���

--- default_value(name) -> object

Ϳ����줿̾����°���Υǥե�����ͤ��֤��ޤ���

@param name °��̾����ꤷ�ޤ���

--- from_yaml(input) -> Gem::Specification

YAML �ե����뤫�� gemspec ����ɤ��ޤ���

YAML �ե����뤫�� [[c:Gem::Specification]] ����ɤ���ȡ��̾�� Ruby ���֥������Ȥ�
������롼���� (#initialize) ���̤�ޤ��󡣤��Υ᥽�åɤϽ�����롼����ΰ�����¹Ԥ���
gemspec �ΥС����������å���Ԥ��ޤ���

@param input ʸ���� [[c:IO]] ���֥������Ȥ���ꤷ�ޤ���

--- list -> Array

�¹���� Ruby �Υ��󥹥��󥹤Ǻ������줿 [[c:Gem::Specification]] �Υ��󥹥��󥹤��֤��ޤ���

--- load(filename) -> Gem::Specification

gemspec �ե��������ɤ��ޤ���

@param filename gemspec �Υե�����̾����ꤷ�ޤ���

@raise StandardError gemspec �ե�������Ǥ��Υ᥽�åɤ�Ƥ�Ǥ������ȯ�����ޤ���

--- normalize_yaml_input(input) -> String

YAML ������ gemspec ���������ե����ޥåȤ��ޤ���

@param input ʸ���� [[c:IO]] ���֥������Ȥ���ꤷ�ޤ���

--- overwrite_accessor(name){ ... } -> ()

�ƤӽФ��������̤�ư��򤹤�ɬ�פΤ���°��������ޤ���
���Υ᥽�åɤϤ����������Ȥ��ǽ�ˤ��ޤ���

�֥�å��ѥ�᡼����Ǥ�դΤ�Τ���Ѥ��뤳�Ȥ��Ǥ��ޤ���

@param name °��̾����ꤷ�ޤ���

--- read_only(*names) -> ()

Ϳ����줿°��̾���ɤ߼�����Ѥˤ��ޤ���

@param names °��̾���İʾ���ꤷ�ޤ���

--- required_attribute(name, default = nil) -> ()

ɬ�ܤ�°����������ޤ���

@param name °��̾����ꤷ�ޤ���

@param default �ǥե�����ͤ���ꤷ�ޤ���

@see [[m:Gem::Specification.attribute]]

--- required_attribute?(name) -> bool

ɬ��°���Ǥ���п����֤��ޤ���

@param name °��̾����ꤷ�ޤ���

--- required_attributes -> Array

ɬ��°���Υꥹ�Ȥ��֤��ޤ���


== Constants

--- CURRENT_SPECIFICATION_VERSION -> 2

���ߤ� gemspec �ΥС�������ɽ������Ǥ���


--- MARSHAL_FIELDS -> Hash
#@todo


--- NONEXISTENT_SPECIFICATION_VERSION -> -1

���Τ˻��ꤵ��Ƥ��ʤ����� gemspec �ΥС�������ɽ���ޤ���

--- SPECIFICATION_VERSION_HISTORY -> Hash

gemspec �ե�����ΥС���������ˤ�ɽ������Ǥ���

--- TODAY -> Time

���������դ��֤��ޤ���


