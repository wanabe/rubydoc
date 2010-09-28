require rake
require rake/tasklib

�ɥ�����Ȥ�������뤿��Υ�������������ޤ���

�ʲ��Υ�������������ޤ���

: rdoc
  RDoc ��������ޤ���
: clobber_rdoc
  �������줿 RDoc �Υե�����������ޤ���
  ���Υ������� clobber �������ˤ��ɲä���ޤ���
: rerdoc
  ����¸�ߤ��� RDoc ���Ť��ʤ��Ƥ� RDoc ��������ޤ���


��:
   Rake::RDocTask.new do |rd|
     rd.main = "README.rdoc"
     rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
   end

��:
   # RDoc ���������̤�̾�����դ�����
   Rake::RDocTask.new(:rdoc_dev) do |rd|
     rd.main = "README.doc"
     rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
     rd.options << "--all"
   end

= class Rake::RDocTask < Rake::TaskLib

== Public Instance Methods

--- define -> self

��������������ޤ���

--- external -> bool

�����ͤ����ξ��ϳ����Υ������ͳ�� rdoc ���ޥ�ɤ�¹Ԥ��ޤ���
�ǥե���Ȥϵ��Ǥ���

--- external=(flag)

�����Υ������ͳ�� rdoc ���ޥ�ɤ�¹Ԥ��뤫�ɤ������åȤ��ޤ���

@param flag ���ޤ��ϵ�����ꤷ�ޤ���

--- main -> String

�ᥤ��Ȥ��ƻ��Ѥ����ե�����̾���֤��ޤ���

--- main=(filename)

�ᥤ��Ȥ��ƻ��Ѥ����ե�����̾�򥻥åȤ��ޤ���

--- name -> String

��������̾�����֤��ޤ����ǥե���Ȥ� rdoc �Ǥ���

--- name=(name)

��������̾���򥻥åȤ��ޤ���

@param name ��������̾������ꤷ�ޤ���

--- option_list -> Array

rdoc ���ޥ�ɤ��Ϥ����ץ����Υꥹ�Ȥ��֤��ޤ���

--- option_string -> String

rdoc ���ޥ�ɤ��Ϥ����ץ�����ʸ����Ȥ����֤��ޤ���

--- options -> Array

rdoc ���ޥ�ɤ��Ϥ����ץ����Υꥹ�Ȥ��֤��ޤ���

����Ǥ��륪�ץ����� -o, --main, --title, -T �ʳ��Ǥ���

--- options=(options)

rdoc ���ޥ�ɤ��Ϥ����ץ����Υꥹ�Ȥ򥻥åȤ��ޤ���

@param options rdoc ���ޥ�ɤ��Ϥ���륪�ץ�������ꤷ�ޤ���

--- quote(str) -> String

[[m:Rake::RDocTask#external]] �����ξ���Ϳ����줿ʸ����򥯥����Ȥ��ޤ���

@param str �������Ȥ���ʸ�������ꤷ�ޤ���

--- rdoc_dir -> String

�������� HTML �ե��������¸����ǥ��쥯�ȥ�̾���֤��ޤ���
�ǥե���Ȥ� html �Ǥ���

--- rdoc_dir=(dir)

�������� HTML �ե��������¸����ǥ��쥯�ȥ�̾�򥻥åȤ��ޤ���

--- rdoc_files -> Rake::FileList

RDoc �������˻��Ѥ���ե�����ꥹ�Ȥ��֤��ޤ���
�ǥե���Ȥ϶��Ǥ���

--- rdoc_files=(filelist)

RDoc �������˻��Ѥ���ե�����ꥹ�Ȥ򥻥åȤ��ޤ���

@param filelist �ե�����ꥹ�Ȥ���ꤷ�ޤ���

--- template -> String

���Ѥ���ƥ�ץ졼�Ȥ��֤��ޤ���
�ǥե���Ȥ� RDoc �Υǥե���ȤǤ���

--- template=(template)

���Ѥ���ƥ�ץ졼�Ȥ򥻥åȤ��ޤ���

@param template ���Ѥ���ƥ�ץ졼�Ȥ���ꤷ�ޤ���

--- title -> String

RDoc �Υ����ȥ���֤��ޤ���
�ǥե�����ͤϤ���ޤ���

--- title=(title)

RDoc �Υ����ȥ�򥻥åȤ��ޤ���

@param title �����ȥ����ꤷ�ޤ���

== Singleton Methods

--- new(name = :rdoc){|pkg| ... } -> Rake::RDocTask

���Ȥ��������� RDoc ��������������ޤ���

�֥�å���Ϳ����줿���ϡ����Ȥ�֥�å��ѥ�᡼���Ȥ���
�֥�å���ɾ�����ޤ���

@param name ��������̾������ꤷ�ޤ���
