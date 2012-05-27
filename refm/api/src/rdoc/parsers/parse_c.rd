#@since 1.9.1
require rdoc/parser
require rdoc/parser/ruby
require rdoc/known_classes
#@else
require rdoc/code_objects
require rdoc/parsers/parserfactory
require rdoc/options
require rdoc/rdoc
#@end

C ����ǵ��Ҥ��줿�����������ɤ����Ȥ߹��ߥ��饹/�⥸�塼��Υɥ�����
�Ȥ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���

C ����ǵ��Ҥ��줿��ĥ�饤�֥��ʤɤ���Ϥ���Τ˻��Ѥ��ޤ���
[[f:rb_define_class]] �� [[f:rb_define_method]] �ʤɤ�������줿��Τ�
�б����� C ����δؿ��Υ����Ȥ���Ϥ��ޤ���

��: Array#flatten �ξ�硣rb_ary_flatten �Υ����Ȥ����Ϥ���ޤ���

  /*
   * Returns a new array that is a one-dimensional flattening of this
   * array (recursively). That is, for every element that is an array,
   * extract its elements into the new array.
   *
   *    s = [ 1, 2, 3 ]           #=> [1, 2, 3]
   *    t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
   *    a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
   *    a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
   */
   static VALUE
   rb_ary_flatten(ary)
       VALUE ary;
   {
       ary = rb_obj_dup(ary);
       rb_ary_flatten_bang(ary);
       return ary;
   }
   
   ...
   
   void
   Init_Array()
   {
     ...
     rb_define_method(rb_cArray, "flatten", rb_ary_flatten, 0);

�嵭����ξ�硢rb_ary_flatten �ؿ��� Init_Array �ؿ���Ʊ���ե�����˵�
�Ҥ���Ƥ���ɬ�פ�����ޤ���

�ޤ���Ruby �Υ����������ɤȤ��̤˥����Ȥˤ����̤�̿�����ꤹ�������
���ޤ���

: Document-class: name

  ���Ҥ������Ƥ� name �ǻ��ꤷ�� Ruby �Υ��饹�Τ�Τ˻��ꤷ�ޤ���Ʊ��
  .c �ե������ʣ���Υ��饹�����������ʤɤΤ褦�ˡ�Init_xxx �ؿ���
  xxx ����ʬ�����饹̾��Ʊ��ǤϤʤ����˻��Ѥ��ޤ���

: Document-method: name

  ���Ҥ������Ƥ� name �ǻ��ꤷ�� Ruby �Υ᥽�åɤΤ�Τ˻��ꤷ�ޤ���
  RDoc ���б�����᥽�åɤ򸫤Ĥ����ʤ��ä����˻��Ѥ��ޤ���

: call-seq:

  ���ꤷ�����ιԤ��鼡�ζ��ԤޤǤ�᥽�åɸƤӽФ���Ȳ�ᤷ�ޤ���

�ޤ���RDoc �� rb_define_method �ʤɤ������ C ����δؿ��μ�����Ʊ���ե�
����ˤ����������Ȥ��Ƥ��ޤ��������Ǥʤ����ϰʲ��Τ褦�ʻ����Ԥ��ޤ���

  rb_define_method(....);  // in �ե�����̾

��:

  /*
   * Document-class:  MyClass
   *
   * Encapsulate the writing and reading of the configuration
   * file. ...
   */
  
  /*
   * Document-method: read_value
   *
   * call-seq:
   *   cfg.read_value(key)            -> value
   *   cfg.read_value(key} { |key| }  -> value
   *
   * Return the value corresponding to +key+ from the configuration.
   * In the second form, if the key isn't found, invoke the
   * block and return its value.
   */

#@since 1.9.1
= class RDoc::Parser::C < RDoc::Parser
#@else
#@include(../RDoc__KNOWN_CLASSES)

= class RDoc::C_Parser

extend RDoc::ParserFactory
#@end

C ����ǵ��Ҥ��줿�����������ɤ����Ȥ߹��ߥ��饹/�⥸�塼��Υɥ�����
�Ȥ���Ϥ��뤿��Υ��饹�Ǥ���

== Class Methods

#@since 1.9.1
--- new(top_level, file_name, body, options, stats) -> RDoc::Parser::C
#@else
--- new(top_level, file_name, body, options, stats) -> RDoc::C_Parser
#@end

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.1
@param options [[c:RDoc::Options]] ���֥������Ȥ���ꤷ�ޤ���
#@else
@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���
#@end

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- progress=(val)

��Ľ����Ϥ��� [[c:IO]] ����ꤷ�ޤ���

@param val ��Ľ����Ϥ��� [[c:IO]] ����ꤷ�ޤ������ꤷ�ʤ��ä�����
           [[m:$stderr]] ���Ȥ��ޤ���

--- scan -> RDoc::TopLevel

C ����ǵ��Ҥ��줿�����������ɤ����Ȥ߹��ߥ��饹/�⥸�塼��Υɥ�����
�Ȥ���Ϥ��ޤ���

@return [[c:RDoc::TopLevel]] ���֥������Ȥ��֤��ޤ���
