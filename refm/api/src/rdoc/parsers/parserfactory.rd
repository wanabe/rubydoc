#@since 1.9.1
require rdoc
#@# require rdoc/code_objects
#@# require rdoc/markup/preprocess
require rdoc/stats
require rdoc/parser/simple
#@else
require rdoc/parsers/parse_simple
#@end

rdoc �ǲ��ϤǤ���ե�����μ�����ɲä��뤿��Υ��֥饤�֥��Ǥ���

�ʲ��Υ᥽�åɤ�����������饹�����������ǡ��������ѡ������饹�����
��������Ǥ��ޤ���

 * #initialize(top_level, file_name, body, options, stats)
 * #scan

initialize �᥽�åɤϰʲ��ΰ�����������ޤ���

 * top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���
 * file_name: file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���
 * body: �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���
#@since 1.9.1
 * options: [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���
#@else
 * options: [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���
#@end
 * stats: [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

scan �᥽�åɤϰ�����������ޤ��󡣽����θ��ɬ��
[[c:RDoc::TopLevel]] ���֥������Ȥ��֤�ɬ�פ�����ޤ���

#@since 1.9.1
�ޤ���[[c:RDoc::Parser]] �ϥե�����̾����ѡ������饹���������Τˤ��
���ޤ������Τ���ˡ���������������ѡ������饹�Ǥ� [[c:RDoc::Parser]]
��Ѿ�����parse_files_matching �᥽�åɤǼ��Ȥ����ϤǤ���ե�����̾�Υ�
���������Ͽ���Ƥ���ɬ�פ�����ޤ���

��:

  require "rdoc/parser"
  
  class RDoc::Parser::Xyz < RDoc::Parser
    parse_files_matching /\.xyz$/
  
    def initialize(file_name, body, options)
      ...
    end
  
    def scan
      ...
    end
  end

#@else
�ޤ���[[c:RDoc::ParserFactory]] �ϥե�����̾����ѡ������饹���������
�Τˤ�Ȥ��ޤ������Τ���ˡ���������������ѡ������饹�Ǥ�
[[c:RDoc::ParserFactory]] �� extend ����parse_files_matching �᥽�åɤ�
���Ȥ����ϤǤ���ե�����̾�Υѥ��������Ͽ���Ƥ���ɬ�פ�����ޤ���

��:

   require "rdoc/parsers/parserfactory"
   
   module RDoc

     class XyzParser
       extend ParserFactory
       parse_files_matching /\.xyz$/

       def initialize(top_level, file_name, body, options, stats)
         ...
       end

       def scan
         ...
       end
     end
   end

#@end

#@since 1.9.1
= class RDoc::Parser

�����������ɤ���Ϥ���ѡ������������뤿��δ��ܥ��饹�Ǥ���

�������ѡ��������������ˤϷѾ����ƻ��Ѥ��ޤ���
#@else
= module RDoc::ParserFactory

�����������ɤ���Ϥ���ѡ������������뤿��Υե����ȥꥯ�饹�Ǥ���

�������ѡ��������������ˤ� extend ���ƻ��Ѥ��ޤ���

[���] 1.9 �ϤǤϡ�require ��䥯�饹̾���ʲ��Τ褦���ѹ��ˤʤ�ޤ�����

 * require ��: rdoc/parser
 * ���饹̾: RDoc::Parser
#@end

== class Methods

#@since 1.9.1
--- can_parse(file_name) -> RDoc::Parser | nil
#@else
--- can_parse(file_name) -> RDoc::C_Parser | RDoc::RubyParser | RDoc::Fortran95parser | nil
#@end

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

#@since 1.9.1
--- parser_for(top_level, file_name, body, options, stats) -> RDoc::Parser
#@else
--- parser_for(top_level, file_name, body, options, stats) -> RDoc::C_Parser | RDoc::RubyParser | RDoc::Fortran95parser | RDoc::SimpleParser
#@end

file_name ����ϤǤ���ѡ����Υ��󥹥��󥹤��֤��ޤ���
#@since 1.9.1
���Ĥ���ʤ��ä����� [[c:RDoc::Parser::Simple]] �Υ��󥹥��󥹤��֤��ޤ���
#@else
���Ĥ���ʤ��ä����� [[c:RDoc::SimpleParser]] �Υ��󥹥��󥹤��֤��ޤ���
#@end

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.1
@param options [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���
#@else
@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���
#@end

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

#@since 1.9.1
--- parsers -> [[Regexp, RDoc::Parser]]

[[m:RDoc::Parser#parse_files_matching]] ����Ͽ��������ɽ���ȥѡ�������
���������������֤��ޤ���
#@end

== Instance Methods

--- parse_files_matching(regexp) -> ()

regexp �ǻ��ꤷ������ɽ���˥ޥå�����ե��������ϤǤ���ѡ����Ȥ��ơ�
���Ȥ���Ͽ���ޤ���

@param regexp ����ɽ������ꤷ�ޤ���

�������ѡ��������������˻��Ѥ��ޤ���

��:

#@since 1.9.1
  class RDoc::Parser::Xyz < RDoc::Parser
    parse_files_matching /\.xyz$/
    ...
  end
#@else
  class XyzParser
    extend ParserFactory
    parse_files_matching /\.xyz$/
    ...
  end
#@end
