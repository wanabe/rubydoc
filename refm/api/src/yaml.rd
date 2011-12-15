#@since 1.8.0

#@until 1.9.2
require stringio
require yaml/error
require yaml/tag
require yaml/stream
require yaml/constants

#@# yaml/encoding �������Ǥ������Ѥ��ʤ������ά��
#@end

��¤�����줿�ǡ�����ɽ������ե����ޥåȤǤ���YAML (YAML Ain't Markup Language) �򰷤�����Υ饤�֥��Ǥ���

��1: ��¤�����줿����
  require 'yaml'

  data = [ "Taro san", "Jiro san", "Saburo san"]
  str_r = YAML.dump(data)

  str_l =<<EOT
  --- 
  - Taro san
  - Jiro san
  - Saburo san
  EOT

  p str_r == str_l #=> true

��2: ��¤�����줿�ϥå���

  require 'yaml'
  require 'date'

  str_l =<<YAML_EOT
  Tanaka Taro: { age: 35, birthday: 1970-01-01}
  Suzuki Suneo: {
    age: 13,
    birthday: 1992-12-21
  }
  YAML_EOT

  str_r = {}
  str_r["Tanaka Taro"] = {
    "age" => 35,
    "birthday" => Date.new(1970, 1, 1)
  }
  str_r["Suzuki Suneo"] = {
    "age" => 13,
    "birthday" => Date.new(1992, 12, 21)
  }

  p str_r == YAML.load(str_l) #=> true

��3: ��¤�����줿��

  require 'yaml'
  require 'stringio'

  strio_r = StringIO.new(<<EOT
  ---
  time: 2008-02-25 17:03:12 +09:00
  target: YAML
  version: 4
  log: | 
    ���ä�����
    ���֥��ȥ饯�Ȥ���������
  ---
  time: 2008-02-24 17:00:35 +09:00
  target: YAML
  version: 3
  log: | 
    ���֥��ȥ饯�Ȥ�񤤤��� 

  EOT
  )

  YAML.load_stream(strio_r).documents.sort{|a, b| a["version"] <=> b["version"]}.each{|obj|
    printf "version %d\ntime %s\ntarget:%s\n%s\n", obj["version"], obj["time"], obj["target"], obj["log"]
  }

=== �Хå�����ɤ�����

[[lib:yaml]] �饤�֥��Ǥϡ��ʲ��Υ饤�֥���Хå�����ɤȤ��ƻ��Ѥ��ޤ���

 * [[lib:syck]] �饤�֥��: YAML �С������ 1.0 �򰷤������Ǥ��ޤ���
#@since 1.9.2
 * [[lib:psych]] �饤�֥��: YAML �С������ 1.1 �򰷤������Ǥ��ޤ���

require "yaml" ������硢�ä˲��⤷�ʤ����
#@since 1.9.3
[[lib:psych]] �饤�֥�����Ѥ��ޤ���
#@else
[[lib:syck]] �饤�֥�����Ѥ��ޤ���
#@end

�ǥե���Ȱʳ��ΥХå�����ɤ���Ѥ�������硢[[lib:yaml]] �饤�֥���
require �������� [[lib:psych]] �� [[lib:syck]] �� require ���Ƥ���������

��1: [[lib:psych]] ����Ѥ�����

  require "psych"
  require "yaml"
  YAML.load(...)

��2: [[lib:syck]] ����Ѥ�����

  require "syck"
  require "yaml"
  YAML.load(...)

�ޤ���[[lib:yaml]] �� require ������Ǥ⡢[[m:YAML::ENGINE.yamler]] ��
"psych" ������������� [[lib:psych]] ����ѤǤ��ޤ���([[lib:syck]] �ξ�
���Ʊ�ͤǤ�)

  require "yaml"
  require "psych"
  YAML::ENGINE.yamler = "psych"
  YAML.load(...)

#@end

=== �����λ���

!ruby/sym :foo �ʤɤΤ褦�˥�������ꤹ�뤳�Ȥǡ��ɤ߹��߻��˵��Ҥ�����
�η������Ǥ��ޤ���

��:

  require 'yaml'
  p YAML.load(<<EOS)
  ---
  !ruby/sym :foo
  EOS
  # => :foo

[[lib:yaml]] �Ǥϡ�Ruby �����˰ʲ��Υ����륿���򰷤��ޤ���

 * !ruby/array: [[c:Array]] ���֥�������
 * !ruby/class: [[c:Class]] ���֥�������
 * !ruby/hash:  [[c:Hash]] ���֥�������
 * !ruby/module:  [[c:Module]] ���֥�������
 * !ruby/regexp:  [[c:Regexp]] ���֥�������
 * !ruby/range: [[c:Range]] ���֥�������
 * !ruby/string: [[c:String]] ���֥�������
 * !ruby/struct: [[c:Struct]] ���֥�������
 * !ruby/sym(�⤷���� !ruby/symbol): [[c:Symbol]] ���֥�������
 * !ruby/exception: �㳰���֥�������
 * !ruby/object:<���饹̾>: �嵭�ʳ��Υ��֥�������

��:

  require 'yaml'
  p YAML.load(<<EOS)
  ---
  array: !ruby/array [1, 2, 3]
  hash: !ruby/hash {foo: 1, bar: 2}
  regexp: !ruby/regexp /foo|bar/
  range: !ruby/range 1..10
  EOS
  # => {"regexp"=>/foo|bar/, "hash"=>{"foo"=>1, "bar"=>2}, "array"=>[1, 2, 3], "range"=>1..10}

������ tag:ruby.yaml.org,2002:array �Τ褦�˻��ꤹ�����Ǥ��ޤ���

��:

  require 'yaml'
  p YAML.load(<<EOS)
  ---
  array: !tag:ruby.yaml.org,2002:array [1, 2, 3]
  hash: !tag:ruby.yaml.org,2002:hash {foo: 1, bar: 2}
  EOS
  # => {"hash"=>{"foo"=>1, "bar"=>2}, "array"=>[1, 2, 3]}

��ʬ������������饹�ʤɤ� !ruby/object:<���饹̾> ����ꤷ�ޤ����ʤ���
�ɤ߹�����ˤϴ��ˤ��Υ��饹������ѤߤǤʤ����ɤ߹���ޤ���

�ޤ����������ͤ���ꤹ����ǥ��󥹥����ѿ��������Ǥ��ޤ���

��1:

  require 'yaml'
  
  class Foo
    def initialize
      @bar = "test"
    end
  end
  
  p YAML.load(<<EOS)
  ---
  !ruby/object:Foo
  bar: "test.modified"
  EOS
  # => #<Foo:0xf743f754 @bar="test.modified">

��2:

  require 'yaml'
  
  module Foo
    class Bar
    end
  end
  
  p YAML.load(<<EOS)
  ---
  !ruby/object:Foo::Bar
  EOS
  # => #<Foo::Bar:0xf73907b8>

�ޤ���YAML �������Ѵ�����ݤΥ������ѹ���������硢to_yaml_type �᥽��
�ɤ򥪡��Х饤�ɤ��Ƥ���������
#@since 1.9.2
([[lib:syck]] �Τ�)
#@end

��:

#@since 1.9.3
  require "syck"
#@end
  require "yaml"
  class Foo
    def to_yaml_type
      return "!tag:example.com,2002:foo"
    end
  end
  p Foo.new.to_yaml # => "--- !example.com,2002/foo {}\n\n"

=== ���

̵̾���饹�� YAML �������Ѵ������ [[c:TypeError]] ��ȯ�����ޤ����ޤ���
[[c:IO]] �� [[c:Thread]] ���֥������Ȥʤɤϥ��󥹥����ѿ������֥�����
�Ȥξ��֤��ݻ����Ƥ��ʤ����ᡢ�Ѵ��ϤǤ��ޤ�����[[m:YAML.load]] ������
�˴����������Ǥ��ʤ�������դ��Ƥ���������

ɸ��ź�դ� yaml ��Ϣ�饤�֥��ˤ� 1.8 �ϡ�1.9 �ϤȤ�˰ʲ��Τ褦��
Ruby �ȼ��γ�ĥ�����¤�����ޤ���ɸ��ź�ե饤�֥��ʳ��� yaml �򰷤���
���֥�����Ѥ�����ʤɤ���դ��Ƥ���������

 * ":foo" �Τ褦��ʸ����Ϥ��Τޤ� [[c:Symbol]] �Ȥ��ư�����
 * "y" �� "n" �Ͽ����ͤȤ��ư����ʤ�
 * !!str �Τ褦��û�̷ϤΥ����Х륿���ϰ����ʤ�
#@since 1.9.2
   ([[lib:syck]] �Τ�)
#@end
 * !<tag:yaml.org,2002:str> "foo" �Τ褦�˥����򰷤��ʤ���
   !tag:yaml.org,2002:str "foo" �Τ褦�˵��Ҥ���ɬ�פ�����

#@# �Ǹ�Τ�Τ����餫����Զ����Ȼפ��ޤ���psych �饤�֥��ʤɤ�
#@# �б�������������С�ʬ�����ɲä���ɬ�פ�����ޤ���
#@# �ޤ���!str "foo" �Τ褦�ʥ����륿���򸵤˷�����ꤹ����ˡ�ˤĤ���
#@# �Ͽ���ʤ�����Ŭ�ڤȹͤ������Ҥ��Ƥ��ޤ���

=== ����

YAML Specification

 * [[url:http://www.yaml.org/spec/]]
 * [[url:http://www.yaml.org/type/]]

YAML4R

 * [[url:http://yaml4r.sourceforge.net/]]
 * [[url:http://yaml4r.sourceforge.net/cookbook/]]([[url:http://yaml.org/YAML_for_ruby.html]])
 * [[url:http://yaml4r.sourceforge.net/doc/]]

Rubyist Magazine: [[url:http://jp.rubyist.net/magazine/]]

 * �ץ���ޡ��Τ���� YAML ���� (�����): [[url:http://jp.rubyist.net/magazine/?0009-YAML]]
 * �ץ���ޡ��Τ���� YAML ���� (�����): [[url:http://jp.rubyist.net/magazine/?0010-YAML]]
 * �ץ���ޡ��Τ���� YAML ���� (������): [[url:http://jp.rubyist.net/magazine/?0011-YAML]]
 * �ץ���ޡ��Τ���� YAML ���� (������): [[url:http://jp.rubyist.net/magazine/?0012-YAML]]
 * �ץ���ޡ��Τ���� YAML ���� (õ����): [[url:http://jp.rubyist.net/magazine/?0013-YAML]]

����¾

 * Ruby with YAML: [[url:http://www.namikilab.tuat.ac.jp/~sasada/prog/yaml.html]]

= module YAML

YAML (YAML Ain't Markup Language) �򰷤��⥸�塼��Ǥ���

#@since 1.9.2
YAML ���֥������Ȥϼºݤ� [[c:Psych]] ���֥������ȡ�[[c:Syck]] ���֥���
���ȤΤɤ��餫�Ǥ�������¾�Υ��֥������Ȥ�Ʊ�ͤ˼��Τ��̤Υ��֥�������
�Ǥ����⤷��ǧ�������᥽�åɤε��Ҥ����Ĥ���ʤ����ϡ����줾��Υ饤
�֥����ǧ���Ƥ���������

  require "psych"
  require "syck"
  require "yaml"

  YAML::ENGINE.yamler = "psych"
  p YAML         # => Psych
  p YAML::Stream # => Psych::Stream

  YAML::ENGINE.yamler = "syck"
  p YAML         # => Syck
  p YAML::Stream # => Syck::Stream

== Constants

--- ENGINE -> YAML::EngineManager

[[c:YAML::EngineManager]] ���֤��ޤ���

@see [[m:YAML::EngineManager#yamler]], [[m:YAML::EngineManager#yamler=]]

= class YAML::EngineManager

[[lib:yaml]] �ΥХå�����ɤ�������륯�饹�Ǥ���

== Class Methods

--- new -> YAML::EngineManager

���Ȥ��������ޤ���

== Instance Methods

--- yamler -> String

������ΥХå�����ɤ�ʸ������֤��ޤ���

��:

  require "psych"
  require "yaml"
  p YAML::ENGINE.yamler # => "psych"

--- yamler=(engine)

���Ѥ���Хå�����ɤ����ꤷ�ޤ���

�ޤ���engine ���ޤ� require ����Ƥ��ʤ��ä����� require ���ޤ���

@param engine �Хå�����ɤ�ʸ����ǻ��ꤷ�ޤ���

@raise ArgumentError ̤�б��ΥХå�����ɤ���ꤷ������ȯ�����ޤ���

��:

  require "psych"
  require "yaml"
  p YAML # => Psych

  YAML::ENGINE.yamler = "syck"
  p YAML # => Syck

--- syck? -> bool

[[lib:syck]] �饤�֥��������ξ��� true ���֤��ޤ�������ʳ��ξ��
�� false ���֤��ޤ���

  require "psych"
  require "yaml"
  p YAML::ENGINE.syck? # => false

  YAML::ENGINE.yamler = "syck"
  p YAML::ENGINE.syck? # => true

#@else
#@include(yaml/YAML.inside)
#@include(yaml/Kernel)
#@end
#@end
