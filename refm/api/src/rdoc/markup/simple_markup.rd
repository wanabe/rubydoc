RDoc �������������줿�ץ쥤��ƥ����Ȥ��Ѵ����뤿��Υ��֥饤�֥��Ǥ���

#@since 1.9.1
[[c:RDoc::Markup]] �� RDoc �����Υɥ�����ȡ�Wiki ����ȥꡢWeb���
FAQ �ʤɤ����ꤷ���ץ쥤��ƥ����Ȥ����͡��ʥե����ޥåȤؤ��Ѵ���Ԥ�
�ġ��뷲�δ��äȤ��ƺ���Ƥ��ޤ���[[c:RDoc::Markup]] ���Ȥϲ��ν��Ϥ�
�Ԥ��ޤ���
#@else
[[c:SM::SimpleMarkup]] �� RDoc �����Υɥ�����ȡ�Wiki ����ȥꡢWeb
��� FAQ �ʤɤ����ꤷ���ץ쥤��ƥ����Ȥ����͡��ʥե����ޥåȤؤ��Ѵ���
�Ԥ��ġ��뷲�δ��äȤ��ƺ���Ƥ��ޤ���[[c:SM::SimpleMarkup]] ���Ȥϲ�
�ν��Ϥ�Ԥ��ޤ���
#@end
������ [[ref:output_format]] �Ǹ�Ҥ��륯�饹���˰Ѥͤ��Ƥ��ޤ���

=== Markup

����Ū�ˤϡ�[[ref:lib:rdoc#markup]] ��Ʊ���Ǥ�����������rdoc ���ޥ�ɤ�
�ϰۤʤꡢRuby �Υ����������ɤΥ�������ʬ�ǤϤʤ����ץ쥤��ƥ����Ȥ�
�Ѵ��оݤˤʤ�ޤ������Τ��ᡢ�ʲ��Τߤ��ե����ޥåȤ���ޤ���

 * [[ref:lib:rdoc#list]]
 * [[ref:lib:rdoc#labeled_list]]
 * [[ref:lib:rdoc#headline]]
 * [[ref:lib:rdoc#ruled_line]]
 * [[ref:lib:rdoc#italic_bold_typewriter]]
 * [[ref:lib:rdoc#escape]]

#@# TODO: 1.9.3 �Ǥ� =begin rdoc ... �ʤɤ���ѤǤ�������ɵ����롣

===[a:output_format] ���ϲ�ǽ�ʷ���

�Ѵ���������Ȥ��ưʲ��Τ����줫������Ǥ��ޤ���

#@since 1.9.1
 * HTML ����: [[c:RDoc::Markup::ToHtml]]
 * HTML ����: [[c:RDoc::Markup::ToHtmlCrossref]]
 * LaTex ����: [[c:RDoc::Markup::ToLaTeX]]
 * TexInfo ����: [[c:RDoc::Markup::ToTexInfo]]

�ޤ�������ʳ��˥��ޥ�ɥ饤��ɽ���ʤɤ����̤ʥե����ޥåȤˤ��������
�ˡ�[[c:RDoc::Markup::ToFlow]] ����ѤǤ��ޤ���(ri ���ޥ�ɤǻȤ��Ƥ�
�ޤ�)
#@else
 * HTML ����: [[c:SM::ToHtml]]
 * LaTex ����: [[c:SM::ToLaTeX]]

�ޤ�������ʳ��˥��ޥ�ɥ饤��ɽ���ʤɤ����̤ʥե����ޥåȤˤ��������
�ˡ�[[c:SM::ToFlow]] ����ѤǤ��ޤ���(ri ���ޥ�ɤǻȤ��Ƥ��ޤ�)
#@end

#@since 1.9.1
= class RDoc::Markup
#@else
= class SM::SimpleMarkup
#@end

RDoc �����Υɥ�����Ȥ���Ū�η������Ѵ����뤿��Υ��饹�Ǥ���

#@since 1.9.1
��:

  require 'rdoc/markup/to_html'

  h = RDoc::Markup::ToHtml.new
  puts h.convert(input_string)

�ȼ��Υե����ޥåȤ�Ԥ��褦�˥ѡ������ĥ�������Ǥ��ޤ���

#@until 1.9.3
[���] 1.9.3 ������ 1.9 �Ϥ� rdoc �Ǥ� [[c:RDoc::Markup::Formatter]] ��
�Х������뤿�ᡢ��������Τ褦�ʳ�ĥ���Ԥ��ޤ���1.9.3 �ʲ��Ǥ��Τ褦
�ʳ�ĥ��Ԥ��������� rdoc 3.7 �ʹߤ� RubyGems �ǥ��󥹥ȡ��뤷�Ƥ���
������
#@end

��:

  require 'rdoc/markup'
  require 'rdoc/markup/to_html'

  class WikiHtml < RDoc::Markup::ToHtml
    # WikiWord �Υե���Ȥ��֤�ɽ����
    def handle_special_WIKIWORD(special)
      "<font color=red>" + special.text + "</font>"
    end
  end

  m = RDoc::Markup.new
  # { �� } �ޤǤ� :STRIKE �ǥե����ޥåȤ��롣
  m.add_word_pair("{", "}", :STRIKE)
  # <no> �� </no> �ޤǤ� :STRIKE �ǥե����ޥåȤ��롣
  m.add_html("no", :STRIKE)

  # WikiWord ���ɲá�
  m.add_special(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

  wh = WikiHtml.new(m)
  # :STRIKE �Υե����ޥåȤ� <strike> �� </strike> �˻��ꡣ
  wh.add_tag(:STRIKE, "<strike>", "</strike>")

  puts "<body>#{wh.convert ARGF.read}</body>"

�Ѵ�����������ѹ������硢�ե����ޥå�(��. [[c:RDoc::Markup::ToHtml]])
���ѹ�����ĥ����ɬ�פ�����ޤ���
#@else
��:

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'

  m = SM::SimpleMarkup.new
  h = SM::ToHtml.new

  puts m.convert(input_string, h)

�ȼ��Υե����ޥåȤ�Ԥ��褦�˥ѡ������ĥ�������Ǥ��ޤ���

��:

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'

  class WikiHtml < SM::ToHtml
    # WikiWord �Υե���Ȥ��֤�ɽ����
    def handle_special_WIKIWORD(special)
      "<font color=red>" + special.text + "</font>"
    end
  end

  m = SM::SimpleMarkup.new
  # { �� } �ޤǤ� :STRIKE �ǥե����ޥåȤ��롣
  m.add_word_pair("{", "}", :STRIKE)
  # <no> �� </no> �ޤǤ� :STRIKE �ǥե����ޥåȤ��롣
  m.add_html("no", :STRIKE)

  # WikiWord ���ɲá�
  m.add_special(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

  h = WikiHtml.new
  # :STRIKE �Υե����ޥåȤ� <strike> �� </strike> �˻��ꡣ
  h.add_tag(:STRIKE, "<strike>", "</strike>")

  puts "<body>" + m.convert(ARGF.read, h) + "</body>"

�Ѵ�����������ѹ������硢�ե����ޥå�(��. [[c:SM::ToHtml]]) ���ѹ���
��ĥ����ɬ�פ�����ޤ���
#@end

== Constants

--- SPACE -> ?\s

����ʸ���Ǥ���?\s ���֤��ޤ����饤�֥��������ǻ��Ѥ��ޤ���

--- SIMPLE_LIST_RE -> Regexp

�ꥹ�Ȥ˥ޥå���������ɽ���Ǥ����饤�֥��������ǻ��Ѥ��ޤ���

��٥��̵ͭ����鷺�ޥå����ޤ���

--- LABEL_LIST_RE -> Regexp

��٥��դ��ꥹ�Ȥ˥ޥå���������ɽ���Ǥ����饤�֥��������ǻ��Ѥ��ޤ���

== Class Methods

#@since 1.9.1
#@since 1.9.3
--- new(attribute_manager = nil) -> RDoc::Markup
#@else
--- new -> RDoc::Markup
#@end
#@else
--- new -> SM:SimpleMarkup
#@end

���Ȥ��������ޤ���

#@since 1.9.3
@param attribute_manager [[c:Rdoc::AttributeManager]] ���֥������Ȥ��
                         �ꤷ�ޤ���
#@end

== Instance Methods

--- add_word_pair(start, stop, name) -> ()

start �� stop �ǤϤ��ޤ��ʸ����(��. *bold*)��ե����ޥåȤ��оݤˤ���
����

@param start ���ϤȤʤ�ʸ�������ꤷ�ޤ���

@param stop ��λ�Ȥʤ�ʸ�������ꤷ�ޤ���start ��Ʊ��ʸ����ˤ������
            ��ǽ�Ǥ���

@param name [[c:SM::ToHtml]] �ʤɤΥե����ޥå��˼��̤��������̾����
            [[c:Symbol]] �ǻ��ꤷ�ޤ���

@raise RuntimeError start �� "<" �ǻϤޤ�ʸ�������ꤷ������ȯ�����ޤ���

��:

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'
  m = SM::SimpleMarkup.new
  m.add_word_pair("{", "}", :STRIKE)

  h = SM::ToHtml.new
  h.add_tag(:STRIKE, "<strike>", "</strike>")
  puts m.convert(input_string, h)

�Ѵ����˼ºݤ˥ե����ޥåȤ�Ԥ��ˤ� [[m:SM::ToHtml#add_tag]] �Τ褦�ˡ�
�ե����ޥå�¦�Ǥ�����Ԥ�ɬ�פ�����ޤ���

--- add_html(tag, name) -> ()

tag �ǻ��ꤷ��������ե����ޥåȤ��оݤˤ��ޤ���

@param tag �ɲä��륿��̾��ʸ����ǻ��ꤷ�ޤ�����ʸ������ʸ���Τ�
           �������ꤷ�Ƥ�Ʊ��Τ�ΤȤ��ư����ޤ���

@param name [[c:SM::ToHtml]] �ʤɤΥե����ޥå��˼��̤��������̾����
            [[c:Symbol]] �ǻ��ꤷ�ޤ���

��:

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'
  m = SM::SimpleMarkup.new
  m.add_html("no", :STRIKE)

  h = SM::ToHtml.new
  h.add_tag(:STRIKE, "<strike>", "</strike>")
  puts m.convert(input_string, h)

�Ѵ����˼ºݤ˥ե����ޥåȤ�Ԥ��ˤ� [[m:SM::ToHtml#add_tag]] �Τ褦�ˡ�
�ե����ޥå�¦�Ǥ�����Ԥ�ɬ�פ�����ޤ���

--- add_special(pattern, name) -> ()

pattern �ǻ��ꤷ������ɽ���˥ޥå�����ʸ�����ե����ޥåȤ��оݤˤ���
����

�㤨�� WikiWord �Τ褦�ʡ�[[m:SM::SimpleMarkup#add_word_pair]]��
[[m:SM::SimpleMarkup#add_html]] �ǥե����ޥåȤǤ��ʤ���Τ��Ф��ƻ���
���ޤ���

@param pattern ����ɽ������ꤷ�ޤ���

@param name [[c:SM::ToHtml]] �ʤɤΥե����ޥå��˼��̤��������̾����
            [[c:Symbol]] �ǻ��ꤷ�ޤ���

��:

  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_html'

  class WikiHtml < SM::ToHtml
    def handle_special_WIKIWORD(special)
      "<font color=red>" + special.text + "</font>"
    end
  end

  m = SM::SimpleMarkup.new
  m.add_special(/\b([A-Z][a-z]+[A-Z]\w+)/, :WIKIWORD)

  h = WikiHtml.new
  puts m.convert(input_string, h)

�Ѵ����˼ºݤ˥ե����ޥåȤ�Ԥ��ˤ� SM::ToHtml#accept_special_<name �ǻ��ꤷ��̾��>
�Τ褦�ˡ��ե����ޥå�¦�Ǥ�����Ԥ�ɬ�פ�����ޤ���

--- convert(str, formatter) -> object | ""

str �ǻ��ꤵ�줿ʸ����� formatter ���Ѵ������ޤ���

@param str �Ѵ�����ʸ�������ꤷ�ޤ���

@param formatter [[c:SM::ToHtml]]��[[c:SM::ToLaTeX]] �ʤɤΥ��󥹥���
                 ����ꤷ�ޤ���

�Ѵ���̤� formatter �ˤ�ä�ʸ�����������֤��ޤ���

--- content -> String

�Ѵ�����ʸ������֤��ޤ���

rdoc �饤�֥��ΥǥХå����Ӥ˻��Ѥ��ޤ���
[[m:SM::SimpleMarkup#convert]] �θ�˼¹Ԥ��ޤ���

�Ѵ��Τ���˲ù��������֥������Ȥ���Ԥ�Ϣ�뤷����Τ��֤����ᡢ�Ѵ���
��ʸ����ȷ�̤��ۤʤ��������ޤ���

@see [[m:SM::SimpleMarkup#convert]]

--- get_line_types -> [Symbol]

�Ѵ�����ʸ����γƹԤΥ����פ� [[c:Symbol]] ��������֤��ޤ���

rdoc �饤�֥��ΥǥХå����Ӥ˻��Ѥ��ޤ���
[[m:SM::SimpleMarkup#convert]] �θ�˼¹Ԥ��ޤ���

@see [[m:SM::SimpleMarkup#convert]]

#@since 1.9.3
--- attribute_manager -> RDoc::AttributeManager

���Ȥ� [[c:RDoc::AttributeManager]] ���֥������Ȥ��֤��ޤ���
#@end
