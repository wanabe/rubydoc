YAML �ɥ�����Ȥ�������Υǡ����򸡺����뵡ǽ���󶡤��륵�֥饤�֥��
�Ǥ���

#@since 1.9.2
= class Syck::YPath
#@else
= class YAML::YPath
#@end

YAML �ɥ�����Ȥ�������Υǡ����򸡺����뵡ǽ���󶡤��륯�饹�Ǥ���

�����㡨"name" ��ޤॻ�����Ȥ�ɽ�����롣

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'

  YAML.parse_documents(DATA){|doc|
    doc.search('/*//name').each {|node|
      YAML::YPath.each_path(node){|u|
        p u.segments
      }
    }
  }

  __END__
  cat:
   - name: taro
     age: 7
   - name: jiro
     age: 23
  ---
  dog:
   shiba:
    - name: goro
      age: 3
    - name: rokuro
      age: 1
  # end of sample

=== ����

Rubyist Magazine: [[url:http://jp.rubyist.net/magazine/]]

 * �ץ���ޡ��Τ���� YAML ���� (õ����): [[url:http://jp.rubyist.net/magazine/?0013-YAML]]

== class methods

#@since 1.9.2
--- new(str) -> Syck::YPath
#@else
--- new(str) -> YAML::YPath
#@end

���Ȥ��������ޤ���

@param str YPath �ǥѡ�����ǽ�ʥѥ���ʸ����ǻ��ꤷ�ޤ���

��:

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'

  str = "/ugo[:hoge]/0/name"

  p YAML::YPath.new(str)
  #=> #<YAML::YPath:0x3238cc @predicates=[":hoge", nil, nil], @segments=["ugo", "0", "name"], @flags=nil>


--- each_path(str) {|ypath| ...} -> Array

���� str �� [[c:YAML::YPath]] �������Ǥ���ʣ���Υѥ��˺ƹ��ۤ��ơ�����
�ƥѥ����Ф��ƥ֥�å���ɾ�����ޤ���

�ƥѥ����Ф��ƥ֥�å���ɾ��������̤�������֤��ޤ���

��1: YAML::YPath.each_path ����Ѥ�����

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'

  path = "/*/((one|three)/name|place)|//place"
  YAML::YPath.each_path(path) { |ypath|
    ...
  }

��2: YAML::YPath.each_path ����Ѥ��ʤ����

#@since 1.9.3
  require 'syck'
#@end
  require 'yaml'

  ["/*/one/name", "/*/three/name", "/*/place", "//place"].each do |path|
    ypath = YAML::YPath.new(path)
    ...
  end

== instance methods
--- segments -> [String]

��������ѥ��� / �Ƕ��ڤä�ʸ�����������֤��ޤ���

--- segments=(val)

��������ѥ���ʸ�������������ꤷ�ޤ���

@param val ʸ������������ꤷ�ޤ���

--- predicates -> [String]

self.segments ��Ʊ�����֤��б����븡������ʸ�����������֤��ޤ���

--- predicates=(val)

self.segments ��Ʊ�����֤��б����븡������ʸ�������������ꤷ�ޤ���

@param val ��������ʸ���������ǻ��ꤷ�ޤ���

--- flags -> nil

���Ѥ���Ƥ��ޤ��󡣾�� nil ���֤��ޤ���

--- flags=(val)

���Ѥ���Ƥ��ޤ���
