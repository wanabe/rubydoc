Ruby�Υ��֥������Ȥ�YAML�����γ����ե�����˳�Ǽ���뤿��Υ��饹�Ǥ���

  require "yaml/store"

  db = YAML::Store.new("sample.yml")
  db.transaction do
    db["hoge"] = {1 => 100, "bar" => 101}
  end

= class YAML::Store < PStore

[[c:PStore]] �� [[c:YAML]] �ǤǤ���
[[m:Marshal.#dump]] �����Х��ʥ������
����� YAML �����ǥե��������¸���ޤ���

�Ȥ����� [[c:PStore]] �ȤۤȤ��Ʊ���Ǥ���
���󥿡��ե������� [[c:Hash]] �˻��Ƥ��ޤ��� 

== Class Methods
--- new(*options)

YAML �����Υե�������ɤ߹��ޤ��������ϡ��ǽ�ΰ����˥ե�����̾��ʸ����ǻ��ꤷ�ޤ���
�Ǹ�ΰ������ϥå���Ǥ��ä����ϡ�YAML �Υǥե���Ȥ�������ѹ����ޤ���

@param options �ɤ߹��ޤ������ե�����䡢���ץ�����Ϳ���ޤ���

@see [[m:YAML::DEFAULTS]]

== Instance Methods
#@since 1.8.2
--- dump(table) -> String

YAML ������ʸ������֤��ޤ���

@param table ���Ѥ���ޤ���

--- load(content) -> object

YAML ������ʸ���󤫤�ǡ������ɤ߹��ߤޤ���

@param content YAML ������ʸ�������ꤷ�ޤ���

#@until 1.8.7
--- load_file(file) -> object

[[c:File]] ���֥������Ȥ��� YAML �����Υǡ������ɤ߹��ߤޤ���

@param file [[c:File]] ���֥������Ȥ���ꤷ�ޤ���

#@end
#@end
#@since 1.8.7
--- empty_marshal_checksum -> String

���Υǡ����Υ����å�������֤��ޤ���

--- empty_marshal_data -> String

���Υǡ������֤��ޤ���

--- marshal_dump_supports_canonical_option? -> false

[[c:YAML::Store]] �Ǥ� [[m:Marshal.#dump]] ����Ѥ��ʤ��ΤǾ�˵����֤��ޤ���

#@end
#@until 1.8.2
--- transaction(read_only = false) -> ()
�ȥ�󥶥�����������ޤ������Υ֥�å�����ǤΤߥǡ����١������ɤ߽񤭤��Ǥ��ޤ���
�ɤ߹������ѤΥȥ�󥶥�����󤬻��Ѳ�ǽ�Ǥ��� 

@param read_only ������ꤹ��ȡ��ɤ߹������ѤΥȥ�󥶥������ˤʤ�ޤ��� 

@raise PStore::Error read_only �򿿤ˤ����Ȥ��ˡ��ǡ����١������ѹ����褦��������ȯ�����ޤ��� 

  require 'yaml/store'

p  db = YAML::Store.new("/tmp/store.yaml")
  db.transaction {
    db["hoge"] = [ 1, 2, 3, 4]
  }

  begin
    db.transaction(true) {
      db["hoge"] = [ 1, 2, 3, 4]
    }
  rescue PStore::Error
    puts "�ɤ߹������ѤΥȥ�󥶥������˽񤭹��⤦�Ȥ��ޤ����� "
  end


�Ȥ����� [[c:PStore]] �ȤۤȤ��Ʊ���Ǥ���

��

  require "yaml/store"

  db = YAML::Store.new("sample.yml")
  db.transaction do
    db["hoge"] = {1 => 100, "bar" => 101}
  end

  # sample.yml
  hoge:
    1: 100
    bar: 101

[[c:PStore]] Ʊ�͡��桼��������������饹�Υ��֥������Ȥ���¸���뤳�Ȥ�Ǥ��ޤ���

  require "yaml/store"
  
  class Foo
    attr_accessor :foo
  end
  
  db = YAML::Store.new("sample.yml")
  db.transaction do
    f = Foo.new
    f.foo = 777
    db["bar"] = f
  end
  
  # sample.yml
  bar: !ruby/object:Foo
    foo: 777
#@end

== Constants
#@since 1.8.7
--- EMPTY_MARSHAL_CHECKSUM -> String

�����ǻ��Ѥ��ޤ���

--- EMPTY_MARSHAL_DATA -> String

�����ǻ��Ѥ��ޤ���

#@end

