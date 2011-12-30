require date

Ruby ���Ȥ߹��ߥ��饹�Τ����Ĥ��� YAML ���Ѵ����뤿��Υ��֥饤�֥���
����

= reopen Class

== Instance Methods

--- to_yaml(opts = {}) -> String

�㳰��ȯ�����ޤ���

@param opts YAML�ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ����Ȥ��ޤ���

@raise TypeError

  require 'yaml'
  
  begin
    cc = Class.new
    cc.to_yaml
  rescue
    p $!
    #=> #<TypeError: can't dump anonymous class Class>
  end

= reopen Object

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  require 'yaml'
  
  h = {
    :ugo => 17,
    :hoge => "fuga",
  }
  
  print h.to_yaml
  #=> ---
  #=> :ugo: 17
  #=> :hoge: fuga
  
  class MyDog
    attr_accessor :name, :age
  end
  
  c = MyDog.new
  c.name = "Pochi"
  c.age = 3
  print c.to_yaml
  #=> --- !ruby/object:MyDog
  #=> age: 3
  #=> name: Pochi

--- to_yaml_style -> nil

nil���֤��ޤ���

@return nil���֤��ޤ���

��:

  require 'yaml'
  
  p to_yaml_style
  #=> nil
  a = []
  p a.to_yaml_style
  #=> nil

--- to_yaml_properties -> [String]

���ȤΥ��󥹥����ѿ��ΰ�����ʸ�����������֤��ޤ���

@return ���ȤΥ��󥹥����ѿ�̾������

  require 'yaml'
  
  h = {
    :ugo => 17,
    :hoge => "fuga",
  }
  
  p h.to_yaml_properties
  #=> []
  class MyDog
    attr_accessor :name, :age
  end
  
  c = MyDog.new
  c.name = "Pochi"
  c.age = 3
  p c.to_yaml_properties
  #=> ["@age", "@name"]

= reopen Hash

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print({"foo" => "bar"}.to_yaml)
  # => ---
  foo: bar

--- yaml_initialize(tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

= reopen Struct

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_class_name -> String

���ȤΥ��饹̾���� Struct:: ��Τ�����ʸ������֤��ޤ���

@return ���ȤΥ��饹̾���� Struct::��Τ�����ʸ����

  require 'yaml'
  
  YStruct = Struct.new("YStruct", :name)
  p YStruct::yaml_tag_class_name
  #=> "YStruct"

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_read_class(name) -> String

���� name �� Struct:: ��ä���ʸ������֤��ޤ���

@param name ��¤�Τ�̾������ꤷ�ޤ���

@return ���� name �� Struct:: ��ä���ʸ����

  require 'yaml'
  
  YStruct = Struct.new("YStruct", :name)
  p YStruct::yaml_tag_read_class("YStruct")
  #=> "Struct::YStruct"

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  Foo = Struct.new(:bar, :baz)
  print Foo.new("bar", "baz").to_yaml
  # => --- !ruby/struct:Foo
  bar: bar
  baz: baz

= reopen Array

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print [1, 2, 3].to_yaml
  # => ---
  - 1
  - 2
  - 3

--- yaml_initialize(tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

= reopen Exception

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

= reopen String

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- is_complex_yaml? -> Integer | nil

���Ȥ�ʣ���Ԥˤʤ륭����ޤ�褦�� YAML �Ǥ�����˿��ˤʤ��ͤ��֤���
����

��: ["Detroit Tigers", "Chicago cubs"] �򥭡��Ȥ�����

  require 'yaml'
  s = <<EOS
  ? 
    - Detroit Tigers
    - Chicago cubs
  : 
    - 2001-07-23
  EOS
  p s.is_complex_yaml? # => 2
  p YAML.load(s) # => {["Detroit Tigers", "Chicago cubs"]=>[#<Date: 4904227/2,0,2299161>]}

--- is_binary_data? -> true | nil

���Ȥ� ASCII ʸ���ʳ���ʸ�����ޤ���� true ���֤��ޤ���

�����ͤ� true �ˤʤ��硢self.to_yaml ������̡�"!binary ..." �Ȥ�����
����ʸ������֤��ޤ���

  print "�ƥ���".to_yaml
  # => --- !binary |
  44OG44K544OI

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print "foo".to_yaml # => --- foo

= reopen Symbol

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print :foo.to_yaml # => --- :foo

= reopen Range

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print (1..10).to_yaml
  # => --- !ruby/range
  begin: 1
  end: 10
  excl: false

= reopen Regexp

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print /foo|bar/.to_yaml # => --- !ruby/regexp /foo|bar/

= reopen Time

== Class Methods

--- yaml_new(klass, tag, val)

�饤�֥�������ǻ��Ѥ��ޤ���

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print Time.now.to_yaml # => --- 2011-12-31 02:17:31.192322 +09:00

= reopen Date

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print Date.today.to_yaml # => --- 2011-12-31

= reopen Integer

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print 1.to_yaml # => --- 1
  print -1.to_yaml # => --- -1

= reopen Float

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print 1.0.to_yaml        # => --- 1.0
  print -1.0.to_yaml       # => --- -1.0
  print (1.0/0.0).to_yaml  # => --- .Inf
  print (-1.0/0.0).to_yaml # => --- -.Inf
  print (0.0/0.0).to_yaml  # => --- .NaN

= reopen TrueClass

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print true.to_yaml # => --- true

= reopen FalseClass

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print false.to_yaml # => --- false

= reopen NilClass

== Class Methods

--- yaml_tag_subclasses? -> true

��� true ���֤��ޤ���

�饤�֥�������ǻ��Ѥ��ޤ���

== Instance Methods

--- taguri -> String

���ȤΥ��� URI ���֤��ޤ���

--- taguri=(val)

���ȤΥ��� URI �� val �����ꤷ�ޤ���

@param val ���� URI ��ʸ����ǻ��ꤷ�ޤ���

--- to_yaml(opts = {})

���Ȥ� YAML �ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML �ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤷ�ޤ���
#@since 1.9.2
            ���ץ����ξܺ٤� [[m:Syck::Emitter#reset]] �򻲾Ȥ�
#@else
            ���ץ����ξܺ٤� [[m:YAML::Syck::Emitter#reset]] �򻲾Ȥ�
#@end
            �Ƥ���������

  print nil.to_yaml # => ---
