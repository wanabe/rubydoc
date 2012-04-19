#@# Author: Keiju ISHITSUKA

require e2mmap
require irb/init
require irb/context
require irb/extend-command
#@# TODO: �ɲä��롣
#@# require irb/ruby-lex
require irb/input-method
require irb/locale

irb �� Interactive Ruby ��ά�Ǥ���
irb ��Ȥ��ȡ�Ruby �μ���ɸ�����Ϥ����ñ�����ϡ��¹Ԥ��뤳�Ȥ��Ǥ��ޤ���

=== irb �λȤ���

Ruby �����ΤäƤ���� irb ��Ȥ��Τϴ�ñ�Ǥ���
irb ���ޥ�ɤ�¹Ԥ���ȡ��ʲ��Τ褦�ʥץ��ץȤ�ɽ��ޤ���

  $ irb
  irb(main):001:0>

���Ȥ� Ruby �μ������Ϥ�������ǡ����μ����¹Ԥ��졢��̤�ɽ������ޤ���

  irb(main):001:0> 1+2
  3
  irb(main):002:0> class Foo
  irb(main):003:1>   def foo
  irb(main):004:2>     print 1
  irb(main):005:2>   end
  irb(main):006:1> end
  nil
  irb(main):007:0>

�ޤ� irb ���ޥ�ɤ� [[lib:readline]] �饤�֥��ˤ��б����Ƥ��ޤ���
readline �饤�֥�꤬���󥹥ȡ��뤵��Ƥ�����ˤ�
��ưŪ�˥��ޥ�ɥ饤���Խ�������ε�ǽ���Ȥ���褦�ˤʤ�ޤ���

=== irb �Υ��ޥ�ɥ饤�󥪥ץ����

  irb [options] file_name opts
  options:
  -f                ~/.irbrc ���ɤ߹��ޤʤ�
  -m                bc �⡼�� (ʬ���ȹ���η׻����Ǥ���)
  -d                $DEBUG �� true �ˤ��� (ruby -d ��Ʊ��)
  -Kc               ruby -Kc ��Ʊ��
  -r library        ruby -r ��Ʊ��
#@since 1.8.2
  -I                ruby -I ��Ʊ��
#@end
  --verbose         ���줫��¹Ԥ���Ԥ�ɽ������ (�ǥե����)
  --noverbose       ���줫��¹Ԥ���Ԥ�ɽ�����ʤ�
  --echo            �¹Է�̤�ɽ������ (�ǥե����)
  --noecho          �¹Է�̤�ɽ�����ʤ�
  --inspect         ��̽��Ϥ�inspect���Ѥ��� (bc �⡼�ɰʳ��Ǥϥǥե����)
  --noinspect       ��̽��Ϥ�inspect���Ѥ��ʤ�
  --readline        readline�饤�֥������Ѥ���
  --noreadline      readline�饤�֥������Ѥ��ʤ����ǥե���ȤǤ�
                    inf-ruby-mode �ʳ��� readline �饤�֥������Ѥ��롣
  --prompt prompt-mode
  --prompt-mode prompt-mode
                    �ץ��ץȥ⡼�ɤ��ڤ��ؤ��롣�����������Ƥ����
                    ���ץȥ⡼�ɤϡ�default/simple/xmp/inf-ruby��
  --inf-ruby-mode   emacs��inf-ruby-mode �ѤΥץ��ץ�ɽ����Ԥʤ���
                    �ä˻��꤬�ʤ��¤� readline �饤�֥��ϻȤ�ʤ��ʤ롣
  --simple-prompt
                    ���˥���ץ�ʥץ��ץȤ��Ѥ���⡼�ɡ�
  --noprompt        �ץ��ץȤ�ɽ�����ʤ���
  --tracer          ���ޥ�ɼ¹Ի��˥ȥ졼�����롣
  --back-trace-limit n
                    �Хå��ȥ졼��ɽ����Хå��ȥ졼����Ƭ���� n��
                    �������� n �����Ԥʤ����ǥե�����ͤ� 16��
  --irb_debug n     irb �ΥǥХå���٥�� n �����ꤹ��
                    (�桼�������Ѥ��٤��ǤϤʤ�)
  -v, --version     irb �ΥС�������ɽ������

=== irb �Υ������ޥ���

irb ���ޥ�ɤϵ�ư���˥ۡ���ǥ��쥯�ȥ�� .irbrc �Ȥ����ե�������ɤ߹��ߤޤ���
.irbrc �� Ruby ������ץȤǤ����ۡ���ǥ��쥯�ȥ�� .irbrc ��¸�ߤ��ʤ����ϡ�
�����ȥǥ��쥯�ȥ�� .irbrc, irb.rc, _irbrc, $irbrc ����֤˥��ɤ��褦��
��ߤޤ���

�ʲ��Τ褦�� (Ruby ��) ���� .irbrc �˵��Ҥ���ȡ�
irb ���ޥ�ɤΥ��ץ�������ꤷ���Τ�Ʊ�����̤������ޤ���

  IRB.conf[:AUTO_INDENT] = false
  IRB.conf[:BACK_TRACE_LIMIT] = 16
  IRB.conf[:DEBUG_LEVEL] = 1
  IRB.conf[:ECHO] = nil
  IRB.conf[:EVAL_HISTORY] = nil
  IRB.conf[:HISTORY_FILE] = nil
  IRB.conf[:IGNORE_EOF] = true
  IRB.conf[:IGNORE_SIGINT] = true
  IRB.conf[:INSPECT_MODE] = nil
  IRB.conf[:IRB_NAME] = "irb"
  IRB.conf[:IRB_RC] = nil
  IRB.conf[:MATH_MODE] = false
  IRB.conf[:PROMPT] = {....}
  IRB.conf[:PROMPT_MODE] = :DEFAULT
  IRB.conf[:SINGLE_IRB] = false
  IRB.conf[:SAVE_HISTORY] = nil
  IRB.conf[:USE_LOADER] = true
  IRB.conf[:USE_READLINE] = nil
  IRB.conf[:USE_TRACER] = true
  IRB.conf[:VERBOSE] = true

���줾��������ͤξܺ٤ˤĤ��Ƥϡ�[[c:IRB::Context]] �򻲾Ȥ��Ƥ���������

====[a:customize_prompt] �ץ��ץȤΥ������ޥ���

irb �Υץ��ץȤ򥫥����ޥ������������ϡ�
�ޤ��ȼ��Υץ��ץȥ⡼�ɤ��������
����򥳥ޥ�ɥ饤��� .irbrc �˻��ꤷ�ޤ���

�ޤ����������ץ��ץȥ⡼�ɤ��������ˤϡ�
�㤨�� .irbrc �ǰʲ��Τ褦�˵��Ҥ��ޤ���

  # �������ץ��ץȥ⡼�� MY_PROMPT ���������
  IRB.conf[:PROMPT][:MY_PROMPT] = {
    :PROMPT_I => nil,          # �̾���Υץ��ץ�
    :PROMPT_S => nil,          # ʸ����ʤɤη�³�ԤΥץ��ץ�
    :PROMPT_C => nil,          # ������³���Ƥ�����Υץ��ץ�
    :RETURN => "    ==>%s\n"   # �᥽�åɤ��������Υץ��ץ�
  }

���޺��������������ץ��ץȥ⡼�ɤ�Ȥ��ˤϡ�
�ʲ��Τ褦�� irb ���ޥ�ɤ� --prompt ���ץ�������ꤷ�ޤ���

  $ irb --prompt my-prompt

�����ꤹ��Τ����ݤʤ顢.irbrc �˰ʲ��μ��򵭽Ҥ��ޤ���

  # �ץ��ץȥ⡼�� MY_PROMPT ��Ȥ�
  IRB.conf[:PROMPT_MODE] = :MY_PROMPT

PROMPT_I, PROMPT_S, PROMPT_C �ˤϥե����ޥå�ʸ�������ꤷ�ޤ���
�ե����ޥå�ʸ����Ǥ� [[m:Kernel.#printf]] �Τ褦��
��%�פ��Ѥ�����ˡ���Ȥ��ޤ���
�ե����ޥå�ʸ����ǻ��Ѳ�ǽ�ʵ�ˡ�ϰʲ����̤�Ǥ���

: %N
    ��ư���Ƥ��륳�ޥ��̾
: %m
    main ���֥������� (self) �� to_s ����ʸ����
: %M
    main ���֥������� (self) �� inspect ����ʸ����
: %l
    ʸ������Υ����פ�ɽ�� (", ', /, ], `]'��%w����λ�)
: %NNi
    ����ǥ�ȤΥ�٥��NN ��˱��ͤᤷ��ʸ����
    NN �Ͼ�ά��ǽ��
: %NNn
    ���ֹ��NN ��˱��ͤᤷ��ʸ����
    NN �Ͼ�ά��ǽ��
: %%
    ʸ����%�פ��켫��

�ޤ���RETURN �ϸ��ߤΤȤ��� printf ������Ʊ�������ǻ��ꤷ�ޤ���
������������ϻ��ͤ��Ѥ���ǽ��������ޤ���

�㤨�С��ǥե���ȤΥץ��ץȥ⡼�ɤǤ���
��default�ץץ��ץȥ⡼�ɤϰʲ��Τ褦�����ꤵ��Ƥ��ޤ���

  IRB.conf[:PROMPT_MODE][:DEFAULT] = {
    :PROMPT_I => "%N(%m):%03n:%i> ",
    :PROMPT_S => "%N(%m):%03n:%i%l ",
    :PROMPT_C => "%N(%m):%03n:%i* ",
    :RETURN => "%s\n"
  }

�ץ��ץȥ⡼�ɤ� :DEFAULT
��¾�� :NULL, :CLASSIC, :SIMPLE, :XMP ���������Ƥ��ޤ���

=== ���� irb

irb �Ǥϡ���ư���� irb ���󥿥ץ꥿�Ȥ���Ω�����Ķ������
�֥��� irb�פ�Ǥ�դο�������ư���뤳�Ȥ��Ǥ��ޤ���
���� irb �ϡ�irb �¹���ˡ�irb�פ����Ϥ���ȵ�ư���ޤ���

�㤨�аʲ��μ¹���򸫤Ƥ���������

  irb(main):004:0> x = "OK"          # �������ѿ� x �����
  => "OK"
  irb(main):005:0> x                 # x ��ɽ��
  => "OK"
  irb(main):006:0> irb               # ���� irb ��ư
  irb#1(main):001:0> x               # x ��ɽ��
  NameError: undefined local variable or method `x' for main:Object
	  from (irb#1):1:in `Kernel#binding'

��ư���Υ��󥿥ץ꥿�ǥ������ѿ� x ��������ޤ�������
��irb�פǥ��� irb ��ư����ȡ�
�������ѿ� x �������ʤ��ʤäƤ��ޤ���
���줬����Ω�����Ķ��פΰ�̣�Ǥ���

=== ���� irb ������

irb ���ޥ�ɵ�ư���Υ��󥿥ץ꥿�������
���ޥ�ɥ饤�󥪥ץ����� IRB.conf ���ͤǷ�ޤ�ޤ���
������Ф��ơ����� irb ���󥿥ץ꥿������ϡ�
�ƥ��󥿥ץ꥿�Ρ�conf�ץ��֥������Ȥ��ͤǷ�ޤ�ޤ���

conf ���֥������Ȥ��ͤ��ѹ�����ˤϡ�
�ޤ��ʲ��Τ褦�˥��� irb ��ư���Ƥ��� conf ���֥������Ȥ�
�ͤ��İ���ѹ�������ˡ������ޤ���

  $ irb
  irb(main):001:0> irb                     # ���� irb ��ư
  irb#1(main):001:0> conf.prompt_i         # prompt_i ���ͤ��ǧ
  => "%N(%m):%03n:%i> "
  irb#1(main):002:0> conf.prompt_i = ">"   # prompt_i ���ͤ��ѹ�
  => ">"
  >                                        # �ץ��ץȤ��Ѥ�ä�

������������ irb ��ư���뤿�Ӥ���������Ϥ���Τ����ݤǤ���
�����ǡ�IRB.conf[:IRB_RC] ��Ȥ���ˡ��Ҳ𤷤ޤ���

IRB.conf[:IRB_RC] �� Proc ���֥������Ȥ����ꤷ�Ƥ����ȡ�
���� irb ����ư����뤿�Ӥˡ����� Proc ���֥������Ȥ�
IRB::Context ���֥������Ȥ��Ϥ��Ƽ¹Ԥ��ޤ���
����ˤ�äƥ��� irb �������ޤȤ�����ꤹ�뤳�Ȥ��Ǥ��ޤ���

�ʲ�����򼨤��ޤ���

  $ irb
  irb(main):001:0> IRB.conf[:IRB_RC] = lambda {|conf| conf.prompt_i = "> " }
  => #<Proc:0x00002a95fa3fd8@(irb):2>
  irb(main):002:0> irb
  >

=== irb �λ�����

irb �Τ�����ʻ������ʲ��˼����ޤ���

  $ irb
  irb(main):001:0> irb                        # ����irb��Ω������
  irb#1(main):001:0> jobs                     # ����irb�Υꥹ��
  #0->irb on main (#<Thread:0x400fb7e4> : stop)
  #1->irb#1 on main (#<Thread:0x40125d64> : running)
  nil
  irb#1(main):002:0> fg 0                     # job�Υ����å�
  nil
  irb(main):002:0> class Foo;end
  nil
  irb(main):003:0> irb Foo                    # Foo�򥳥�ƥ����Ȥ���irb
                                              # Ω������
  irb#2(Foo):001:0> def foo                   # Foo#foo�����
  irb#2(Foo):002:1>   print 1
  irb#2(Foo):003:1> end
  nil
  irb#2(Foo):004:0> fg 0                      # job�򥹥��å�
  nil
  irb(main):004:0> jobs                       # job�Υꥹ��
  #0->irb on main (#<Thread:0x400fb7e4> : running)
  #1->irb#1 on main (#<Thread:0x40125d64> : stop)
  #2->irb#2 on Foo (#<Thread:0x4011d54c> : stop)
  nil
  irb(main):005:0> Foo.instance_methods       # Foo#foo�������������
                                              # ��Ƥ���
  ["foo"]
  irb(main):006:0> fg 2                       # job�򥹥��å�
  nil
  irb#2(Foo):005:0> def bar                   # Foo#bar�����
  irb#2(Foo):006:1>  print "bar"
  irb#2(Foo):007:1> end
  nil
  irb#2(Foo):010:0>  Foo.instance_methods
  ["bar", "foo"]
  irb#2(Foo):011:0> fg 0
  nil
  irb(main):007:0> f = Foo.new
  #<Foo:0x4010af3c>
  irb(main):008:0> irb f                      # Foo�Υ��󥹥��󥹤�irb��
                                              # Ω��������.
  irb#3(#<Foo:0x4010af3c>):001:0> jobs
  #0->irb on main (#<Thread:0x400fb7e4> : stop)
  #1->irb#1 on main (#<Thread:0x40125d64> : stop)
  #2->irb#2 on Foo (#<Thread:0x4011d54c> : stop)
  #3->irb#3 on #<Foo:0x4010af3c> (#<Thread:0x4010a1e0> : running)
  nil
  irb#3(#<Foo:0x4010af3c>):002:0> foo         # f.foo�μ¹�
  nil
  irb#3(#<Foo:0x4010af3c>):003:0> bar         # f.bar�μ¹�
  barnil
  irb#3(#<Foo:0x4010af3c>):004:0> kill 1, 2, 3# job��kill
  nil
  irb(main):009:0> jobs
  #0->irb on main (#<Thread:0x400fb7e4> : running)
  nil
  irb(main):010:0> exit                       # ��λ
  $

=== irb �ǻ��Ѳ�ǽ�ʥ��ޥ�ɰ���

���ΰ����˵��Ҥ���Ƥ��륳�ޥ�ɤϡ�irb �Υץ��ץȤǥ쥷���Фʤ��ǻ�
�����Ȥ��Ǥ��ޤ���

irb �Υ��ޥ�ɤϡ���ñ��̾����Ƭ�ˡ�irb_�פ�Ĥ���̾���Ȥ�ξ���������
��Ƥ��ޤ�������ϡ���ñ��̾���������С��饤�ɤ��줿���ˤ�irb �Υ���
��ɤ��¹ԤǤ���褦�ˤ��뤿��Ǥ���

: exit
: irb_exit
: quit
: irb_quit

  irb ��λ���ޤ���
  ���� irb �ǸƤӽФ������ϡ����Υ��� irb ������λ���ޤ���

#@# ret �ϻ��Ѥ���Ƥ��ʤ��褦�ʤΤǡ�������ޤ�����

: conf
: context
: irb_context

  irb �θ��ߤ�����Ǥ���[[c:IRB::Context]] ���֥������ȤǤ���
  ���Υ᥽�åɤ����� IRB::Context ���֥������Ȥ��Ф��ƥ᥽�åɤ�
  �ƤӽФ����Ȥǡ����߲�Ư��� irb ���󥿥ץ꥿�������ɽ�����ѹ��Ǥ��ޤ���

: cwws
: pwws
: irb_cwws
: irb_pwws
: irb_print_working_workspace
: irb_current_working_binding
: irb_print_working_binding
: irb_cwb
: irb_pwb

  irb �� self ���֤��ޤ���

: cws(*obj)
: chws(*obj)
: irb_cws(*obj)
: irb_chws(*obj)
: irb_change_workspace(*obj)
: cb(*obj)
: irb_cb(*obj)
: irb_change_binding(*obj)

  irb �� self �� obj ���ѹ����ޤ���
  obj ����ά���줿�Ȥ��ϡ�
  irb ��ư�����Ȥ��� main ���֥������Ȥ� self �ˤ��ޤ���

: workspaces
: irb_workspaces
: irb_bindings
: bindings

  ���ߤΥ�����ڡ����ΰ������֤��ޤ���

: pushws(*obj)
: irb_pushws(*obj)
: irb_push_workspace(*obj)
: irb_push_binding(*obj)
: irb_pushb(*obj)
: pushb(*obj)

  UNIX �����륳�ޥ�ɤ� pushd ��Ʊ���Ǥ���

: popws
: irb_popws
: irb_pop_workspace
: irb_pop_binding
: irb_popb
: popb

  UNIX �����륳�ޥ�ɤ� popd ��Ʊ���Ǥ���

: irb
: irb(obj)

  ���������� irb ���󥿥ץ꥿��ư���ޤ���
  ���֥������� obj �����ꤵ�줿���Ϥ��� obj �� self �ˤ��ޤ���

: jobs
: irb_jobs

  ���� irb �Υꥹ�Ȥ��֤��ޤ���

: fg(n)
: irb_fg(n)

  n �ǻ��ꤷ������ irb �˰�ư���ޤ���
  n �ϰʲ��Τ����줫���ͤǻ��ꤷ�ޤ���

//emlist{
  * irb ���󥿥ץ꥿�ֹ�
  * irb ���֥�������
  * ����å� ID
  * �ƥ��󥿥ץ꥿�� self (��irb(obj)�פǵ�ư�������� obj)
//}

: kill(n)
: irb_kill(n)

  n �ǻ��ꤷ������ irb ����ߤ��ޤ���
  n �ϰʲ��Τ����줫���ͤǻ��ꤷ�ޤ���

//emlist{
  * irb ���󥿥ץ꥿�ֹ�
  * irb ���֥�������
  * ����å� ID
  * �ƥ��󥿥ץ꥿�� self (��irb(obj)�פǵ�ư�������� obj)
//}

: source(path)
: irb_source(path)

  ���ߤ� irb ���󥿥ץ꥿��ǡ�
  Ruby ������ץ� path ��ɾ�����ޤ���

  path �����Ƥ� irb �ǰ�Ԥ��ĥ����פ������Τ褦�ˡ�irb ��ǰ�Ԥ���ɾ
  ������ޤ���[[m:$"]] �Ϲ������줺�����٤Ǥ�¹Ԥ�ľ�������Ǥ��ޤ���

  source �Ȥ���̾���� UNIX ������� source ���ޥ�ɤ�ͳ�褷�ޤ���

#@since 1.9.1
: irb_load(path, prev = nil)
#@else
: irb_load(path, prev)
#@end

  Ruby �� load �� irb �ǤǤ���
  �ե����� path �� Ruby ������ץȤȤߤʤ���
  ���ߤ� irb ���󥿥ץ꥿��Ǽ¹Ԥ��ޤ���
  ��������prev �� true ����ꤷ�����ϼ¹Ԥ�����Ū�����������̵̾�⥸�塼
  ���ǹԤ�졢�����Х��̾�����֤�������ޤ���

  [[m:Kernel.#load]] �Ȱۤʤꡢpath �����Ƥ� irb �ǰ�Ԥ��ĥ����פ�����
  �Τ褦�ˡ�irb ��ǰ�Ԥ���ɾ������ޤ���

: irb_require(path)

  Ruby �� require �� irb �ǤǤ���
  �ե����� path �򸽺ߤ� irb ���󥿥ץ꥿��Ǽ¹Ԥ��ޤ���

  path �� Ruby ������ץȤ���ꤷ�����ϡ�[[m:Kernel.#kernel]] �Ȱۤ�
  �ꡢpath �����Ƥ� irb �ǰ�Ԥ��ĥ����פ������Τ褦�ˡ�irb ��ǰ�Ԥ�
  ��ɾ������ޤ���require �������������� true �򡢤����Ǥʤ�����
  false ���֤��ޤ���

  ��ĥ�饤�֥��(*.so,*.o,*.dll �ʤ�)����ꤷ������ñ��� require ��
  ��ޤ���

: help(*names)
: irb_help(*names)

  RI ���� Ruby �Υɥ�����Ȥ򻲾Ȥ��ޤ���

//emlist{
  irb(main):001:0> help String#match
  ...
//}

#@since 1.9.2
  names ����ꤷ�ʤ��ä����ϡ�RI ������Ū�ʥ⡼�ɤǵ�ư���ޤ����᥽��
  ��̾�ʤɤ����Ϥ�����ǥɥ�����Ȥθ������Ԥ��ޤ������ϤΥ����䴰��
  ��������Ǥ��ޤ����ޤ������Ԥ����Ϥ������ irb �Υץ��ץȤ�������
  �Ǥ��ޤ���

//emlist{
  irb(main):001:0> help

  Enter the method name you want to look up.
  You can use tab to autocomplete.
  Enter a blank line to exit.

  >> String#match
  String#match
  
  (from ruby core)
  ------------------------------------------------------------------------------
    str.match(pattern)        -> matchdata or nil
    str.match(pattern, pos)   -> matchdata or nil
  ...
//}
#@end

#@until 1.9.1
==== ���ޥ�ɼ¹Ի������

�ʲ��Υ��ޥ�ɤϰ�������ꤻ���˼¹Ԥ������ˤϥ��顼��ȯ�����ޤ���

 * cwws
 * cws
 * workspaces
 * irb
 * irb_load

�ޤ���help ���ޥ�ɤ� 1.8 �ϤǤ�ư��ʤ��Х�������ޤ���
#@end

=== �����ƥ��ѿ�

: _

  ľ���μ��μ¹Է�̤Ǥ���

  �㡧

//emlist{
  $ irb
  irb(main):001:0> 10
  => 10
  irb(main):002:0> 2**32
  => 4294967296
  irb(main):003:0> _
  => 4294967296
  irb(main):004:0> _ - 2**31
  => 2147483648
  irb(main):005:0>
//}

: __

  �¹Է�̤�����Ǥ���
  __[lineno] �ǡ�lineno �ԤǼ¹Ԥ�����̤������ޤ���
  lineno ����λ��ϡ��ǿ��η�̤��� -lineno �Ԥ�������
  ��̤������ޤ���

  �����ѿ��ϥǥե���ȤǤϻȤ��ޤ���
  �����ѿ�����Ѥ���ˤϡ����餫���� .irbrc �ʤɤ�
  conf.eval_history ���ͤ���ꤷ�Ƥ����ʤ���Ф����ޤ���

  �㡧

//emlist{
  $ irb
  irb(main):001:0> conf.eval_history = 100
  => 100
  irb(main):002:0> 1 + 2
  => 3
  irb(main):003:0> 'hoge' + 'foo'
  => "hogefoo"
  irb(main):004:0> __[2]
  => 3
  irb(main):005:0> __[3]
  => "hogefoo"
  irb(main):006:0> __[-1]
  => "hogefoo"
  irb(main):007:0>
//}

=== ���Ѿ������

irb��, ɾ���Ǥ������(�����Ĥ�������)�Ǥ��༡�¹Ԥ�Ԥʤ��ޤ�.
�������ä�, ruby��ľ�ܻȤä����ȼ㴳�ۤʤ�ư���Ԥʤ���礬����ޤ�.

�������餫�ˤʤäƤ������������������ޤ�.

==== �������ѿ������

Ruby �Ǥϰʲ��Υץ����ϥ��顼�ˤʤ�ޤ�.

  eval "foo = 0"
  p foo    # -:2: undefined local variable or method `foo' for #<Object:0x40283118> (NameError)

�Ȥ��� irb ���Ѥ���ȡ��ʲ��Τ褦�ˡ����顼�ˤʤ�ޤ���

  >> eval "foo = 0"
  => 0
  >> foo
  => 0

���ΰ㤤�ϡ�Ruby �� irb �Υץ����Υ���ѥ�����ˡ�κ��˵������ޤ���
Ruby �Ϻǽ�˥�����ץ����Τ򥳥�ѥ��뤷�ƥ������ѿ�����ꤷ�ޤ���
������Ф���irb �ϼ������뤷�Ƽ¹Բ�ǽ�ˤʤä������ǽ��֤˥���ѥ��뤷�ޤ���
�嵭����Ǥϡ�

  eval "foo = 0"

�����Ϥ��줿�����Ǥޤ����μ��򥳥�ѥ��롦�¹Ԥ��ޤ���
���λ������ѿ� foo ���������뤿�ᡢ
���μ������Ϥ�������Ǥ��Ǥ��ѿ� foo ���������Ƥ���ΤǤ���

���� Ruby �� irb ��ư��ΰ㤤��ʤ����������ϡ�
irb �Ǥϰʲ��Τ褦�˼��� begin �� end �Ǥ����ä����Ϥ��Ƥ���������

  >> begin
  ?>   eval "foo = 0"
  >>   foo
  >> end
  NameError: undefined local variable or method `foo' for #<Object:0x4013d0f0>
  (irb):3
  (irb_local_binding):1:in `eval'

==== �ҥ��ɥ������

���ߤΤȤ���ҥ��ɥ�����Ȥμ������Դ����Ǥ���

==== ����ܥ�

irb �ϥ���ܥ�Ǥ��뤫�ɤ�����Ƚ�Ǥ�ְ㤨�뤳�Ȥ�����ޤ���
����Ū�ˤϡ�������λ���Ƥ���Τ˷�³�Ԥȸ��ʤ����Ȥ�����ޤ���

===[a:history] �������¸

����ˡ�.irbrc �ǰʲ��Τ褦��
conf.save_history ���ͤ���ꤷ�Ƥ����ȡ�
�¹Է�̤����򤬥ե��������¸����ޤ���

  IRB.conf[:SAVE_HISTORY] = 100

����ե������̾���ϥǥե���ȤǤ� ~/.irb_history �Ǥ���
����ե������̾���� IRB.conf[:HISTORY_FILE] �ǻ���Ǥ��ޤ���

#@since 1.9.2
===[a:inspect_mode] �¹Է�̤ν�������

irb �Υץ��ץ���Ǥ� conf.inspect_mode �ǡ�.irbrc ��Ǥ�
IRB.conf[:INSPECT_MODE] �˰ʲ��Τ����줫���ͤ����ꤹ����ǡ���̽��Ϥ�
�������ѹ���������Ǥ��ޤ���

: false, :to_s, :raw

  ���Ϸ�̤� to_s ������Τ�ɽ�����ޤ���

: true, :p, :inspect

  ���Ϸ�̤� inspect ������Τ�ɽ�����ޤ���

: :pp, :pretty_inspect

  ���Ϸ�̤� pretty_inspect ������Τ�ɽ�����ޤ���

: :yaml, :YAML

  ���Ϸ�̤� YAML �����ˤ�����Τ�ɽ�����ޤ���

: :marshal, :Marshal, :MARSHAL, [[c:Marshal]]

  ���Ϸ�̤� [[m:Marshal.#dump]] ������Τ�ɽ�����ޤ���

��:

  $ irb
  irb(main):001:0> conf.inspect_mode = :yaml
  irb(main):002:0> :foo # => --- :foo

�ޤ���irb �ε�ư���� --inspect ���ץ�������ꤹ����Ǥ�Ʊ�ͤ�������
���ޤ���

  $ irb --inspect [raw|p|pp|yaml|marshal|...]

�嵭�ʳ��ˤ��ȼ��ν����������ɲä�������Ǥ��ޤ����ܤ�����
[[m:IRB::INSPECTORS.def_inspector]] �򻲾Ȥ��Ƥ���������
#@end

= module IRB

irb �Υᥤ��⥸�塼��Ǥ���

== Class Methods

--- conf -> Hash

irb �������ϥå�����֤��ޤ���

--- version -> String

IRB �ΥС�������ʸ������֤��ޤ���

--- CurrentContext -> IRB::Context

���ߤ� irb �˴ؤ��� [[c:IRB::Context]] ���֤��ޤ���

--- start(ap_path = nil) -> ()

[[c:IRB]] ���������ơ��ȥåץ�٥�� irb �򳫻Ϥ��ޤ���

@param ap_path irb ���ޥ�ɤΥѥ�����ꤷ�ޤ���

--- irb_at_exit -> ()

at_exit ����Ͽ���줿������¹Ԥ��ޤ���

�桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

--- irb_exit(irb, ret) -> object

irb ��λ���ޤ���ret �ǻ��ꤷ�����֥������Ȥ��֤��ޤ���

@param irb ���ߤ� [[c:IRB::Irb]] ���֥������Ȥ���ꤷ�ޤ���

@param ret ����ͤ���ꤷ�ޤ���

�桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

--- irb_abort(irb, exception = Abort)

�¹���ν��������Ǥ��ޤ���ɬ���㳰��ȯ�����뤿�ᡢ�����֤��ޤ���

@param irb ���ߤ� [[c:IRB::Irb]] ���֥������Ȥ���ꤷ�ޤ���

@param exception ȯ���������㳰����ꤷ�ޤ������ꤷ�ʤ��ä�����
                 [[c:IRB::Abort]] ��ȯ�����ޤ���

@raise exception ���� exception �ǻ��ꤷ���㳰��ȯ�����ޤ���

�桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

= class IRB::Irb

irb ���󥿥ץ꥿�Υᥤ��롼����Ǥ���

�桼����ľ�ܻ��Ѥ����ΤǤϤ���ޤ���

= class IRB::Abort < Exception

�¹���ν��������Ǥ������ȯ���������㳰���饹�Ǥ���
