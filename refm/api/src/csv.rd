category FileFormat

#@since 1.9.1
CSV (Comma Separated Values) �򰷤��饤�֥��Ǥ���

#@# �����򵭽Ҥ���
#@# ñ�ʤ������ǤϤʤ���Τ��

���ΥС������� CSV �饤�֥��� FasterCSV ����Ϥޤ�ޤ�����
FasterCSV �� Ruby1.8 ��ɸ��ź�դ���Ƥ��� CSV �饤�֥����֤������Ȥ��Ƴ�ȯ����ޤ�����
���Υ饤�֥��ϥ桼���δؿ������褹�뤿��˥ǥ����󤵤�Ƥ��ޤ���
��ʥ����뤬���Ĥ���ޤ���

 (1) �ԥ奢 Ruby �ΤޤޤǸ��� CSV �饤�֥����⤫�ʤ�®�����뤳��
 (2) ���������ƥʥ󥹤��䤹�������ɥ١����Ǥ��뤳�� (FasterCSV �Ϥ��ʤ��礭��
     ��ǽ˭���ˤʤ�ޤ�������ʸ������ʬ�Υ����ɤϤ��ʤ꾮�����ޤޤǤ�)
 (3) CSV �Υ��󥿡��ե�������������뤳��

���餫�˺Ǹ�Τ�Τϼ��Ū�Ǥ����ѹ�����������ʤ���ͳ��̵���¤ꡢ���ꥸ�ʥ��
���󥿡��ե������˽����褦�ˤ����Τǡ������餯�� CSV �饤�֥��ȤϤ��ޤ�
�礭�ʰ㤤��̵���Ǥ��礦��

=== �Ť� CSV �饤�֥��Ȥΰ㤤

�礭�ʰ㤤�ˤĤ��Ƹ��ڤ��ޤ���

==== CSV ��ʸ����

 * ���Υѡ����� m17n ���б����Ƥ��ޤ���[[c:CSV]] �⻲�Ȥ��Ƥ�������
 * ���Υ饤�֥��Ϥ�긷�����ѡ�������äƤ���Τǡ�����Τ���ǡ������Ф��� [[c:CSV::MalformedCSVError]] ���ꤲ�ޤ�
 * �� CSV �饤�֥���������˴ؤ��Ƥϴ��ƤǤϤ���ޤ��󡣤��ʤ��� :row_sep �Ȥ��ƥ��åȤ����ͤ�ˡ�Ǥ���
   ����������ư���Ф����뤳�Ȥ�Ǥ��ޤ�
 * ��饤�֥��Ǥ϶��Ԥ��Ф��� [nil] ���֤��ޤ��������Υ饤�֥��϶���������֤��ޤ�
 * ���Υ饤�֥��Ϥ��ʤ�®���ѡ�������äƤ��ޤ�

==== ���󥿡��ե�����

 * ���ץ����򥻥åȤ���Τ˥ϥå�������ΰ�����Ȥ��褦�ˤʤ�ޤ���
 * CSV#generate_row, CSV#parse_row �Ϥʤ��ʤ�ޤ���
 * �Ť� CSV::Reader, CSV::Writer ���饹�Ϥʤ��ʤ�ޤ���
 * [[m:CSV.open]] �Ϥ�� Ruby �餷���ʤ�ޤ���
 * [[c:CSV]] ���֥������Ȥ� [[c:IO]] ��¿���Υ᥽�åɤ򥵥ݡ��Ȥ���褦�ˤʤ�ޤ���
 * ʸ����� IO �Τ褦�ʥ��֥������Ȥ��ɤ߽񤭤��뤿��˥�åפ��� [[m:CSV.new]] �᥽�åɤ��ɲä���ޤ���
 * [[m:CSV.generate]] �ϸŤ���ΤȤϰۤʤ�ޤ�
 * ��ʬ�ɤ߽Ф��Ϥ⤦���ݡ��Ȥ��Ƥ��ޤ����ɤ߹��ߤϹ�ñ�̤ǹԤ��ޤ�
 * �ѥե����ޥ󥹤Τ��ᡢ���󥹥��󥹥᥽�åɤǥ��ѥ졼�����񤭽���ʤ��ʤ�ޤ�����
   [[m:CSV.new]] �ǥ��åȤ���褦�ˤ��Ƥ���������

=== CSV �Ȥ�

CSV �饤�֥��� [[RFC:4180]] ����ľ�ܤȤ�줿���ʤ긷���������ݻ����ޤ���
���������������¤��뤳�ȤǤ��Υ饤�֥���Ȥ��䤹�����Ƥ��ޤ���[[c:CSV]] ��
���٤Ƥ�ͭ���� CSV �ե������ѡ������ޤ���

������ CSV �ǡ�����Ϳ�������ʤ�������ե�����ɤ������Ǥ��뤳�Ȥ����ꤹ
��Τϥե�����������ɤ߹������Ǥ��������¿���λ��֤��������
�ޤ���

Ruby ���ȹ��ߥ᥽�åɤϤۤȤ�����Ƥ����Ǥ��ͥ��Ƥ��ޤ��������ɤ����
������ CSV �ǡ�����Ϳ���Ƥ�ư���ޤ����㤨�С��������Ȥ���Ƥ��ʤ��ե���
��ɤ�������� CSV �ǡ����ϼ��Τ褦�˴�ñ�˥ѡ����Ǥ��ޤ���

  data.split(",")

= class CSV < Object
extend Forwardable
include Enumerable

#@# �����򵭽Ҥ���

���Υ��饹�� CSV �ե������ǡ������Ф��봰���ʥ��󥿡��ե��������󶡤��ޤ���

=== �ɤ߹���

  # �ե����뤫���Ԥ���
  CSV.foreach("path/to/file.csv") do |row|
    # use row here...
  end

  # �ե����뤫����٤�
  arr_of_arrs = CSV.read("path/to/file.csv")

  # ʸ���󤫤��Ԥ���
  CSV.parse("CSV,data,String") do |row|
    # use row here...
  end

  # ʸ���󤫤��Ԥ���
  arr_of_arrs = CSV.parse("CSV,data,String")

=== �񤭹���

  # �ե�����ؽ񤭹���
  CSV.open("path/to/file.csv", "wb") do |csv|
    csv << ["row", "of", "CSV", "data"]
    csv << ["another", "row"]
    # ...
  end

  # ʸ����ؽ񤭹���
  csv_string = CSV.generate do |csv|
    csv << ["row", "of", "CSV", "data"]
    csv << ["another", "row"]
    # ...
  end

=== ����Ѵ�

  csv_string = ["CSV", "data"].to_csv   # => "CSV,data"
  csv_array  = "CSV,String".parse_csv   # => ["CSV", "String"]

=== ���硼�ȥ��å�

  CSV             { |csv_out| csv_out << %w{my data here} }  # to $stdout
  CSV(csv = "")   { |csv_str| csv_str << %w{my data here} }  # to a String
  CSV($stderr)    { |csv_err| csv_err << %w{my data here} }  # to $stderr

=== CSV ��ʸ�����󥳡��ǥ��� (M17n or Multilingualization)

This new CSV parser is m17n savvy.  The parser works in the Encoding of the IO
or String object being read from or written to.  Your data is never transcoded
(unless you ask Ruby to transcode it for you) and will literally be parsed in
the Encoding it is in.  Thus CSV will return Arrays or Rows of Strings in the
Encoding of your data.  This is accomplished by transcoding the parser itself
into your Encoding.

Some transcoding must take place, of course, to accomplish this multiencoding
support.  For example, <tt>:col_sep</tt>, <tt>:row_sep</tt>, and
<tt>:quote_char</tt> must be transcoded to match your data.  Hopefully this
makes the entire process feel transparent, since CSV's defaults should just
magically work for you data.  However, you can set these values manually in
the target Encoding to avoid the translation.

It's also important to note that while all of CSV's core parser is now
Encoding agnostic, some features are not.  For example, the built-in
converters will try to transcode data to UTF-8 before making conversions.
Again, you can provide custom converters that are aware of your Encodings to
avoid this translation.  It's just too hard for me to support native
conversions in all of Ruby's Encodings.

Anyway, the practical side of this is simple:  make sure IO and String objects
passed into CSV have the proper Encoding set and everything should just work.
CSV methods that allow you to open IO objects (CSV::foreach(), CSV::open(),
CSV::read(), and CSV::readlines()) do allow you to specify the Encoding.

One minor exception comes when generating CSV into a String with an Encoding
that is not ASCII compatible.  There's no existing data for CSV to use to
prepare itself and thus you will probably need to manually specify the desired
Encoding for most of those cases.  It will try to guess using the fields in a
row of output though, when using CSV::generate_line() or Array#to_csv().

== Constants

--- DateMatcher -> Regexp

���� (Date) �����Υǡ�����ȯ���������Ѵ������ꤹ�뤿�������ɽ���Ǥ���

--- DateTimeMatcher -> Regexp

���� (DateTime) �����Υǡ�����ȯ���������Ѵ������ꤹ�뤿�������ɽ���Ǥ���

--- ConverterEncoding -> Encoding

���٤Ƥ��Ѵ���ǻ��Ѥ��륨�󥳡��ǥ��󥰤Ǥ���

--- Converters -> Hash

���Υϥå����̾���ǥ��������Ǥ����Ȥ߹��ߤ��Ѵ�����ݻ����Ƥ��ޤ���

[[m:CSV#convert]] �ǻ��Ѥ����Ѵ���Ȥ��ƻ��ѤǤ��ޤ���
�ޤ� [[m:CSV.new]] �Υ��ץ����Ȥ��ƻ��Ѥ��뤳�Ȥ�Ǥ��ޤ���

: :integer
  [[m:Kernel.#Integer]] ����Ѥ��ƥե�����ɤ��Ѵ����ޤ���
: :float
  [[m:Kernel.#Float]] ����Ѥ��ƥե�����ɤ��Ѵ����ޤ���
: :numeric
  :integer �� :float ���Ȥ߹�碌�Ǥ���
: :date
  [[m:Date.parse]] ����Ѥ��ƥե�����ɤ��Ѵ����ޤ���
: :date_time
  [[m:DateTime.parse]] ����Ѥ��ƥե�����ɤ��Ѵ����ޤ���
: :all
  :date_time �� :numeric ���Ȥ߹�碌�Ǥ���

���Ƥ��Ȥ߹��ߤ��Ѵ���ϡ��ºݤ��Ѵ��������˥ե�����ɤΥǡ�����
ʸ�����󥳡��ǥ��󥰤� UTF-8 ���Ѵ����ޤ������Υǡ�����ʸ�����󥳡��ǥ���
�� UTF-8 ���Ѵ�����ʤ��ä����ϡ��Ѵ��ˤϼ��Ԥ��ޤ������ǡ������ѹ�����ޤ���

���Υϥå���� [[m:Object#freeze]] ����Ƥ��ʤ��Τǡ��桼���ϼ�ͳ���ͤ�
�ɲä��뤳�Ȥ�����ޤ���

ʣ�����Ѵ����������Ǥ��ɲä���Ȥ��ϡ��ͤ�̾�����������ꤹ��ɬ�פ�
����ޤ����������Ǥ��ͤˤ�¾��ʣ�����Ѵ����������Ǥ�̾������ꤹ�뤳
�Ȥ�Ǥ��ޤ���

--- HeaderConverters -> Hash

���Υϥå����̾���ǥ��������Ǥ����Ȥ߹��ߤΥإå����Ѵ������¸���Ƥ��ޤ���

[[m:CSV#header_convert]] �ǻ��Ѥ����Ѵ���Ȥ��ƻ��ѤǤ��ޤ���
�ޤ� [[m:CSV.new]] �Υ��ץ����Ȥ��ƻ��Ѥ��뤳�Ȥ�Ǥ��ޤ���

: :downcase
  �إå���ʸ������Ф��� [[m:String#downcase]] ��ƤӽФ��ޤ���
: :symbol
  �إå���ʸ�����ʸ�����Ѵ����Ƥ��顢����ʸ���� (\s) �򥢥������������
  �ִ�������ѿ��� (\W) �������ޤ����Ǹ�� [[m:String#to_sym]] ��ƤӽФ��ޤ���

���Ƥ��Ȥ߹��ߤΥإå����Ѵ���ϡ��ºݤ��Ѵ��������˥إå��Υǡ�����
ʸ�����󥳡��ǥ��󥰤� UTF-8 ���Ѵ����ޤ������Υإå���ʸ�����󥳡��ǥ���
�� UTF-8 ���Ѵ��Ǥ��ʤ��ä����ϡ��Ѵ��ˤϼ��Ԥ��ޤ������ǡ������ѹ�����ޤ���

���Υϥå���� [[m:Object#freeze]] ����Ƥ��ʤ��Τǡ��桼���ϼ�ͳ���ͤ�
�ɲä��뤳�Ȥ�����ޤ���

ʣ�����Ѵ����������Ǥ��ɲä���Ȥ��ϡ��ͤ�̾�����������ꤹ��ɬ�פ�
����ޤ����������Ǥ��ͤˤ�¾��ʣ�����Ѵ����������Ǥ�̾������ꤹ�뤳
�Ȥ�Ǥ��ޤ���

--- DEFAULT_OPTIONS -> Hash

���Υ��ץ����ϸƤӽФ�¦�Ǿ�񤭤��ʤ��ä��Ȥ��˻��Ѥ��륪�ץ����Ǥ���

: :col_sep
  ","
: :row_sep
  :auto
: :quote_char
  '"'
: :field_size_limit
  nil
: :converters
  nil
: :unconverted_fields
  nil
: :headers
  false
: :return_headers
  false
: :header_converters
  nil
: :skip_blanks
  false
: :force_quotes
  false

--- VERSION -> String

�饤�֥��ΥС�������ɽ��ʸ����Ǥ���

#@if (version == "1.9.1")
2.4.5
#@end
#@if (version == "1.9.2")
2.4.7
#@end

== Singleton Methods

--- new(data, options = Hash.new) -> CSV

���Υ᥽�åɤ� CSV �ե�������ɤ߹�����ꡢ�񤭽Ф����ꤹ�뤿���
[[c:String]] �� [[c:IO]] �Υ��󥹥��󥹤��åפ��ޤ���

��åפ��줿ʸ�������Ƭ�����ɤ߹��ळ�Ȥˤʤ�ޤ���
ʸ������ɵ����������� [[m:CSV.generate]] ����Ѥ��Ƥ���������
¾�ΰ��֤���������������Ϥ��餫���᤽�Τ褦�����ꤷ�� [[c:StringIO]] ���Ϥ��Ƥ���������

@param data [[c:String]] �� [[c:IO]] �Υ��󥹥��󥹤���ꤷ�ޤ���
            [[c:String]] �Υ��󥹥��󥹤���ꤷ����硢[[m:CSV#string]] ����Ѥ���
            �夫��ǡ�������Ф����Ȥ�����ޤ���

@param options CSV ��ѡ������뤿��Υ��ץ�����ϥå���ǻ��ꤷ�ޤ���
               �ѥե����ޥ󥹾����ͳ�ǥ��󥹥��󥹥᥽�åɤǤϥ��ץ������񤭤��뤳�Ȥ�
               ����ʤ��Τǡ���񤭤���������ɬ�������Ǿ�񤭤���褦�ˤ��Ƥ���������

: :col_sep
  �ե�����ɤζ��ڤ�ʸ�������ꤷ�ޤ�������ʸ����ϥѡ����������˥ǡ�����
  ���󥳡��ǥ��󥰤��Ѵ�����ޤ���
: :row_sep
  �Զ��ڤ��ʸ�������ꤷ�ޤ���:auto �Ȥ������̤��ͤ򥻥åȤ��뤳�Ȥ��Ǥ��ޤ���
  :auto ����ꤷ�����ǡ������鼫ưŪ�˹Զ��ڤ��ʸ����򸫤Ĥ��Ф��ޤ������ΤȤ�
  �ǡ�������Ƭ���鼡�� "\r\n", "\n", "\r" ���¤ӤޤǤ��ɤߤޤ���
  A sequence will be selected even if it occurs in a quoted field, assuming that you
  would have the same line endings there.  If none of those sequences is
  found, +data+ is [[c:ARGF]], [[m:Kernel::STDIN]], [[m:Kernel::STDOUT]], or
  [[m:Kernel::STDERR]], or the stream is only  available for output, the default
  [[m:$INPUT_RECORD_SEPARATOR]]  ([[m:$/]]) is used.  Obviously,
  discovery takes a little time.  Set  manually if speed is important.  Also
  note that IO objects should be opened  in binary mode on Windows if this
  feature will be used as the  line-ending translation can cause
  problems with resetting the document  position to where it was before the
  read ahead. This String will be  transcoded into the data's Encoding  before parsing.
: :quote_char
  �ե�����ɤ򥯥����Ȥ���ʸ������ꤷ�ޤ���Ĺ�� 1 ��ʸ����Ǥʤ���Фʤ�ޤ���
  ���������֥륯�����ȤǤϤʤ��ְ�ä����󥰥륯�����Ȥ���Ѥ��Ƥ��륢�ץꥱ�������
  �������Ǥ���
  CSV will always consider a double  sequence this character to be an
  escaped quote.
  ����ʸ����ϥѡ����������˥ǡ����Υ��󥳡��ǥ��󥰤��Ѵ�����ޤ���
: :field_size_limit
  This is a maximum size CSV will read  ahead looking for the closing quote
  for a field.  (In truth, it reads to  the first line ending beyond this
  size.)  If a quote cannot be found  within the limit CSV will raise a
  MalformedCSVError, assuming the data  is faulty.  You can use this limit to
  prevent what are effectively DoS  attacks on the parser.  However, this
  limit can cause a legitimate parse to  fail and thus is set to +nil+, or off,
  by default.
: :converters
  [[m:CSV::Converters]] ������Ф���̾��������Ǥ����Ѵ��郎��Ĥ���
  �ξ�������˳�Ǽ����ɬ�פϤ���ޤ���
  ���Ƥ��Ȥ߹��ߤ��Ѵ���ϡ��ͤ��Ѵ��������� UTF-8 �˥��󥳡��ǥ�����
  �����ߤޤ������󥳡��ǥ����Ѵ��˼��Ԥ������ϥե�����ɤ��Ѵ���
  ��ޤ���
: :unconverted_fields
  ���򥻥åȤ���� [[m:CSV::Row#unconverted_fields]] �Ȥ����Ѵ����Υե���
  ��ɤ��֤��᥽�åɤ����ƤιԤ��ɲä��ޤ���headers ���ץ����ˤ�ä�
  �ɲä����إå��ϥե�����ɤǤϤʤ��Τ�
  [[m:CSV::Row#unconverted_fields]] �϶���������֤��ޤ���
: :headers
  :first_row �Ȥ�������ܥ뤫������ꤹ��ȡ�CSV �ե�����ΰ���ܤ�إå��Ȥ��ư����ޤ���
  �������ꤹ��Ȥ����إå��Ȥ��ư����ޤ���ʸ�������ꤹ��� [[m:CSV.parse_line]] ��
  ���Ѥ��ƥѡ���������̤�إå��Ȥ��ư����ޤ������ΤȤ���:col_sep, :row_sep, :quote_char
  �Ϥ��Υ��󥹥��󥹤�Ʊ����Τ���Ѥ��ޤ������������ [[m:CSV#shift]]
  ���֤��ͤ�����Τ����� [[c:CSV::Row]] �Υ��󥹥��󥹤��ѹ����ޤ���
  [[m:CSV#read]] ���֤��ͤ����������Τ����� [[c:CSV::Table]] �Υ���
  �����󥹤��ѹ����ޤ���
: :return_headers
  ������ꤹ��ȡ��إå��Ԥ�̵�뤷�ޤ���������ꤹ��ȡ��إå��Ԥ�
  �إå����ͤ�Ʊ��� [[c:CSV::Row]] �Υ��󥹥��󥹤Ȥ����֤��ޤ���
: :write_headers
  ������ꤷ�� :headers �ˤ��ͤ򥻥åȤ���ȡ��إå�����Ϥ��ޤ���
: :header_converters
  :converters ���ץ����˻��Ƥ��ޤ������إå����Ѥ��Ѵ����������ޤ���
  ���Ƥ��Ȥ߹��ߤ��Ѵ���ϡ��ͤ��Ѵ��������� UTF-8 �˥��󥳡��ǥ�����
  �����ߤޤ������󥳡��ǥ����Ѵ��˼��Ԥ������ϥإå����Ѵ������
  ����
: :skip_blanks
  ������ꤹ��ȡ����Ԥ��ɤ����Ф��ޤ���
: :force_quotes
  ������ꤹ��ȡ����ƤΥե�����ɤ�������˥������Ȥ��ޤ���

@raise CSV::MalformedCSVError ������ CSV ��ѡ������褦�Ȥ����Ȥ���ȯ�����ޤ���

@see [[m:CSV::DEFAULT_OPTIONS]], [[m:CSV.open]]

--- dump(ary_of_objs, io = "", options = Hash.new) -> String | nil

���Υ᥽�åɤ� Ruby ���֥������Ȥ������ʸ����� CSV �ե�����˥��ꥢ��
�������뤳�Ȥ��Ǥ��ޤ���[[c:Marshal]] �� [[lib:yaml]] �������ؤǤ�����
���ץ�åɥ����Ȥ�ǡ����١����ȤΤ��Ȥ�ˤ����Ω�ĤǤ��礦��

���Υ᥽�åɤ�ñ��ʥ��֥������Ȥ乽¤�Τ򰷤����Ϥ��ޤ�ư�����Ȥ��
�ޤ��Ƥ��ޤ���[[m:Struct#members]] ��Ȥäƥ��󥹥����ѿ��򥷥ꥢ�饤
�����ޤ���

��ä�ʣ���ʥ��ꥢ�饤���������ɬ�פʾ��ϡ�����פ��������饹�˥�
���åɤ��ɲä�������椹�뤳�Ȥ��Ǥ��ޤ���

#@# �桼����������ʤ�������¸�ߤ��ʤ��᥽�åɤʤΤǥ�󥯤ˤϤ��ʤ�

Object.csv_meta ���������ȡ�����פ���ǡ����ΰ���ܤ��ѹ����뤳�Ȥ�
�Ǥ��ޤ������ιԤϼ��η����Υϥå���Τ褦�ʤ�ΤǤ���

  key_1,value_1,key_2,value_2,...

[[m:CSV.load]] �� "class" �Ȥ���������ʸ���󲽤������饹̾����Ԥ��Ƥ�
�ޤ���Object.csv_meta ��������ʤ���� [[m:CSV.dump]] �Ϥ������������
����ary_of_objs �κǽ�����Ǥ� Object.csv_meta �������ƤФ�ޤ���

���� Object#csv_headers ��������뤳�Ȥ��Ǥ��ޤ������Υ᥽�åɤϥ����
����ǡ���������ܤ���Ϥ��ޤ�������ܤϤ��줾�����Υإå���Ϳ���뤿
��˻Ȥ��ޤ����ǥե���ȤǤϡ�[[m:CSV.load]] �ϥإå��� "@" �ǻϤޤä�
����Х��󥹥����ѿ����ͤ򥻥åȤ��������Ǥʤ���Хإå���̾����᥽��
��̾���ե�����ɤ��ͤ�����Ȥ��� [[m:Object#send]] ��ƤӽФ��ޤ���
ary_of_objs �κǽ�����Ǥ� Object#csv_headers �������ƤФ�ޤ���

�Ǹ�ˡ�Object#csv_dump ��������뤳�Ȥ��Ǥ��ޤ���Object#csv_dump �ΰ�
���ϥإå����֤��ͤϥե�����ɤ�����Ǥ������Υ᥽�åɤ� ary_of_objs ��
���Ƥ����Ǥ��Ф��ư��٤��ĸƤФ�ޤ���

@param ary_of_objs Ǥ�դ��������ꤷ�ޤ���

@param io �ǡ����ν��������ꤷ�ޤ����ǥե���Ȥ�ʸ����Ǥ����ե�����
          �˽��Ϥ��뤳�Ȥ�Ǥ��ޤ���

@param options ���ץ�������ꤷ�ޤ���[[m:CSV.new]] ��Ʊ���Ǥ���

@see [[m:CSV.new]]

--- filter(options = Hash.new){|row| ... }
--- filter(input, options = Hash.new){|row| ... }
--- filter(input, output, options = Hash.new){|row| ... }
#@# -> discard

���Υ᥽�åɤ� CSV �ǡ������Ф��� Unix �Υġ��뷲�Τ褦�ʥե��륿����
����Τ������Ǥ���

Ϳ����줿�֥�å��˰�Ԥ����Ϥ���ޤ����֥�å����Ϥ��줿�Ԥ�ɬ�פǤ�
����ѹ����뤳�Ȥ��Ǥ��ޤ����֥�å���ɾ����˹Ԥ����� output �˽񤭹�
�ߤޤ���

@param input [[c:String]] �� [[c:IO]] �Υ��󥹥��󥹤���ꤷ�ޤ���
             �ǥե���Ȥ� [[c:ARGF]] �Ǥ���

@param output [[c:String]] �� [[c:IO]] �Υ��󥹥��󥹤���ꤷ�ޤ���
              �ǥե���Ȥ� [[m:$stdout]] �Ǥ���

@param options ":in_", ":input_" �ǻϤޤ륭���� input �ˤ���Ŭ�Ѥ���ޤ���
               ":out_", ":output_" �ǻϤޤ륭���� output �ˤ���Ŭ�Ѥ���ޤ���
               ����ʳ��Υ�����ξ����Ŭ�Ѥ���ޤ���
               ":output_row_sep" �Υǥե�����ͤ� [[m:$/]] �Ǥ���

@see [[m:CSV.new]]

--- foreach(path, options = Hash.new){|row| ... } -> nil

���Υ᥽�åɤ� CSV �ե�������ɤि��μ��פʥ��󥿡��ե������Ǥ���
�ƹԤ�Ϳ����줿�֥�å����Ϥ���ޤ���

��:

  # UTF-32BE �� CSV �ե�������ɤ߹���� UTF-8 �� row ��֥�å����Ϥ��ޤ�
  CSV.foreach("a.csv", encoding: "UTF-32BE:UTF-8"){|row| p row }

@param path CSV �ե�����Υѥ�����ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���
               :encoding �Ȥ�����������Ѥ���������ϤΥ��󥳡��ǥ��󥰤���ꤹ�뤳�Ȥ��Ǥ��ޤ���
               [[m:Encoding.default_external]] �Ȱۤʤ륨�󥳡��ǥ��󥰤�������Ϥ���Ѥ�����ϡ�
               ɬ�����󥳡��ǥ��󥰤���ꤷ�Ƥ���������

@see [[m:CSV.new]], [[m:File.open]]

--- generate(str = "", options = Hash.new){|csv| ... } -> String

���Υ᥽�åɤ�Ϳ����줿ʸ������åפ��� [[c:CSV]] �Υ��֥������ȤȤ��ƥ֥�å����Ϥ��ޤ���
�֥�å���� [[c:CSV]] ���֥������Ȥ˹Ԥ��ɲä��뤳�Ȥ��Ǥ��ޤ���
�֥�å���ɾ��������̤�ʸ������֤��ޤ���

���Υ᥽�åɤ�Ϳ����줿ʸ������ѹ������Τǡ�������ʸ���󥪥֥������Ȥ�ɬ�פ�
���� [[m:Object#dup]] ��ʣ�����Ƥ���������

@param str ʸ�������ꤷ�ޤ����ǥե���Ȥ϶�ʸ����Ǥ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���
               :encoding �Ȥ�����������Ѥ���Ƚ��ϤΥ��󥳡��ǥ��󥰤���ꤹ�뤳�Ȥ��Ǥ��ޤ���
               ASCII �ȸߴ�����̵��ʸ�����󥳡��ǥ��󥰤����ʸ�������Ϥ�����ϡ����Υҥ�Ȥ�
               ���ꤹ��ɬ�פ�����ޤ���

@see [[m:CSV.new]]

--- generate_line(row, options = Hash.new) -> String

���Υ᥽�åɤϰ�Ĥ� [[c:Array]] ���֥������Ȥ� CSV ʸ������Ѵ����뤿��Υ��硼�ȥ��åȤǤ���

���Υ᥽�åɤϲ�ǽ�Ǥ���� row �˴ޤޤ��ǽ�� nil �Ǥʤ��ͤ��Ѥ��ƽ��Ϥ�
���󥳡��ǥ��󥰤��¬���ޤ���

@param row ʸ������������ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���
               :encoding �Ȥ�����������Ѥ���Ƚ��ϤΥ��󥳡��ǥ��󥰤���ꤹ�뤳�Ȥ��Ǥ��ޤ���
               :row_sep �Ȥ����������ͤˤ� [[m:$/]] �����åȤ���ޤ���

@see [[m:CSV.new]]

--- instance(data = $stdout, options = Hash.new) -> CSV
--- instance(data = $stdout, options = Hash.new){|csv| ... } -> object

���Υ᥽�åɤ� [[m:CSV.new]] �Τ褦�� [[c:CSV]] �Υ��󥹥��󥹤��֤��ޤ���
���������֤�����ͤ� [[m:Object#object_id]] ��Ϳ����줿���ץ�����
�����Ȥ��ƥ���å��夵��ޤ���

�֥�å���Ϳ����줿��硢�������줿���󥹥��󥹤�֥�å����Ϥ���ɾ������
��̤��֤��ޤ���

@param data [[c:String]] �� [[c:IO]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���

@see [[m:CSV.new]]

--- load(io_or_str, options = Hash.new) -> Array

���Υ᥽�åɤ� [[m:CSV.dump]] �ǽ��Ϥ��줿�ǡ������ɤ߹��ߤޤ���

csv_load �Ȥ���̾���Υ��饹�᥽�åɤ��ɲä���ȡ��ǡ������ɤ߹�����ˡ��
�������ޥ������뤳�Ȥ��Ǥ��ޤ���csv_load �᥽�åɤϥ᥿�ǡ������إå�����
�λ��ĤΥѥ�᡼��������Ȥ�ޤ��������Ƥ����򸵤ˤ��������������֥������Ȥ�
�֤��ޤ���

Remember that all fields will be Strings after this load.  If you need
something else, use +options+ to setup converters or provide a custom
csv_load() implementation.

#@# �������ޥ������㤬ɬ��

@param io_or_str [[c:IO]] �� [[c:String]] �Υ��󥹥��󥹤���ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���

@see [[m:CSV.new]], [[m:CSV.dump]]

--- open(filename, mode = "rb", options = Hash.new){|csv| ... } -> nil
--- open(filename, mode = "rb", options = Hash.new) -> CSV
--- open(filename, options = Hash.new){|csv| ... } -> nil
--- open(filename, options = Hash.new) -> CSV

���Υ᥽�åɤ� [[c:IO]] ���֥������Ȥ򥪡��ץ󤷤� [[c:CSV]] �ǥ�åפ��ޤ���
����� CSV �ե������񤯤���μ��פʥ��󥿡��ե������Ȥ��ƻȤ����Ȥ�տޤ��Ƥ��ޤ���

���Υ᥽�åɤ� [[m:IO.open]] ��Ʊ���褦��ư���ޤ����֥�å���Ϳ����줿����
�֥�å��� [[c:CSV]] ���֥������Ȥ��Ϥ����֥�å���λ���ˤ���򥯥������ޤ���
�֥�å���Ϳ�����ʤ��ä����� [[c:CSV]] ���֥������Ȥ��֤��ޤ���
���ε�ư�� Ruby1.8 �� CSV �饤�֥��Ȥϰ㤤�ޤ���Ruby1.8 �ǤϹԤ�֥�å����Ϥ��ޤ���
Ruby1.9 �Ǥ� [[m:CSV.foreach]] ��Ȥ��ȥ֥�å��˹Ԥ��Ϥ��ޤ���

�ǡ����� [[m:Encoding.default_external]] �Ȱۤʤ���ϡ�mode �˥��󥳡�
�ǥ��󥰤���ꤹ��ʸ����������ޤʤ���Фʤ�ޤ��󡣥ǡ�����ɤΤ褦
�˲��Ϥ��뤫���ꤹ�뤿��� CSV �饤�֥��ϥ桼���� mode �˻��ꤷ������
�����ǥ��󥰤�����å����ޤ���"rb:UTF-32BE:UTF-8" �Τ褦�� mode �����
����� UTF-32BE �Υǡ������ɤ߹����UTF-8 ���Ѵ����Ƥ�����Ϥ��ޤ���

CSV ���֥������Ȥ�¿���Υ᥽�åɤ� [[c:IO]] �� [[c:File]] �˰Ѿ����ޤ���

  * [[m:IO#binmode]]
  * [[m:IO#binmode?]]
  * [[m:IO#close]]
  * [[m:IO#close_read]]
  * [[m:IO#close_write]]
  * [[m:IO#closed?]]
  * [[m:IO#eof]]
  * [[m:IO#eof?]]
  * [[m:IO#external_encoding]]
  * [[m:IO#fcntl]]
  * [[m:IO#fileno]]
  * [[m:File#flock]]
  * [[m:IO#flush]]
  * [[m:IO#fsync]]
  * [[m:IO#internal_encoding]]
  * [[m:IO#ioctl]]
  * [[m:IO#isatty]]
  * [[m:File#path]]
  * [[m:IO#pid]]
  * [[m:IO#pos]]
  * [[m:IO#pos=]]
  * [[m:IO#reopen]]
  * [[m:IO#seek]]
  * [[m:IO#stat]]
  * [[m:StringIO#string]]
  * [[m:IO#sync]]
  * [[m:IO#sync=]]
  * [[m:IO#tell]]
  * [[m:IO#to_i]]
  * [[m:IO#to_io]]
  * [[m:File#truncate]]
  * [[m:IO#tty?]]

@param filename �ե�����̾����ꤷ�ޤ���

@param mode [[m:IO.open]] �˻���Ǥ����Τ�Ʊ����Τ����Ǥ��ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���

@see [[m:CSV.new]], [[m:IO.open]]

--- parse(str, options = Hash.new){|row| ... } -> nil
--- parse(str, options = Hash.new) -> Array

���Υ᥽�åɤ�ʸ������ñ�˥ѡ������뤳�Ȥ��Ǥ��ޤ���
�֥�å���Ϳ�������ϡ��֥�å��ˤ��줾��ιԤ��Ϥ��ޤ���
�֥�å����ά�������ϡ������������֤��ޤ���

@param str ʸ�������ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���

--- parse_line(line, options = Hash.new) -> Array

���Υ᥽�åɤϰ�Ԥ� CSV ʸ�����������Ѵ����뤿��Υ��硼�ȥ��åȤǤ���

@param line ʸ�������ꤷ�ޤ���ʣ���Ԥ�ʸ�������ꤷ������ϡ�����ܰʳ���̵�뤷�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���

--- read(path, options = Hash.new) -> [Array]
--- readlines(path, options = Hash.new) -> [Array]

CSV �ե���������������ˤ��뤿��˻Ȥ��ޤ���

#@# ����ɲä���

@param path CSV �ե�����Υѥ�����ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���
               :encoding �Ȥ�����������Ѥ�������ϤΥ��󥳡��ǥ��󥰤���ꤹ�뤳�Ȥ��Ǥ��ޤ���
               ���ϤΥ��󥳡��ǥ��󥰤� [[m:Encoding.default_external]] �Ȱۤʤ����
               ɬ�����ꤷ�ʤ���Фʤ�ޤ���

@see [[m:CSV.new]]

--- table(path, options = Hash.new) -> Array

�ʲ������Ʊ���Τ��Ȥ�Ԥ��᥽�åɤǤ���
���ܸ�� CSV �ե�����򰷤����Ϥ��ޤ�Ȥ��ޤ���

��:

  CSV.read( path, { headers:           true,
                    converters:        :numeric,
                    header_converters: :symbol }.merge(options) )

@param path �ե�����̾����ꤷ�ޤ���

@param options [[m:CSV.new]] �Υ��ץ�����Ʊ�����ץ��������Ǥ��ޤ���

== Instance Methods

--- <<(row)      -> self
--- add_row(row) -> self
--- puts(row)    -> self

���Ȥ� row ���ɲä��ޤ���

�ǡ����������Ͻ񤭹����Ѥ˥����ץ󤵤�Ƥ��ʤ���Фʤ�ޤ���

@param row ���� [[c:CSV::Row]] �Υ��󥹥��󥹤���ꤷ�ޤ���
           [[c:CSV::Row]] �Υ��󥹥��󥹤����ꤵ�줿���ϡ�[[m:CSV::Row#fields]] ����
           �Τߤ��ɲä���ޤ���

--- binmode -> self

[[m:IO#binmode]] �˰Ѿ����ޤ���

--- binmode? -> bool

[[m:IO#binmode?]] �˰Ѿ����ޤ���

--- close -> nil

[[m:IO#close]] �˰Ѿ����ޤ���

--- close_read -> nil

[[m:IO#close_read]] �˰Ѿ����ޤ���

--- close_write -> nil

[[m:IO#close_write]] �˰Ѿ����ޤ���

--- closed? -> bool

[[m:IO#closed?]] �˰Ѿ����ޤ���

--- col_sep -> String

�������ڤ�ʸ����Ȥ��ƻ��Ѥ���ʸ������֤��ޤ���

@see [[m:CSV.new]]

--- convert(name)
--- convert{|field| ... }
--- convert{|field, field_info| ... }
#@# discard

�Ȥ߹��ߤ� [[m:CSV::Converters]] ���Ѵ���Ȥ������Ѥ��뤿��˻Ȥ��ޤ���
�ޤ����ȼ����Ѵ�����ɲä��뤳�Ȥ�Ǥ��ޤ���

�֥�å��ѥ�᡼�����ļ������֥�å���Ϳ�������ϡ����Υ֥�å���
�ե�����ɤ�������ޤ����֥�å��ѥ�᡼������ļ������֥�å���Ϳ
�������ϡ����Υ֥�å��ϡ��ե�����ɤ� [[c:CSV::FieldInfo]] �Υ���
���󥹤�������ޤ����֥�å����Ѵ�����ͤ��ե�����ɤ��Τ�Τ��֤���
����Фʤ�ޤ���

@param name �Ѵ����̾������ꤷ�ޤ���

--- converters -> Array

���ߤ��Ѵ���Υꥹ�Ȥ��֤��ޤ���

@see [[m:CSV::Converters]]

--- each{|row| ... } -> nil

�ƹԤ��Ф��ƥ֥�å���ɾ�����ޤ���

�ǡ������������ɤ߹����Ѥ˥����ץ󤵤�Ƥ��ʤ���Фʤ�ޤ���

--- encoding -> Encoding

�ɤ߽񤭤���Ȥ��˻��Ѥ��륨�󥳡��ǥ��󥰤��֤��ޤ���

--- eof -> bool
--- eof? -> bool

[[m:IO#eof]], [[m:IO#eof?]] �˰Ѿ����ޤ���

--- external_encoding -> Encoding | nil

[[m:IO#external_encoding]] �˰Ѿ����ޤ���

--- fcntl(cmd, arg = 0)    -> Integer

[[m:IO#fcntl]] �˰Ѿ����ޤ���

--- field_size_limit -> Fixnum

�ե�����ɥ������κ����ͤ��֤��ޤ���

@see [[m:CSV.new]]

--- fileno -> Integer
--- to_i   -> Integer

[[m:IO#fileno]], [[m:IO#to_i]] �˰Ѿ����ޤ���

--- flock(operation)    -> 0 | false

[[m:File#flock]] �˰Ѿ����ޤ���

--- flush    -> self

[[m:IO#flush]] �˰Ѿ����ޤ���

--- force_quotes? -> bool

���Ϥ����ե�����ɤ��������Ȥ������ϡ������֤��ޤ���

@see [[m:CSV.new]]

--- fsync -> 0 | nil

[[m:IO#fsync]] �˰Ѿ����ޤ���

--- header_convert(name)
--- header_convert{|field| ... }
--- header_convert{|field, field_info| ... }

[[m:CSV#convert]] �˻��Ƥ��ޤ������إå����ѤΥ᥽�åɤǤ���

���Υ᥽�åɤϥإå��Ԥ��ɤ߹������˸ƤӽФ��ʤ���Фʤ�ޤ���

@param name �Ѵ����̾������ꤷ�ޤ���

@see [[m:CSV#convert]]

--- header_converters -> Array

����ͭ���ʥإå����Ѵ���Υꥹ�Ȥ��֤��ޤ���

�ȹ��ߤ��Ѵ����̾�����֤��ޤ�������ʳ��ϡ����֥������Ȥ��֤��ޤ���

@see [[m:CSV.new]]

--- header_row? -> bool

�����ɤ߹��ޤ��Ԥ����إå��Ǥ�����˿����֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

--- headers -> Array | true | nil

nil ���֤������ϡ��إå��ϻ��Ѥ���ޤ���
�����֤������ϡ��إå�����Ѥ��뤬���ޤ��ɤ߹��ޤ�Ƥ��ޤ���
������֤������ϡ��إå��ϴ����ɤ߹��ޤ�Ƥ��ޤ���

@see [[m:CSV.new]]

--- inspect -> String

ASCII �ߴ�ʸ����Ǽ��Ȥξ����ɽ������Τ��֤��ޤ���

--- internal_encoding   -> Encoding | nil

[[m:IO#internal_encoding]] �˰Ѿ����ޤ���

--- ioctl(cmd, arg = 0)    -> Integer

[[m:IO#ioctl]] �˰Ѿ����ޤ���

--- isatty    -> bool
--- tty?      -> bool

[[m:IO#isatty]], [[m:IO#tty?]] �˰Ѿ����ޤ���

--- lineno -> Fixnum

���Υե����뤫���ɤ߹�����ǽ��Ԥι��ֹ���֤��ޤ���
�ե�����ɤ˴ޤޤ����ԤϤ����ͤˤϱƶ����ޤ���

--- path    -> String

[[m:IO#path]] �˰Ѿ����ޤ���

--- pid    -> Integer | nil

[[m:IO#pid]] �˰Ѿ����ޤ���

--- pos    -> Integer
--- tell   -> Integer

[[m:IO#pos]], [[m:IO#tell]] �˰Ѿ����ޤ���

--- pos=(n)

[[m:IO#pos=]] �˰Ѿ����ޤ���

--- quote_char -> String

�ե�����ɤ򥯥����Ȥ���Τ˻��Ѥ���ʸ������֤��ޤ���

@see [[m:CSV.new]]

--- read -> [Array]
--- readlines -> [Array]

�Ĥ�ιԤ��ɤ߹���������������֤��ޤ���

�ǡ������������ɤ߹����Ѥ˥����ץ󤵤�Ƥ���ɬ�פ�����ޤ���

--- reopen(io) -> self

[[m:IO#reopen]] �˰Ѿ����ޤ���

--- return_headers? -> bool

�إå����֤����ϡ������֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

@see [[m:CSV.new]]

--- rewind -> 0

[[m:IO#rewind]] �˻��Ƥ��ޤ���[[m:CSV#lineno]] �� 0 �ˤ��ޤ���

@see [[m:IO#rewind]]

--- row_sep -> String

�Զ��ڤ�ʸ����Ȥ��ƻ��Ѥ���ʸ������֤��ޤ���

@see [[m:CSV.new]]

--- seek(offset, whence = IO::SEEK_SET)    -> 0

[[m:IO#seek]] �˰Ѿ����ޤ���

--- shift    -> Array | CSV::Row
--- gets     -> Array | CSV::Row
--- readline -> Array | CSV::Row

[[c:String]] �� [[c:IO]] ���åפ����ǡ��������������Ԥ����ɤ߹����
�ե�����ɤ����� [[c:CSV::Row]] �Υ��󥹥��󥹤��֤��ޤ���

�ǡ������������ɤ߹����Ѥ˥����ץ󤵤�Ƥ���ɬ�פ�����ޤ���

@return �إå�����Ѥ��ʤ�����������֤��ޤ���
        �إå�����Ѥ������ [[c:CSV::Row]] ���֤��ޤ���

--- skip_blanks? -> bool

���Ǥ�����ϡ����Ԥ��ɤ����Ф��ޤ���

@see [[m:CSV.new]]

--- stat    -> File::Stat

[[m:IO#stat]] �˰Ѿ����ޤ���

--- string -> String

[[m:StringIO#string]] �˰Ѿ����ޤ���

--- sync -> bool

[[m:IO#sync]] �˰Ѿ����ޤ���

--- sync=(newstate)

[[m:IO#sync=]] �˰Ѿ����ޤ���

--- to_io -> self

[[m:IO#to_io]] �˰Ѿ����ޤ���

--- truncate(path, length)    -> 0

[[m:File#truncate]] �˰Ѿ����ޤ���

--- unconverted_fields? -> bool

�ѡ���������̤� unconverted_fields �Ȥ����᥽�åɤ���ľ��˿����֤��ޤ���
�����Ǥʤ����ϡ������֤��ޤ���

#@# Array, CSV::Row ��ưŪ���ɲä����

@see [[m:CSV.new]]

--- write_headers? -> bool

�إå��������˽񤭹�����Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

@see [[m:CSV.new]]


= class CSV::FieldInfo < Struct

�Ԥ��ɤ߹��ޤ줿�ǡ�����������ǤΥե�����ɤΰ��֤ξ�����Ǽ���뤿���
��¤�ΤǤ���

[[c:CSV]] ���饹�ǤϤ��ι�¤�ΤϤ����Ĥ��Υ᥽�åɤΥ֥�å����Ϥ���ޤ���

== Instance Methods

--- index -> Fixnum

����ǲ����ܤΥե�����ɤ��狼�를��١����Υ���ǥå������֤��ޤ���

--- index=(val)

����ǥå������ͤ򥻥åȤ��ޤ���

@param val ����ǥå������ͤ���ꤷ�ޤ���

--- line -> Fixnum

���ֹ���֤��ޤ���

--- line=(val)

���ֹ�򥻥åȤ��ޤ���

@param val ���ֹ����ꤷ�ޤ���

--- header -> Array

���Ѳ�ǽ�ʾ��ϥإå���ɽ��������֤��ޤ���


--- header=(val)

�إå���ɽ������򥻥åȤ��ޤ���

@param val �إå���ɽ���������ꤷ�ޤ���

= class CSV::MalformedCSVError < RuntimeError

������ CSV ��ѡ������褦�Ȥ����Ȥ���ȯ�������㳰�Ǥ���

#@include(csv/CSV__Row)
#@include(csv/CSV__Table)
#@else
CSV (Comma Separated Values) �򰷤��饤�֥��Ǥ���

= class CSV < Object

CSV (Comma Separated Values) �򰷤����饹�Ǥ���

�ƥ᥽�åɤζ��̥ѥ�᥿

  mode
     'r', 'w', 'rb', 'wb' ��������ǽ�Ǥ���

     - 'r' �ɤ߹���
     - 'w' �񤭹���
     - 'b' �Х��ʥ�⡼��
  fs
     �ե�����ɤζ��ڤ�ʸ��
     �ǥե���Ȥ� ','
  rs
     �Զ��ڤ�ʸ����nil (�ǥե����) �� CrLf / Lf��
     Cr �Ƕ��ڤꤿ������ ?\r ���Ϥ��ޤ���

== Class Methods

--- open(path, mode, fs = nil, rs = nil) {|row| ... } -> nil
--- open(path, mode, fs = nil, rs = nil) -> CSV::Reader | CSV::Writer

CSV�ե�������ɤ߹���ǥѡ������ޤ���

�ɤ߹��ߥ⡼�ɻ��ˤ� path �ˤ���ե�����򳫤��ƹԤ�����Ȥ���
�֥�å����Ϥ��ޤ���

@param path �ѡ�������ե�����Υե�����̾
@param mode �����⡼�ɤλ���
            'r', 'w', 'rb', 'wb' ��������ǽ�Ǥ���
            - 'r' �ɤ߹���
            - 'w' �񤭹���
            - 'b' �Х��ʥ�⡼��
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CRLF / LF��
          CR ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

===== ���

�ѡ�������""(��ʸ��)���ͤʤ�(nil)����̤��ޤ���
�㤨�С��ɤ߹��ߥ⡼�ɻ���a, "", , b �ιԤ�ѡ����������ˤ� ["a", "", nil, "b"] ��������֤��ޤ���

��:

  CSV.open("/temp/test.csv", 'r') do |row|
    puts row.join("<>")
  end

tsv(Tab Separated Values)�ե�����ʤɤΥ��ѥ졼���򥫥�ްʳ��ǻ���

  CSV.open("/temp/test.tsv", 'r', "\t") do |row|
    puts row.join("<>")
  end

�֥�å����Ϥ��ʤ��ä���� CSV::Reader ���֤��ޤ���

�񤭹��ߥ⡼�ɻ��ˤ� path �ˤ���ե�����򳫤� CSV::Writer ��֥�å����Ϥ��ޤ���

��:

  CSV.open("/temp/test.csv", 'w') do |writer|
    writer << ["ruby", "perl", "python"]
    writer << ["java", "C", "C++"]
  end

�֥�å�̤����ξ�� CSV::Writer ���֤��ޤ���

#@since 1.8.2

--- foreach(path, rs = nil) {|row| ... } -> nil

�ɤ߹��ߥ⡼�ɤǥե�����򳫤����ƹԤ�����ǥ֥�å����Ϥ��ޤ���

@param path �ѡ�������ե�����Υե�����̾
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

===== ���

�ѡ�������""(��ʸ��)���ͤʤ�����̤��ޤ���
�㤨�С�a, "", , b �ιԤ�ѡ����������ˤ� ["a", "", nil, "b"] ��������֤��ޤ���

��:

  CSV.foreach('test.csv'){|row|
    puts row.join(':')
  }

--- read(path, length = nil, offset = nil) -> Array

path �ǻ��ꤵ�줿 CSV �ե�������ɤ߹��ߡ����������ǥǡ������֤��ޤ���

@param path �ѡ�������ե�����Υե�����̾
@param length �оݥե�������ɤ߹��ߥ�����
@param offset �ɤ߹��߳��ϰ���

===== ���

�ѡ�������""(��ʸ��)���ͤʤ�����̤��ޤ���
�㤨�С�a, "", , b �ιԤ�ѡ����������ˤ� ["a", "", nil, "b"] ��������֤��ޤ���

--- readlines(path, rs = nil) -> Array

path �ǻ��ꤵ�줿 CSV �ե�������ɤ߹��ߡ����������ǥǡ������֤��ޤ���

@param path �ѡ�������ե�����Υե�����̾
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

===== ���

�ѡ�������""(��ʸ��)���ͤʤ�����̤��ޤ���
�㤨�С�a, "", , b �ιԤ�ѡ����������ˤ� ["a", "", nil, "b"] ��������֤��ޤ���

#@end

--- generate(path, fs = nil, rs = nil) -> CSV::BasicWriter
--- generate(path, fs = nil, rs = nil) {|writer| ... } -> nil

path �ǻ��ꤵ�줿�ե������񤭹��ߥ⡼�ɤǳ������֥�å����Ϥ��ޤ���
�֥�å�̤����ξ��� [[c:CSV::BasicWriter]] ���֤��ޤ���

@param path �񤭹��ߥ⡼�ɤ�open����ե�����Υե�����̾
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

===== ���

�ե�����񤭹��߻���""(��ʸ��)���ͤʤ�(nil)����̤��ޤ���
�㤨�С�["a", "", nil, "b"] ��������Ϥ������� a, "", , b �Ȥ����Ԥ�ե�����˽񤭹��ߤޤ���

��:
  a = ["1","ABC","abc"]
  b = ["2","DEF","def"]
  c = ["3","GHI","ghi"]
  x = [a, b, c]

  CSV.generate("test2.csv"){|writer|
    x.each{|row|
      writer << row
    }
  }

--- parse(str_or_readable, fs = nil, rs = nil) -> Array
--- parse(str_or_readable, fs = nil, rs = nil){|rows| ... } -> nil

str_or_readable �ǻ��ꤵ�줿ʸ�����ѡ����������������Ѵ����֥�å����Ϥ��ޤ���
�֥�å�̤����ξ����Ѵ����줿�����������֤��ޤ���

@param str_or_readable �ѡ�������ʸ����
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

��:
  CSV.parse("A,B,C\nd,e,f\nG,H,I"){|rows|
    p rows
  }

--- generate_line(row, fs = nil, rs = nil) -> String
--- generate_line(row, fs = nil, rs = nil){|s| ... } -> nil

row �ǻ��ꤵ�줿�����ѡ�������fs �ǻ��ꤵ�줿ʸ����ե�����ɥ��ѥ졼���Ȥ���
1��ʬ��ʸ�����֥�å����Ϥ��ޤ���
�֥�å�̤����ξ����Ѵ����줿ʸ������֤��ޤ���

@param row �ѡ�����������
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

--- parse_line(src, fs = nil, rs = nil) -> Array
--- parse_line(src, fs = nil, rs = nil){|row| ... } -> nil

src �ǻ��ꤵ�줿ʸ�����1��ʬ�Ȥ��ƥѡ�����������Ѵ����֥�å����Ϥ��ޤ���
�֥�å�̤����ξ����Ѵ����줿������֤��ޤ���

@param src �ѡ�������ʸ����
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

#@until 1.9.1
--- generate_row(src, cells, out_dev, fs = nil, rs = nil) -> Fixnum

src �ǻ��ꤵ�줿�����ѡ������� csv������ʸ����Ȥ���(�Զ��ڤ�ʸ����ޤ��) out_dev �˽��Ϥ��ޤ���
�֤��ͤȤ��� fs �Ƕ��ڤä��ե������(cell)�ο����֤��ޤ���

@param src �ѡ�����������
@param cells �ѡ�������ե�����ɿ���
@param out_dev csv������ʸ����ν����衣
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���

===== ���

����Υѡ�������""(��ʸ��)���ͤʤ�(nil)����̤��ޤ���
�㤨�С�["a", "", nil, "b"] ��������Ϥ������� a,"", , b �Ȥ���ʸ������������ޤ���

��:
  row1 = ['a', 'b', 'c']
  row2 = ['1', '2', '3']
  row3 = ['A', 'B', 'C']
  src = [row1, row2, row3]
  buf = ''
  src.each do |row|
    parsed_cells = CSV.generate_row(row, 2, buf)
  end
  p buf #=>"a,b\n1,2\n,A,B\n"


--- parse_row(src, index, out_dev, fs = nil, rs = nil) -> Array

CSV������ʸ�����ѡ�������CSV1��(row)ʬ�Υǡ�����������Ѵ��� out_dev �˽��Ϥ��ޤ���

@param src �ѡ�������ʸ����(CSV����)
@param index �ѡ������ϰ���
@param out_dev �Ѵ������ǡ����ν����衣
@param fs �ե�����ɥ��ѥ졼���λ��ꡣ
          nil (�ǥե����) �� ',' �򥻥ѥ졼���Ȥ��ޤ���
@param rs �Զ��ڤ�ʸ���λ��ꡣnil (�ǥե����) �� CrLf / Lf��
          Cr ��Զ��ڤ�Ȥ��������� ?\r ���Ϥ��ޤ���
@return  �Ѵ�����Array�Υ��������Ѵ��򤷤�ʸ����ΰ��֤�Array�Ȥ����֤��ޤ���

===== ���

�ѡ�������""(��ʸ��)���ͤʤ�����̤��ޤ���
�㤨�С�a, "", , b �ιԤ�ѡ����������ˤ� ["a", "", nil, "b"] ��������֤��ޤ���

��:
   src = "a,b,c\n1,2\nA,B,C,D"
   i = 0

   x = [] #��̤��Ǽ��������
   begin
     parsed = []
     parsed_cells, i = CSV.parse_row(src, i, parsed)
     x.push(parsed)
   end while parsed_cells > 0

   x.each{ |row|
     p '-----'
     row.each{ |cell|
       p cell
     }
   }

�¹Է��:
  a
  b
  c
  -----
  1
  2
  -----
  A
  B
  C
  D

#@end

#@include(csv/CSV__Cell)
#@include(csv/CSV__Row)
#@include(csv/CSV__BasicWriter)
#@include(csv/CSV__IOBuf)
#@include(csv/CSV__IOReader)
#@include(csv/CSV__IllegalFormatError)
#@include(csv/CSV__Reader)
#@include(csv/CSV__StreamBuf)
#@include(csv/CSV__StringReader)
#@include(csv/CSV__Writer)
#@end

