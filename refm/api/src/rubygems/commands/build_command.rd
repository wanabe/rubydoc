require rubygems/command
require rubygems/builder

Gem �ѥå�������ӥ�ɤ��뤿��Υ饤�֥��Ǥ���


  Usage: gem build GEMSPEC_FILE [options]
#@include(common_options)
    Arguments:
      GEMSPEC_FILE  Gem �ѥå�������ӥ�ɤ���Τ�ɬ�פ� gemspec �ե�����̾����ꤷ�ޤ�
    Summary:
      gemspec �ե����뤫�� Gem �ѥå�������ӥ�ɤ��ޤ�


= class Gem::Commands::BuildCommand < Gem::Command

Gem �ѥå�������ӥ�ɤ��뤿��Υ��饹�Ǥ���

== Public Instance Methods

--- execute -> ()

���ޥ�ɤ�¹Ԥ��ޤ���

--- load_gemspecs(filename) -> Array

gemspec �ե��������ɤ��ޤ���

@param filename �ե�����̾����ꤷ�ޤ���

--- usage -> String

������ˡ��ɽ��ʸ������֤��ޤ���

--- arguments -> String

������������ɽ��ʸ������֤��ޤ���

--- yaml?(filename) -> bool

Ϳ����줿�ե�����̾����ĥե����뤬 yaml �ե�����Ǥ�����˿����֤��ޤ���

@param filename �ե�����̾����ꤷ�ޤ���
