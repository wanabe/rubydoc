SimpleMarkup parses plain text documents and attempts to decompose
them into their constituent parts. Some of these parts are high-level:
paragraphs, chunks of verbatim text, list entries and the like. Other
parts happen at the character level: a piece of bold text, a word in
code font. This markup is similar in spirit to that used on WikiWiki
webs, where folks create web pages using a simple set of formatting
rules.

SimpleMarkup itself does no output formatting: this is left to a
different set of classes.

SimpleMarkup is extendable at runtime: you can add new markup
elements to be recognised in the documents that SimpleMarkup parses.

SimpleMarkup is intended to be the basis for a family of tools which
share the common requirement that simple, plain-text should be
rendered in a variety of different output formats and media. It is
envisaged that SimpleMarkup could be the basis for formating RDoc
style comment blocks, Wiki entries, and online FAQs.

=== Basic Formatting

#@todo: ������ͤ��롣
//emlist{
 * SimpleMarkup looks for a document's natural left margin. This
   isused as the initial margin for the document.

 * Consecutive lines starting at this margin are considered to be a
   paragraph.

 * If a paragraph starts with a "*", "-", or with "<digit>.", then it is
   taken to be the start of a list. The margin in increased to be the
   first non-space following the list start flag. Subsequent lines
   should be indented to this new margin until the list ends. For
   example:

     * this is a list with three paragraphs in
       the first item. This is the first paragraph.

       And this is the second paragraph.

       1. This is an indented, numbered list.
       2. This is the second item in that list

       This is the third conventional paragraph in the
       first list item.

     * This is the second item in the original list

 * You can also construct labeled lists, sometimes called description
   or definition lists. Do this by putting the label in square brackets
   and indenting the list body:

      [cat]  a small furry mammal
             that seems to sleep a lot

      [ant]  a little insect that is known
             to enjoy picnics

   A minor variation on labeled lists uses two colons to separate the
   label from the list body:

      cat::  a small furry mammal
             that seems to sleep a lot

      ant::  a little insect that is known
             to enjoy picnics

   This latter style guarantees that the list bodies' left margins are
   aligned: think of them as a two column table.

 * Any line that starts to the right of the current margin is treated
   as verbatim text. This is useful for code listings. The example of a
   list above is also verbatim text.

 * A line starting with an equals sign (=) is treated as a
   heading. Level one headings have one equals sign, level two headings
   have two,and so on.

 * A line starting with three or more hyphens (at the current indent)
   generates a horizontal rule. THe more hyphens, the thicker the rule
   (within reason, and if supported by the output device)

 * You can use markup within text (except verbatim) to change the
   appearance of parts of that text. Out of the box, SimpleMarkup
   supports word-based and general markup.

   Word-based markup uses flag characters around individual words:

    [\*word*]  displays word in a *bold* font
    [\_word_]  displays word in an _emphasized_ font
    [\+word+]  displays word in a +code+ font

   General markup affects text between a start delimiter and and end
   delimiter. Not surprisingly, these delimiters look like HTML markup.

    [\<b>text...</b>]    displays word in a *bold* font
    [\<em>text...</em>]  displays word in an _emphasized_ font
    [\<i>text...</i>]    displays word in an _emphasized_ font
    [\<tt>text...</tt>]  displays word in a +code+ font

   Unlike conventional Wiki markup, general markup can cross line
   boundaries. You can turn off the interpretation of markup by
   preceding the first character with a backslash, so \\\<b>bold
   text</b> and \\\*bold* produce \<b>bold text</b> and \*bold
   respectively.
//}

= class SM::SimpleMarkup

rdoc �����Υɥ�����Ȥ���Ū�η������Ѵ����뤿��Υ��饹�Ǥ���

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

  puts "<body>" + p.convert(ARGF.read, h) + "</body>"

�Ѵ�����������ѹ������硢�ե����ޥå�(��. [[c:SM::ToHtml]]) ���ѹ���
��ĥ����ɬ�פ�����ޤ���

=== ���ϲ�ǽ�ʷ���

�Ѵ���������Ȥ��ưʲ��Τ����줫������Ǥ��ޤ���

 * HTML ����: [[c:SM::ToHtml]]
 * LaTex ����: [[c:SM::ToLatex]]

�ޤ�������ʳ��˥��ޥ�ɥ饤��ɽ���ʤɤ����̤ʥե����ޥåȤˤ��������
�ˡ��ʲ��Υ��֥饤�֥�����ѤǤ��ޤ���(ri ���ޥ�ɤǻȤ��Ƥ��ޤ�)

 * [[c:SM::ToFlow]]

== Constants

--- SPACE -> ?\s

����ʸ���Ǥ���?\s ���֤��ޤ����饤�֥��������ǻ��Ѥ��ޤ���

--- SIMPLE_LIST_RE -> Regexp

�ꥹ�Ȥ˥ޥå���������ɽ���Ǥ����饤�֥��������ǻ��Ѥ��ޤ���

��٥��̵ͭ����鷺�ޥå����ޤ���

--- LABEL_LIST_RE -> Regexp

��٥��դ��ꥹ�Ȥ˥ޥå���������ɽ���Ǥ����饤�֥��������ǻ��Ѥ��ޤ���

== Class Methods

--- new -> SM:SimpleMarkup

���Ȥ��������ޤ���

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
