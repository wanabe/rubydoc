#@since 1.9.1
#@# require rdoc/ri/paths
require optparse
#@else
#@# require rdoc/ri/ri_paths
require singleton
require getoptlong
#@end

rdoc ���ޥ�ɤΥ��ץ�������Ϥ��뤿��Υ��֥饤�֥��Ǥ���

#@since 1.9.1
= class RDoc::Options
#@else
= class Options

include Singleton
#@end

rdoc ���ޥ�ɤΥ��ץ�������Ϥ��뤿��Υ��饹�Ǥ���

���줾��Υ��ץ����ξܺ٤˴ؤ��Ƥϡ�[[ref:lib:rdoc#usage]] �򻲾Ȥ��Ƥ���
������

#@until 1.9.1
[���] ���饹̾�� RDoc::Option �ǤϤʤ�������դ��Ƥ���������(1.9 �Ϥ�
�� RDoc::Option ���饹�Ȥ��ƻ��ѤǤ��ޤ���)
#@end

== Instance Methods

--- exclude -> Regexp

���ޥ�ɥ饤������� --exclude ���ץ����ǻ��ꤷ������ɽ�����֤��ޤ���
ʣ�����ꤷ�Ƥ������ϡ�1 �Ĥ� [[c:Regexp]] ���֥������ȤˤޤȤ��줿
��Τ��֤��ޤ���

--- exclude=(val)

���ޥ�ɥ饤������� --exclude ���ץ�����Ʊ�ͤλ����Ԥ��ޤ���

@param val ���ꤹ��ѥ������ [[c:Regexp]] ���֥������Ȥǻ��ꤷ�ޤ���

--- op_dir -> String

���ޥ�ɥ饤������� --op ���ץ����ǻ��ꤷ���ǥ��쥯�ȥ���֤��ޤ���

--ri��--ri-site��--ri-system ���ץ����ˤ�ƶ�����������դ��Ƥ���������

@return ���ꤵ�줿�ǥ��쥯�ȥ��ʸ������֤��ޤ���

--- op_dir=(val)

���ޥ�ɥ饤������� --op ���ץ�����Ʊ�ͤλ����Ԥ��ޤ���

@param val ���ꤹ��ǥ��쥯�ȥ��ʸ����ǻ��ꤷ�ޤ���

--- op_name -> String

���ޥ�ɥ饤������� --opname ���ץ����ǻ��ꤷ��̾����ʸ������֤���
����

--- show_all -> bool

���ޥ�ɥ饤������� --all ���ץ�������ꤷ�Ƥ�����硢true ���֤���
���������Ǥʤ����� false ���֤��ޤ���

--- show_all=(val)

val �� true ����ꤷ����硢���ޥ�ɥ饤������� --all ���ץ�����Ʊ��
�λ����Ԥ��ޤ���

@param val --all ���ץ�����Ʊ�������Ԥ����� true�������Ǥʤ����
           �� false ����ꤷ�ޤ���

--- main_page -> String | nil

���ޥ�ɥ饤������� --main ���ץ����ǻ��ꤷ���ե�����̾�����饹/��
���塼��̾���֤��ޤ���

���ꤷ�ʤ��ä����� nil ���֤��ޤ���

--- main_page=(val)

���ޥ�ɥ饤������� --main ���ץ�����Ʊ�ͤλ����Ԥ��ޤ���

@param val ���ꤹ��ե�����̾�����饹/�⥸�塼��̾��ʸ����ǻ��ꤷ�ޤ���

--- merge -> true | nil

���ޥ�ɥ饤������� --merge ���ץ�������ꤷ�Ƥ�����硢true ���֤�
�ޤ��������Ǥʤ����� nil ���֤��ޤ���

--- quiet -> bool

���ޥ�ɥ饤������� --quiet ���ץ�������ꤷ�Ƥ�����硢true ���֤�
�ޤ��������Ǥʤ����� nil ���֤��ޤ���

--- generator -> Generator

���ޥ�ɥ饤������� --fmt ���ץ����ǻ��ꤷ��ʸ����˱�����
Generator ���֤��ޤ���

���ꤷ�ʤ��ä����ϡ�HTML ���б����� Generator ���֤��ޤ���

--- generator=(val)

���ޥ�ɥ饤������� --fmt ���ץ�����Ʊ�ͤλ����Ԥ��ޤ���

@param val ���ꤹ�� Generator ����ꤷ�ޤ���

--- files -> [String]

���Ϥ���ե�����ΰ�����ʸ�����������֤��ޤ���

--- rdoc_include -> [String]

���ޥ�ɥ饤������� --include ���ץ����ǻ��ꤷ���ǥ��쥯�ȥ��ʸ����
��������֤��ޤ���

���ꤷ�ʤ��ä����� ['.'] ���֤��ޤ���

--- template -> String

���ޥ�ɥ饤������� --template ���ץ����ǻ��ꤷ��̾����ʸ���������
���֤��ޤ���

���ꤷ�ʤ��ä����� 'html' ���֤��ޤ���

--- diagram -> bool

���ޥ�ɥ饤������� --diagram ���ץ�������ꤷ�Ƥ�����硢true ����
���ޤ��������Ǥʤ����� false ���֤��ޤ���

--- fileboxes -> bool

���ޥ�ɥ饤������� --diagram ���ץ����--fileboxes ���ץ��������
���Ƥ�����硢true ���֤��ޤ��������Ǥʤ����� false ���֤��ޤ���

--- show_hash -> bool

���ޥ�ɥ饤������� --show-hash ���ץ�������ꤷ�Ƥ�����硢true ��
�֤��ޤ��������Ǥʤ����� false ���֤��ޤ���

--- image_format -> String

���ޥ�ɥ饤������� --image-format ���ץ����ǻ��ꤷ��̾����ʸ�����
������֤��ޤ���

���ꤷ�ʤ��ä����� 'png' ���֤��ޤ���

--- charset -> String

���ޥ�ɥ饤������� --charset ���ץ����ǻ��ꤷ��ʸ�������ɤ�ʸ�����
�֤��ޤ���

���ꤷ�ʤ��ä����ϡ�[[m:$KCODE]] �˱������ͤˤʤ�ޤ���

--- inline_source -> bool

���ޥ�ɥ饤������� --inline-source ���ץ���� --one-file ����ꤷ��
������硢�⤷���� --fmt ���ץ����� xml ���ꤷ������ true ���֤���
���������Ǥʤ����� false ���֤��ޤ���

--- all_one_file -> bool

���ޥ�ɥ饤������� --one-file ����ꤷ�Ƥ�����硢�⤷���� --fmt ����
������ xml ���ꤷ������ true ���֤��ޤ��������Ǥʤ����� false ��
�֤��ޤ���

--- tab_width -> Integer

���ޥ�ɥ饤������� --tab-width ���ץ����ǻ��ꤷ�����ͤ��֤��ޤ���

--- include_line_numbers -> bool

���ޥ�ɥ饤������� --include-line-numbers ����ꤷ�Ƥ������� true
���֤��ޤ��������Ǥʤ����� false ���֤��ޤ���

--- extra_accessors -> Regexp | nil

���ޥ�ɥ饤������� --accessor ���ץ����ǻ��ꤷ������������̾������
�Ƥ˥ޥå���������ɽ�����֥������Ȥ��֤��ޤ���

���ꤷ�ʤ��ä����� nil ���֤��ޤ���

--- extra_accessor_flags -> {String => String}

���ޥ�ɥ饤������� --accessor ���ץ����ǻ��ꤷ��������������������
�������μ��ब�ͤΥϥå�����֤��ޤ���

�ͤ� r��w��rw �Τ����줫�Ǥ������줾�� attr_reader��attr_writer��
attr_accessor ���б����ޤ���

--- css -> String

���ޥ�ɥ饤������� --style ���ץ����ǻ��ꤷ�� URL ��ʸ������֤���
����

--- webcvs -> String | nil

���ޥ�ɥ饤������� --webcvs ���ץ����ǻ��ꤷ�� URL ��ʸ������֤���
����

���ꤷ�ʤ��ä����� nil ���֤��ޤ���

--- promiscuous

���ޥ�ɥ饤������� --promiscuous ����ꤷ�Ƥ������� true ���֤��ޤ���
�����Ǥʤ����� false ���֤��ޤ���

--- force_update -> bool

���ޥ�ɥ饤������� --force_update ����ꤷ�Ƥ������� true ���֤���
���������Ǥʤ����� false ���֤��ޤ���

#@since 1.9.1
--- parse(argv) -> ()
#@else
--- parse(argv, generators) -> ()
#@end

���ޥ�ɥ饤���������Ϥ��ޤ���

@param argv ���ޥ�ɥ饤�������ʸ���������ǻ��ꤷ�ޤ���

#@until 1.9.1
@param generators Generator ���������ꤷ�ޤ���
#@end

�ޤ����ʲ��Τ褦�ʻ���򤷤�����ɸ�२�顼�˽��Ϥ�Ԥ�����λ������ 1
�ǥץ�����λ���ޤ���

 * --extension ���ץ����˳�ĥ�Ҥ� 2 �Ļ��ꤷ�ʤ��ä����
 * --extension ���ץ����� new=old ����ꤷ������ old �򰷤���ե����ޥ�
   �����ʤ����
 * --fmt ���ץ����˰����ʤ����Ϥ���ꤷ�����
#@until 1.9.1
 * --image-format ���ץ�������ꤷ�����ˡ����ꤷ���ե����ޥåȤ� png��
   gif��jpeg��jpg �Τ�����Ǥ�ʤ��ä����
 * --tab-width ���ץ����˿��Ͱʳ�����ꤷ�����
#@end

#@since 1.9.1
--- title -> String | nil

�ɥ�����ȤΥ����ȥ���֤��ޤ������ꤵ��Ƥ��ʤ����� nil ���֤��ޤ���

#@else
--- title -> String | "RDoc Documentation"

�ɥ�����ȤΥ����ȥ���֤��ޤ������ꤵ��Ƥ��ʤ����� "RDoc
Documentation" ���֤��ޤ���
#@end

--- title=(string)

�ɥ�����ȤΥ����ȥ뤬�ޤ����ꤵ��Ƥ��ʤ����� string �ǻ��ꤷ��ʸ
��������ꤷ�ޤ���

���ޥ�ɥ饤������Ǵ��� --title ���ץ���󤬻��ꤵ��Ƥ������ˤϡ���
�����ͥ�褷�ޤ���

@param string ���ꤹ�륿���ȥ��ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.1

--- formatter -> nil

���Ѥ���Ƥ��ޤ��󡣾�� nil ���֤��ޤ���

#@# ���ʤ��Ȥ� --fmt ���ץ����� @generator_name ���ͤ��������롣����
#@# ��ʤ���

--- formatter=(val)

���Ѥ���Ƥ��ޤ���

--- verbosity -> 0 | 1 | 2

�ץ����β��ϻ���ɽ���������ξܺ٤�����ͤ��֤��ޤ���

�ʲ����ͤ���ꤹ������Ǥ��ޤ���

: 0(--quiet ���ץ�������ꤷ�����)

  �����ɽ�����ޤ���

: 1

  �̾��ɽ����Ԥ��ޤ���

: 2(--verbose ���ץ�������ꤷ�����)

  �ܺ٤ʾ����ɽ�����ޤ���

--- verbosity=(val)

�ץ����β��ϻ���ɽ���������ξܺ٤�����ͤǻ��ꤷ�ޤ���

@param val ����ɽ�����ʤ����� 0���̾��ɽ����Ԥ����� 1���ܺ٤�ɽ��
           ��Ԥ����� 2 ����ꤷ�ޤ���

@see [[m:RDoc::Options#verbosity]]

#@end

#@since 1.9.2
--- pipe -> bool

���ޥ�ɥ饤������� --pipe ���ץ�������ꤷ�Ƥ�����硢true ���֤���
���������Ǥʤ����� false ���֤��ޤ���

--- pipe=(val)

val �� true ����ꤷ����硢���ޥ�ɥ饤������� --pipe ���ץ�����Ʊ
�ͤλ����Ԥ��ޤ���

@param val --pipe ���ץ�����Ʊ�������Ԥ����� true�������Ǥʤ����
           �� false ����ꤷ�ޤ���

#@end

#@since 1.9.3
--- dry_run

#@todo

--- dry_run=(val)

#@todo

--- encoding

#@todo

--- encoding=(val)

#@todo

--- force_output

#@todo

--- force_output=(val)

#@todo

--- generator_options

#@todo

--- generator_options=(val)

#@todo

--- hyperlink_all

#@todo

--- hyperlink_all=(val)

#@todo

--- line_numbers

#@todo

--- line_numbers=(val)

#@todo

--- coverage_report

#@todo

--- coverage_report=(val)

#@todo

--- option_parser

#@todo

--- option_parser=(val)

#@todo

--- template_dir

#@todo

--- template_dir=(val)

#@todo

--- update_output_dir

#@todo

--- update_output_dir=(val)

#@todo

--- visibility

#@todo

--- visibility=(val)

#@todo

#@end

#@# 1.8 �Ϥ� Options::OptionList �ˤĤ��Ƥϡ����������ǻ��Ѥ��Ƥ��뤿�ᡢ
#@# ���Ҥ��ʤ���
