#@since 1.9.2
require syck/ypath
#@else
require yaml/ypath
#@end

YAML �ΥΡ��ɤ򸡺����뤿��Υ��֥饤�֥��Ǥ���

#@since 1.9.2
= module Syck::BaseNode
#@else
= module YAML::BaseNode
#@end

YAML �ΥΡ��ɤ򸡺�����Τ���Υ⥸�塼��Ǥ���

== instance methods

--- [](*key) -> object | [object] | nil

�����ǻ��ꤷ���������б�������(�⤷���ϰ����ǻ��ꤷ������ǥå������б�
�����ͤ�����)���֤��ޤ����б������ͤ��ʤ����� nil ���֤��ޤ���

@param key [[c:Hash]] �Υ����� [[c:Array]] �Υ���ǥå�����ʸ����ǻ���
           ���ޤ�����Ԥξ���ʣ���Ļ��ꤹ������Ǥ��ޤ���

--- at(segment) -> object | nil

���ꤷ������(�⤷���ϥ���ǥå���)���б������ͤ��֤��ޤ����б������ͤ�
�ʤ����� nil ���֤��ޤ���

@param segment [[c:Hash]] �Υ����� [[c:Array]] �Υ���ǥå�����ʸ�����
               ���ꤷ�ޤ���

--- children -> [object]

���Ȥ������ͤ�������֤��ޤ���

--- children_with_index -> [[object, Integer]]

���Ȥ������ͤȥ���ǥå���(�⤷���ϥ���)�������������֤��ޤ���

--- emit -> String

���Ȥ� YAML ������ʸ����ˤ����֤��ޤ���

--- match_path(ypath_str) -> Array

�饤�֥��������ǻ��Ѥ��ޤ���

--- match_segment(ypath, depth) -> Array

�饤�֥��������ǻ��Ѥ��ޤ���

--- search(ypath_str) -> [String]

�����ǻ��ꤷ���ѥ��ΥΡ��ɤ򸡺����ޤ������Ĥ��ä��ѥ���������֤��ޤ���

@param ypath_str ��������ѥ���ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'
  
  node = YAML.parse(DATA)
  p node.search("//name")           # => ["/dog/shiba/0/name", "/cat/0/name"]
  p node.search("//(name|height)")  # => ["/dog/shiba/0/name", "/cat/0/name"]
  
  __END__
  cat:
    - name: taro
      age: 7
  dog:
    shiba:
     - name: jiro
       age: 23

--- select(ypath_str) -> [YAML::Syck::Node]

�����ǻ��ꤷ���ѥ��ΥΡ��ɤ򸡺����ޤ������Ĥ��ä��Ρ��ɤ�������֤��ޤ���

@param ypath_str ��������ѥ���ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'
  
  node = YAML.parse(DATA)
  # "taro" �� "jiro" �ΥΡ��ɤ�������֤���
  p node.select("//name")
  # => [#<YAML::Syck::Scalar:0xf738b77c>, #<YAML::Syck::Scalar:0xf738b9ac>]

  # [{"name"=>"taro", "age"=>7}] �ΥΡ��ɤ�������֤���
  p node.select("/cat")
  # => [#<YAML::Syck::Seq:0xf7391910>]
  
  __END__
  cat:
    - name: taro
      age: 7
  dog:
    shiba:
     - name: jiro
       age: 23

--- select!(ypath_str) -> [object]

�����ǻ��ꤷ���ѥ��ΥΡ��ɤ򸡺����ޤ������Ĥ��ä��Ρ��ɤ򤽤줾��
#@since 1.9.2
[[m:Syck::Node#transform]] �� Ruby �Υ��֥������Ȥˤ���������֤�
#@else
[[m:YAML::Syck::Node#transform]] �� Ruby �Υ��֥������Ȥˤ���������֤�
#@end
�ޤ���

@param ypath_str ��������ѥ���ʸ����ǻ��ꤷ�ޤ���

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'
  
  node = YAML.parse(DATA)
  p node.select!("//name")
  # => ["taro", "jiro"]

  p node.select!("/cat")
  # => [[{"name"=>"taro", "age"=>7}]]
  
  __END__
  cat:
    - name: taro
      age: 7
  dog:
    shiba:
     - name: jiro
       age: 23

#@since 1.9.2
@see [[m:Syck::Node#transform]]
#@else
@see [[m:YAML::Syck::Node#transform]]
#@end
