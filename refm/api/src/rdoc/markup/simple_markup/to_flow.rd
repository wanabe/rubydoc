#@# 1.9 �Ϥ� to_flow.rb �ˤĤ��Ƥϡ�../to_flow.rd ��������������
#@# ʬ�����Ƥⶦͭ�Ǥ���ɥ�����Ȥ����ʤ��ä����ᡢ�ե������ʬ���ޤ�����

require cgi

RDoc �����Υɥ�����Ȥ�ɽ��������ʳ����ι�¤�����줿���֤ˤ��뤿���
���֥饤�֥��Ǥ���

[[m:SM::SimpleMarkup#convert]] �ΰ����� [[c:SM::ToFlow]] �Υ��󥹥���
���Ϥ��ƻ��Ѥ��ޤ���

  require 'rdoc/ri/ri_formatter'
  require 'rdoc/ri/ri_options'
  require 'rdoc/markup/simple_markup'
  require 'rdoc/markup/simple_markup/to_flow'

  m = SM::SimpleMarkup.new
  h = SM::ToFlow.new
  flow = m.convert(input_string, h)
  options = RI::Options.instance
  formatter = options.formatter.new(options, "")
  formatter.display_flow(flow)

�Ѵ�������̤Ϲ�¤�Τ�����Ǽ����Ǥ��ޤ���[[c:SM::ToHtml]] �ʤɤȤϰۤ�
�� [[m:SM::SimpleMarkup#convert]] ��ʸ������֤��ʤ����ᡢ�嵭�Τ褦��
�ե����ޥå����Ѵ�������̤��Ϥ�ɬ�פ�����ޤ���

= class SM::ToFlow

RDoc �����Υɥ�����Ȥ�ɽ��������ʳ����ι�¤�����줿���֤ˤ��뤿���
���饹�Ǥ���

[���] 1.9 �ϤǤϡ�require ��䥯�饹̾���ʲ��Τ褦���ѹ��ˤʤ�ޤ�����

 * require ��: rdoc/markup/to_flow
 * ���饹̾: RDoc::Markup::ToFlow

== Class Methods

--- new -> SM::ToFlow

���Ȥ��������ޤ���

�ºݤ�ʸ������Ѵ�����ݤˤϡ�[[m:SM::SimpleMarkup#convert]] �ΰ����˼�
�Ȥ��Ϥ��ޤ���

@see [[m:SM::SimpleMarkup#convert]]

== Instance Methods

--- add_tag(name, start, stop) -> ()

name ����Ͽ���줿��§�Ǽ������줿ʸ����� start �� stop �ǰϤ�褦�˻�
�ꤷ�ޤ���

@param name [[c:SM::ToFlow]] �ʤɤΥե����ޥå��˼��̤��������̾����
            [[c:Symbol]] �ǻ��ꤷ�ޤ���

@param start ���Ϥε����ʸ����ǻ��ꤷ�ޤ���

@param stop ��λ�ε����ʸ����ǻ��ꤷ�ޤ���
