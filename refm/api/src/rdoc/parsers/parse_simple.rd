Parse a non-source file. We basically take the whole thing
as one big comment. If the first character in the file
is '#', we strip leading pound signs.

= class RDoc::SimpleParser

== Class Methods

--- new(top_level, file_name, body, options, stats) -> RDoc::SimpleParser

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body ���Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- scan -> RDoc::TopLevel

Extract the file contents and attach them to the toplevel as a
comment

@return RDoc::TopLevel ���֥������Ȥ��֤��ޤ���

--- remove_private_comments(comment) -> ()

#@todo
