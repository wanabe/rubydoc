���� URI �ȥ��饹���Ϣ�դ��뤿��Υ��֥饤�֥��Ǥ���

#@since 1.9.2
= reopen Syck
#@else
= reopen YAML
#@end

== Class Methods

--- tag_class(tag, cls) -> ()

tag �ǻ��ꤷ������ URI �ˡ�cls �ǻ��ꤷ�����饹���Ϣ�դ��ޤ���

@param tag ���� URI ��ʸ����ǻ��ꤷ�ޤ���

@param cls ��Ϣ�դ��륯�饹���֥������Ȥ���ꤷ�ޤ���

#@since 1.9.2
@see [[m:Syck.tagged_classes]]
#@else
@see [[m:YAML.tagged_classes]]
#@end

--- tagged_classes -> {String => Class}

���� URI �ȡ����줬�б����륯�饹�ΰ������֤��ޤ���

��:

 require "pp"
#@since 1.9.3
 require "syck"
#@end
 require "yaml"
 pp YAML.tagged_classes
 # => {"tag:ruby.yaml.org,2002:struct"=>Struct,
 "tag:yaml.org,2002:set"=>YAML::Set,
 "tag:ruby.yaml.org,2002:sym"=>Symbol,
 "tag:yaml.org,2002:omap"=>YAML::Omap,
 ...}
