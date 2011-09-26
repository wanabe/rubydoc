require date

Ruby ���Ȥ߹��ߥ��饹�Τ����Ĥ��� YAML ���Ѵ����뤿��Υ��֥饤�֥���
����

= reopen Class

== instance methods

--- to_yaml(opts = {}) -> String

�㳰��ȯ�����롣

@param opts YAML�ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤹ�뤬�Ȥ��ʤ���

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

== instance methods

--- to_yaml(opts = {})

���֥������Ȥ�YAML�ɥ�����Ȥ��Ѵ����ޤ���

@param opts YAML�ɥ�����Ƚ��ϤκݤΥ��ץ�������ꤹ�롣

#@# opts�λȤ���

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

[[m:Object#instance_variables]].sort�η�̤��֤��ޤ���

@return ���֥������ȤΥ��󥹥����ѿ�̾������

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
  p c.to_yaml_properties.join(",")
  #=> ["@age,@name"]

= reopen Struct

== class methods

--- yaml_tag_class_name -> String

���ȤΥ��饹̾���� Struct::��Τ�����ʸ������֤��ޤ���

@return ���ȤΥ��饹̾���� Struct::��Τ�����ʸ����

  require 'yaml'
  
  YStruct = Struct.new("YStruct", :name)
  p YStruct::yaml_tag_class_name
  #=> "YStruct"

--- yaml_tag_read_class(name) -> String

���� name �� Struct:: ��ä���ʸ������֤��ޤ���

@param name ��¤�Τ�̾������ꤷ�ޤ���

@return ����name��Struct::��ä���ʸ����

  require 'yaml'
  
  YStruct = Struct.new("YStruct", :name)
  p YStruct::yaml_tag_read_class("YStruct")
  #=> "Struct::YStruct"

#@# TODO: Exception#to_yaml ���ɲä��뤫��Ƥ���롣

= reopen String

== instance methods

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
