require rdoc/parsers/parse_simple

rdoc �ǲ��ϤǤ���ե�����μ�����ɲä��뤿��Υ��֥饤�֥��Ǥ���

�ʲ��Υ᥽�åɤ�����������饹�����������ǡ��������ѡ������饹�����
��������Ǥ��ޤ���

 * #initialize(top_level, file_name, body, options, stats)
 * #scan

initialize �᥽�åɤϰʲ��ΰ�����������ޤ���

 * top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���
 * file_name: file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���
 * body: �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���
 * options: [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���
 * stats: [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

scan �᥽�åɤϰ�����������ޤ��󡣽����θ��ɬ��
[[c:RDoc::TopLevel]] ���֥������Ȥ��֤�ɬ�פ�����ޤ���

�ޤ���[[c:RDoc::ParserFactory]] �ϥե�����̾����ѡ������饹���������
�Τˤ�Ȥ��ޤ������Τ���ˡ���������������ѡ������饹�Ǥ�
[[c:RDoc::ParserFactory]] �� extend ����parse_files_matching �᥽�åɤ�
���Ȥ����ϤǤ���ե�����̾�Υѥ��������Ͽ���Ƥ���ɬ�פ�����ޤ���

��:

   require "rdoc/parsers/parsefactory"
   
   module RDoc

     class XyzParser
       extend ParserFactory                 <<<<
       parse_files_matching /\.xyz$/        <<<<

       def initialize(file_name, body, options, stats)
         ...
       end

       def scan
         ...
       end
     end
   end

= module RDoc::ParserFactory

�����������ɤ���Ϥ���ѡ������������뤿��Υե����ȥꥯ�饹�Ǥ���

�������ѡ��������������ˤ� extend ������ǻ��Ѥ��ޤ���

== class Methods

--- can_parse(file_name) -> RDoc::C_Parser | RDoc::RubyParser | RDoc::Fortran95parser | nil

file_name ����ϤǤ���ѡ������饹���֤��ޤ������Ĥ���ʤ��ä�����
nil ���֤��ޤ���

@param file_name ���Ϥ���ե������̾������ꤷ�ޤ���

--- alias_extension(old_ext, new_ext) -> bool

old_ext ����Ͽ���줿�ѡ����� new_ext �Ǥ���ϤǤ���褦�˥����ꥢ������
Ͽ���ޤ���

@param old_ext ��ĥ�Ҥ�ʸ����ǻ��ꤷ�ޤ���

@param new_ext ��ĥ�Ҥ�ʸ����ǻ��ꤷ�ޤ���

@return �����ꥢ������Ͽ���줿���� true ���֤��ޤ���old_ext �˥ѡ���
        ����Ͽ����Ƥ��ʤ���硢�����ꥢ������Ͽ���줺�� false ���֤���
        ����

--- parser_for(top_level, file_name, body, options, stats) -> RDoc::C_Parser | RDoc::RubyParser | RDoc::Fortran95parser | RDoc::SimpleParser

file_name ����ϤǤ���ѡ����Υ��󥹥��󥹤��֤��ޤ������Ĥ���ʤ��ä�
���� [[c:RDoc::SimpleParser]] �Υ��󥹥��󥹤��֤��ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- parse_files_matching(regexp) -> ()

regexp �ǻ��ꤷ������ɽ���˥ޥå�����ե��������ϤǤ���ѡ����Ȥ��ơ�
���Ȥ���Ͽ���ޤ���

@param regexp ����ɽ������ꤷ�ޤ���

�������ѡ��������������˻��Ѥ��ޤ���

��:

  class XyzParser
    extend ParserFactory
    parse_files_matching /\.xyz$/
    ...
  end
