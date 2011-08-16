#@# require rdoc/code_objects
require rdoc/parsers/parserfactory
require rdoc/options
require rdoc/rdoc

C ����ǵ��Ҥ��줿�����������ɤ����Ȥ߹��ߥ��饹/�⥸�塼��Υɥ�����
�Ȥ���Ϥ��뤿��Υ��֥饤�֥��Ǥ���

= reopen RDoc

== Constants

--- KNOWN_CLASSES -> {String => String}

Ruby ���Ȥ߹��ߥ��饹������Ū���ѿ�̾�����������饹̾���ͤΥϥå���Ǥ���

  RDoc::KNOWN_CLASSES["rb_cObject"] # => "Object"

�饤�֥��������ǻ��Ѥ��ޤ���

= class RDoc::C_Parser

extend RDoc::ParserFactory

We attempt to parse C extension files. Basically we look for
the standard patterns that you find in extensions: <tt>rb_define_class,
rb_define_method</tt> and so on. We also try to find the corresponding
C source for the methods and extract comments, but if we fail
we don't worry too much.

The comments associated with a Ruby method are extracted from the C
comment block associated with the routine that _implements_ that
method, that is to say the method whose name is given in the
<tt>rb_define_method</tt> call. For example, you might write:

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

Here RDoc will determine from the rb_define_method line that there's a
method called "flatten" in class Array, and will look for the implementation
in the method rb_ary_flatten. It will then use the comment from that
method in the HTML output. This method must be in the same source file
as the rb_define_method.

C classes can be diagrammed (see /tc/dl/ruby/ruby/error.c), and RDoc
integrates C and Ruby source into one tree

The comment blocks may include special directives:

  [Document-class: <i>name</i>]
    This comment block is documentation for the given class. Use this
    when the <tt>Init_xxx</tt> method is not named after the class.
  
  [Document-method: <i>name</i>]
    This comment documents the named method. Use when RDoc cannot
    automatically find the method from it's declaration
  
  [call-seq:  <i>text up to an empty line</i>]
    Because C source doesn't give descriptive names to Ruby-level parameters,
    you need to document the calling sequence explicitly

In addition, RDoc assumes by default that the C method implementing a
Ruby function is in the same source file as the rb_define_method call.
If this isn't the case, add the comment

  rb_define_method(....);  // in filename

As an example, we might have an extension that defines multiple classes
in its Init_xxx method. We could document them using

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

== Class Methods

--- new(top_level, file_name, body, options, stats) -> RDoc::C_Parser

���Ȥ��������ޤ���

@param top_level [[c:RDoc::TopLevel]] ���֥������Ȥ���ꤷ�ޤ���

@param file_name �ե�����̾��ʸ����ǻ��ꤷ�ޤ���

@param body �����������ɤ����Ƥ�ʸ����ǻ��ꤷ�ޤ���

@param options [[c:Options]] ���֥������Ȥ���ꤷ�ޤ���

@param stats [[c:RDoc::Stats]] ���֥������Ȥ���ꤷ�ޤ���

== Instance Methods

--- progress -> IO

��Ľ����Ϥ��� [[c:IO]] ���֤��ޤ���

--- progress=(val)

��Ľ����Ϥ��� [[c:IO]] ����ꤷ�ޤ���

@param val ��Ľ����Ϥ��� [[c:IO]] ����ꤷ�ޤ������ꤷ�ʤ��ä�����
           [[m:$stderr]] ���֤��ޤ���

--- scan -> RDoc::TopLevel

C ����ǵ��Ҥ��줿�����������ɤ����Ȥ߹��ߥ��饹/�⥸�塼��Υɥ�����
�Ȥ���Ϥ��ޤ���

@return RDoc::TopLevel ���֥������Ȥ��֤��ޤ���
