require rdoc/markup/to_html

rdoc �����Υɥ�����Ȥ� HTML ���������뤿��Υ��֥饤�֥��Ǥ���

Subclass of the RDoc::Markup::ToHtml class that supports looking up words in
the AllReferences list. Those that are found (like AllReferences in this
comment) will be hyperlinked

  require 'rdoc/markup/to_html_crossref'

  h = RDoc::Markup::ToHtmlCrossref.new
  puts h.convert(input_string)

�Ѵ�������̤�ʸ����Ǽ����Ǥ��ޤ���

= class RDoc::Markup::ToHtmlCrossref < RDoc::Markup::ToHtml

rdoc �����Υɥ�����Ȥ� HTML ���������륯�饹�Ǥ���

== Class Methods

--- new(from_path, context, show_hash) -> RDoc::Markup::ToHtmlCrossref

���Ȥ��������ޤ���

We need to record the html path of our caller so we can generate
correct relative paths for any hyperlinks that we find
