Ruby �γ�ĥ�饤�֥��Τ���� Makefile ���������饤�֥��Ǥ���

���Υ饤�֥����̾extconf.rb �Ȥ���̾���� ruby ������ץȤ��� require ����ޤ���
���� extconf.rb ��¹Ԥ��� Makefile ���������Τ������Ǥ���

extconf.rb �ν񤭤����ˤĤ��Ƥϡ�
Ruby �Υ��������֤˴ޤޤ�� README.EXT (���ܸ��Ǥ� README.EXT.ja)
�⻲�Ȥ��Ƥ���������

���Υ饤�֥��Ǥ� extconf.rb �򵭽Ҥ���Τ�ͭ�Ѥʥ᥽�åɤ�������Ƥ��ޤ���
�إå��ե������¸�ߥ����å����饤�֥���¸�ߥ����å��ʤɡ�
�����ƥ�֤κ��ۤ�Ĵ�٥����ƥ��Ŭ���� Makefile ���������뤿���
�����Υ᥽�åɤ�ɬ�פȤʤ�ޤ���

=== �Ȥ���

�Ͷ��γ�ĥ�饤�֥�� foo.so ��������뤳�Ȥ�ͤ��ޤ���
���γ�ĥ�饤�֥���������뤿��ˤϡ�
�إå��ե����� bar.h �ȥ饤�֥�� libbar.a �δؿ� baz() ��ɬ�פ��Ȥ��ޤ���
���Τ���� extconf.rb �ϰʲ��Τ褦�˽񤭤ޤ���

  require 'mkmf'

  dir_config('bar')
  if have_header('bar.h') and have_library('bar', 'baz')
    create_makefile('foo')
  end

��ĥ�饤�֥�� foo.so ����������󥹥ȡ��뤹��ˤϰʲ��Τ褦�ˤ��ޤ���

  $ ruby extconf.rb
  $ make
  $ make site-install

foo.so �� extconf.rb �Ǥ� dir_config('bar') ��¹Ԥ��Ƥ���Τǡ�
�桼���ϰʲ��Τ褦�˥��ޥ�ɥ饤�󥪥ץ���� --with-bar-dir
�ʤɤ�Ȥäơ��إå��ե�����Υѥ���饤�֥��Υѥ������Ǥ��ޤ���

  $ ruby extconf.rb --with-bar-include=/usr/local/include \
                    --with-bar-lib=/usr/local/lib

  �ޤ���

  $ ruby extconf.rb --with-bar-dir=/usr/local

dir_config �ؿ��ξܺ٤ˤĤ��Ƥ�
[[m:Kernel.#dir_config]] �򻲾Ȥ��Ƥ���������

=== configure ���ץ����

configure ���ץ����Ȥ� Ruby ���󥿥ץ꥿�Υ���ѥ�����˻��ꤵ�줿
configure ������ץȤΥ��ץ����
�ޤ��� extconf.rb �¹Ի��Υ��ץ����Τ��ȤǤ���

extconf.rb �κ����Ԥ�Ǥ�դΥ��ץ���������Ǥ��ޤ���
[[m:Kernel.#arg_config]] �⻲�Ȥ��Ƥ���������

�ޤ����ʲ��Υ��ץ���󤬥ǥե���Ȥ����Ѳ�ǽ�Ǥ���

: --with-opt-include=DIR
    �إå��ե������õ������ǥ��쥯�ȥ� DIR ���ɲä��ޤ���

: --with-opt-lib=DIR
    �饤�֥��ե������õ������ǥ��쥯�ȥ� DIR ���ɲä��ޤ���

: --with-opt-dir=DIR

    �إå��ե����롢�饤�֥��ե������õ������ǥ��쥯�ȥ�
    DIR/include��DIR/lib �򤽤줾���ɲä��ޤ���

: --with-TARGET-include=DIR

    �إå��ե������õ������ǥ��쥯�ȥ� DIR ���ɲä��ޤ���

    extconf.rb ����� dir_config(TARGET)
    ��¹Ԥ��Ƥ���Ф��Υ��ץ��������Ǥ��ޤ���

: --with-TARGET-lib=DIR

    �饤�֥���õ������ǥ��쥯�ȥ� DIR ���ɲä��ޤ���

    extconf.rb ����� dir_config(TARGET)
    ��¹Ԥ��Ƥ���Ф��Υ��ץ��������Ǥ��ޤ���

: --with-TARGET-dir=DIR

    �إå��ե����롢�饤�֥��ե������õ������ǥ��쥯�ȥ�
    DIR/include��DIR/lib �򤽤줾���ɲä��ޤ���

    extconf.rb ����� dir_config(TARGET)
    ��¹Ԥ��Ƥ���Ф��Υ��ץ��������Ǥ��ޤ���

=== depend �ե�����

�����ȥǥ��쥯�ȥ�� depend �Ȥ���̾���Υե����뤬�����硢
��������� Makefile �κǸ�� depend �ե���������Ƥ��ɲä���ޤ���

depend �ե�����ϥ������ե�����ΰ�¸�ط��򵭽Ҥ��뤿��˻Ȥ��ޤ���
�㤨�г�ĥ�饤�֥��Υ����������� foo.c �� foo.h �򥤥󥯥롼�ɤ��Ƥ����硢
foo.h ���������줿�Ȥ��ˤ� foo.c ��ƥ���ѥ��뤷�����Ǥ��礦��
���Τ褦�ʰ�¸�ط��򵭽Ҥ���ˤ� depend �ե�����˰ʲ��� 1 �Ԥ�񤭤ޤ���

  foo.o: foo.c foo.h

���Τ褦�˽񤯤ȡ�foo.o �� foo.c �� foo.h �˰�¸���Ƥ��뤳�Ȥ򼨤��ޤ���
�Ĥޤꡢfoo.c �� foo.h �Τɤ��餫���������줿����
foo.o ���ꥳ��ѥ��뤵���褦�ˤʤ�ޤ���

C ����ѥ���ˤ�äƤϡ����Τ褦�ʵ��Ҥ�ư�����Ǥ��ޤ���
���̤ˡ����Τ���Υ��ץ����ϡ�-M�פǤ���
��-M�ץ��ץ�������� C ����ѥ����ȤäƤ�����ϡ�
�ʲ��Υ��ޥ�ɤ�¹Ԥ��������Ŭ�ڤ� depend �������Ǥ��ޤ���

  $ cc -M *.c > depend

gcc �ˤϡ�-M ���ץ������������ -MM �Ȥ������ץ����⤢��ޤ���
���Υ��ץ����ϡ��̾ﹹ�����뤳�ȤΤʤ� stdio.h �ʤɡ�
�����ƥ�Υإå��ե�������¸�ط��˴ޤ�ޤ���
���� -MM ���ץ����Ǥϡ���#include <...>�פη����ǻ��Ȥ����
�إå��ե�����򥷥��ƥ�Υإå��ե�����Ȥߤʤ��Ƥ���褦�Ǥ���

gcc �� -MM ���ץ�����Ȥ����ϡ�
�ʲ��Υ��ޥ�ɤ�¹Ԥ����Ŭ�ڤ� depend �������Ǥ��ޤ���

  $ gcc -MM *.c > depend

�ʤ���depend �ե�������¸�ط��ε��Ұʳ��˻Ȥ��٤��ǤϤ���ޤ���
mkmf.rb �� depend �ե������ Makefile ��Ϣ�뤹��Ȥ��ˡ�
�������Ƥ�ù������礬���뤫��Ǥ���

=== extconf.rb ���������� make �������å�

extconf.rb ���������� Makefile �ˤϰʲ��Υ������åȤ��������Ƥ��ޤ���

: all
    ��ĥ�饤�֥���������ޤ���

: clean
    ����������ĥ�饤�֥�ꡢ���֥������ȥե�����ʤɤ������ޤ���

: distclean
: realclean
    clean �������åȤ��������ե�����˲ä��ơ�
    Makefile, extconf.h, core, ruby �ʤɤ������ޤ���

: install
: site-install
    ����������ĥ�饤�֥��� $sitearchdir �˥��󥹥ȡ��뤷�ޤ���
    �����ȥǥ��쥯�ȥ�˥ǥ��쥯�ȥ� lib �������
    �����۲��� ruby ������ץ� (*.rb �ե�����) ��
    �ǥ��쥯�ȥ곬�ؤ��ݤä��ޤ� $sitelibdir �˥��󥹥ȡ��뤷�ޤ���

= reopen Kernel

== Private Instance Methods

#@since 1.9.3
--- xsystem(command, opts = nil) -> ()
#@else
--- xsystem(command) -> ()
#@end

[[m:Kernel.#system]] ��Ʊ���Ǥ��������ޥ�ɤν��Ϥ�(ɸ����ϡ�ɸ�२�顼
���ϤȤ��)���ե�����˽��Ϥ��ޤ������ե�����̾�� mkmf.log �Ǥ���

@param command ���ޥ�ɤ���ꤷ�ޤ���
#@since 1.9.3
@param opts ���ץ����� [[c:Hash]] �ǻ��ꤷ�ޤ���
            :werror �Ȥ��������˿�����ꤹ���
#@end

@see [[m:Kernel.#system]]

--- xpopen(command, *mode) -> IO
--- xpopen(command, *mode){ ... } -> opbject

command ��ɽ�����Ƥ��� [[m:IO.popen]] �μ¹Ԥ��ޤ���

@param command ���ޥ��̾����ꤷ�ޤ���

@param mode �����ץ󤹤� IO �ݡ��ȤΥ⡼�ɤ���ꤷ�ޤ���mode �ξܺ٤� [[m:Kernel.#open]] ���Ȥ��Ʋ�������

@see [[m:IO.popen]]

--- log_src(src) -> ()

Ϳ����줿 C �ץ����Υ����������ɤ�����Ϥ��ޤ���

@param src C �ץ����Υ����������ɤ���ꤷ�ޤ���

--- create_tmpsrc(src) -> String

Ϳ����줿 C �ץ����Υ����������ɤ����ե�����˽��Ϥ���Ϳ����줿�����������ɤ��֤��ޤ���

@param src C �ץ����Υ����������ɤ���ꤷ�ޤ���

#@# --- try_link0(src[, opt])
#@# nodoc

--- have_devel? -> bool

��ȯ�Ķ������󥹥ȡ��뤵��Ƥ��뤫�ɤ����������뤿��˲��⤷�ʤ��¹ԥե�
�����������褦�Ȼ�ߤޤ��������������ϡ������֤��ޤ������Ԥ������
�ϡ������֤��ޤ���

--- try_do(src, command, *opts) ->()
--- try_do(src, command, *opts){ ... } -> ()

@param src C �ץ����Υ����������ɤ���ꤷ�ޤ���

@param command ���ޥ�ɤ���ꤷ�ޤ���

@param opts ���ץ����� [[c:Hash]] �ǻ��ꤷ�ޤ���

@raise RuntimeError ��ȯ�Ķ������󥹥ȡ��뤵��Ƥ��ʤ�����ȯ�����ޤ���

@see [[m:Kernel.#xsystem]]

--- link_command(ldflags, opt = "", libpath = $DEFLIBPATH|$LIBPATH) -> String

�ºݤ˥�󥯤���ݤ˻��Ѥ��륳�ޥ�ɤ��֤��ޤ���

@param ldflags LDFLAGS ���ɲä����ͤ���ꤷ�ޤ���

@param opt LIBS ���ɲä����ͤ���ꤷ�ޤ���

@param libpath LIBPATH �˻��ꤹ���ͤ���ꤷ�ޤ���

@see [[m:RbConfig.expand]]

--- cc_command(opt = "") -> String

�ºݤ˥���ѥ��뤹��ݤ˻��Ѥ��륳�ޥ�ɤ��֤��ޤ���

@param opt ����ѥ����Ϳ�����ɲäΥ��ޥ�ɥ饤���������ꤷ�ޤ���

@see [[m:RbConfig.expand]]

--- cpp_command(outfile, opt = "") -> String

�ºݤ˥ץ�ץ��å���¹Ԥ���ݤ˻��Ѥ��륳�ޥ�ɤ��֤��ޤ���

@param outfile ���ϥե������̾������ꤷ�ޤ���

@param opt �ץ�ץ��å���Ϳ�����ɲäΥ��ޥ�ɥ饤���������ꤷ�ޤ���

@see [[m:RbConfig.expand]]

--- libpathflag(libpath = $DEFLIBPATH|$LIBPATH) -> String

Ϳ����줿 libpath �� -L �դ���ʸ������Ѵ������֤��ޤ���

@param libpath LIBPATH �˻��ꤹ���ͤ���ꤷ�ޤ���

--- with_werror(opt, opts = nil){|opt| ... } -> object
--- with_werror(opt, opts = nil){|opt, opts| ... } -> object
#@todo �����ѡ�

???

@param opt ????

@param opts ????

@return �֥�å���ɾ��������̤��֤��ޤ���

--- rm_f(*files) -> ()

[[m:FileUtils.#rm_f]] �Υ�åѡ��᥽�åɤǤ���

@param files �ե�����Υꥹ�Ȥ���[[m:Dri.glob]]�����ѤǤ��� glob �ѥ��������ꤷ�ޤ���
             �Ǹ�����Ǥ� [[c:Hash]] �ξ��� [[m:FileUtils.#rm_f]] ����������ˤʤ�ޤ���

@see [[m:FileUtils.#rm_f]], [[m:Dri.glob]]

--- rm_rf(*files) -> ()

[[m:FileUtils.#rm_rf]] �Υ�åѡ��᥽�åɤǤ���

@param files �ե�����Υꥹ�Ȥ���[[m:Dri.glob]]�����ѤǤ��� glob �ѥ��������ꤷ�ޤ���
             �Ǹ�����Ǥ� [[c:Hash]] �ξ��� [[m:FileUtils.#rm_f]] ����������ˤʤ�ޤ���

@see [[m:FileUtils.#rm_rf]], [[m:Dri.glob]]

--- modified?(target, times) -> Time | nil

target �� times �����Ƥ����Ǥ��⿷�������� target �ι���������֤��ޤ���
�����Ǥʤ����� nil ���֤��ޤ���target ��¸�ߤ��ʤ����� nil ���֤��ޤ���

@param target �оݤΥե�����̾����ꤷ�ޤ���

@param times [[c:Time]] ������ [[c:Time]] ���Ļ��ꤷ�ޤ���

--- merge_libs(*libs) -> [String]
#@todo �Ȥ��Ƥʤ�

@param libs ???

--- try_link(src, opt = "", *options) -> bool
--- try_link(src, opt = "", *options){ ... } -> bool

C �ץ����Υ����������� src �򥳥�ѥ��롢��󥯤��ޤ���

���Υ᥽�åɤ� [[m:$CFLAGS]] �� [[m:$LDFLAGS]] ���ͤ⥳��ѥ���ޤ��ϥ�
�󥫤��Ϥ��ޤ���

����ʤ���󥯤Ǥ����� true ���֤��ޤ���
����ѥ���ȥ�󥯤˼��Ԥ����� false ���֤��ޤ���

@param src C �ץ����Υ����������ɤ���ꤷ�ޤ���

@param opt ��󥫤˥��ޥ�ɰ����Ȥ����Ϥ��ͤ���ꤷ�ޤ���

�㡧

  if try_link("int main() { sin(0.0); }", '-lm')
    $stderr.puts "sin() exists"
  end

--- try_cpp(src, opt = "", *opts) -> bool
--- try_cpp(src, opt = "", *opts){ ... } -> bool

C �ץ����Υ����������� src ��ץ�ץ������ޤ���

[[m:$CPPFLAGS]], [[m:$CFLAGS]] ���ͤ�ץ�ץ��å��˥��ޥ�ɥ饤�����
�Ȥ����Ϥ��ޤ���

���Υ᥽�åɤϥإå��ե������¸�ߥ����å��ʤɤ˻��Ѥ��ޤ���

@param src C �ץ����Υ����������ɤ���ꤷ�ޤ���

@param opt �ץ�ץ��å��˥��ޥ�ɥ饤������Ȥ����Ϥ��ͤ���ꤷ�ޤ���

@return ����ʤ��ץ�ץ����Ǥ����� true ���֤��ޤ���
        �ץ�ץ����˼��Ԥ����� false ���֤��ޤ���

�㡧

  if try_cpp("#include <stdio.h>")
    $stderr.puts "stdio.h exists"
  end

--- egrep_cpp(pattern, src, opt = "") -> bool
--- egrep_cpp(pattern, src, opt = ""){ ... } -> bool

C �ץ����Υ����������� src ��ץ�ץ�������
���η�̤�����ɽ�� pattern �˥ޥå����뤫�ɤ�����Ƚ�ꤷ�ޤ���

  CPP $CFLAGS opt | egrep pat

��¹Ԥ������η�̤����狼�ɤ����� true �ޤ��� false ���֤��ޤ���

���Υ᥽�åɤϥإå��ե�����˴ؿ��ʤɤ���������뤫�ɤ���
�������뤿��˻��Ѥ��ޤ���

@param pattern ��egrep �Ρ�����ɽ����ʸ����ǻ��ꤷ�ޤ���
                Ruby ������ɽ���ǤϤ���ޤ���

@param src C ����Υ����������ɤ�ʸ����ǵ��Ҥ��ޤ���

@see [[man:egrep(1)]]

--- try_run(src, opt = "") -> bool
--- try_run(src, opt = ""){ ... } -> bool

C �ץ����Υ����������� src �򥳥�ѥ��뤷��
���������¹ԥե������¹Ԥ��ޤ���

���������¹ԥե����뤬����˼¹ԤǤ���� true ���֤��ޤ���
�¹Ԥ����Ԥ������� false ���֤��ޤ���

@param src C ����Υ����������ɤ�ʸ����ǵ��Ҥ��ޤ���

@param opt C ����ѥ���Υ��ץ�������ꤷ�ޤ���

--- install_rb(mfile, dest, srcdir = nil) -> Array

���Υ᥽�åɤ� create_makefile �����Ѥ��ޤ���
�����ѤΥ᥽�åɤǤ���

�ǥ��쥯�ȥ� srcdir/lib �۲��� Ruby ������ץ� (*.rb �ե�����)
�� dest �˥��󥹥ȡ��뤹�뤿��� Makefile ��§�� mfile �˽��Ϥ��ޤ���

srcdir/lib �Υǥ��쥯�ȥ깽¤�Ϥ��Τޤ� dest �۲���ȿ�Ǥ���ޤ���

@param mfile Makefile ��ɽ�� [[c:File]] �Υ��󥹥��󥹤Ǥ���

@param dest ���󥹥ȡ��뤹����Υǥ��쥯�ȥ����ꤷ�ޤ���

@param srcdir �������ǥ��쥯�ȥ����ꤷ�ޤ���

#@# --- append_library(libs, lib)
#@#  nodoc
#@# 
#@# �饤�֥��Υꥹ�� libs ����Ƭ�˥饤�֥�� lib ���ɲä���
#@# ���η�̤��֤��ޤ���
#@# 
#@# ���� libs �Ȥ��Υ᥽�åɤ�����ͤ�
#@# ��󥫤��Ϥ�����������ʸ����Ǥ���
#@# ���ʤ����UNIX �� OS �Ǥ�
#@# 
#@#   "-lfoo -lbar"
#@# 
#@# �Ǥ��ꡢMS Windows �ʤɤǤ�
#@# 
#@#   "foo.lib bar.lib"
#@# 
#@# �Ǥ���
#@# �� 2 ���� lib �ϡ�������Ǥ� "foo" �� "bar" �ˤ�����ޤ���

--- have_macro(macro, headers = nil, opt = "") -> bool
--- have_macro(macro, headers = nil, opt = ""){ ... } -> bool

Ϳ����줿 macro �����̤Υإå��ե����뤫 headers ���������Ƥ�����Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

@param macro �ޥ����̾������ꤷ�ޤ���

@param headers �ɲäΥإå��ե��������ꤷ�ޤ���

@param opt C ����ѥ�����Ϥ����ޥ�ɥ饤���������ꤷ�ޤ���

--- have_library(lib, func = nil, headers = nil) -> bool
--- have_library(lib, func = nil, headers = nil){ ... } -> bool

�饤�֥�� lib �������ƥ��¸�ߤ����ؿ� func ���������Ƥ��뤫�ɤ���������å����ޤ���
�����å������������ [[m:$libs]] �� lib ���ɲä� true ���֤��ޤ���
�����å������Ԥ����� false ���֤��ޤ���

@param lib �饤�֥���̾������ꤷ�ޤ���

@param func ��������ؿ�̾����ꤷ�ޤ���
            nil �ޤ��϶�ʸ����ΤȤ��ϡ�"main" �ˤʤ�ޤ���

@param headers �ɲäΥإå��ե��������ꤷ�ޤ���

--- find_library(lib, func, *paths) -> bool
--- find_library(lib, func, *paths){ ... } -> bool

�ؿ� func ��������줿�饤�֥�� lib ��õ���ޤ���

�ǽ�ϥѥ�����ꤻ����õ����
����˼��Ԥ����� paths[0] ����ꤷ��õ����
����ˤ⼺�Ԥ����� paths[1] ����ꤷ��õ���ġ�
�Ȥ����褦�ˡ���󥯲�ǽ�ʥ饤�֥���õ�����ޤ���

�嵭��õ���ǥ饤�֥�� lib ��ȯ���Ǥ������� lib �� [[m:$libs]] ���ɲä���
���Ĥ��ä��ѥ��� [[m:$LDFLAGS]] ���ɲä��� true ���֤��ޤ���
���ꤵ�줿���٤ƤΥѥ��򸡺����Ƥ�饤�֥�� lib �����Ĥ���ʤ��Ȥ��ϡ�
�ѿ����ѹ����� false ���֤��ޤ���

paths ����ꤷ�ʤ��Ȥ��� [[m:Kernel.#have_library]] ��Ʊ��ư��Ǥ���

@param lib �饤�֥��̾����ꤷ�ޤ���

@param func �ؿ�̾����ꤷ�ޤ���
            nil �ޤ��϶�ʸ�������ꤷ������ "main" �ˤʤ�ޤ���

@param paths �饤�֥��򸡺�����ѥ���ʸ���������ǻ��ꤷ�ޤ���

--- find_header(header, *paths) -> bool

Ϳ����줿 paths ���� header �򸡺��������Ĥ��ä����Ͽ����֤��ޤ���
�����Ǥʤ����ϵ����֤��ޤ���

�إå������Ĥ��ä��ǥ��쥯�ȥ�򥳥�ѥ�����Ϥ����ޥ�ɥ饤�󥪥ץ���
����ɲä��ޤ�(-I ���ץ������ͳ���ޤ�)��

@param header �إå�����ꤷ�ޤ���

@param paths �إå��򸡺�����ѥ�����ꤷ�ޤ���

--- have_func(func, headers = nil) -> bool
--- have_func(func, headers = nil){ ... } -> bool

�ؿ� func �������ƥ��¸�ߤ��뤫�ɤ����򸡺����ޤ���

�ؿ� func ��¸�ߤ���� [[m:$defs]] �� "-DHAVE_func" (func ����ʸ������
������ޤ�) ���ɲä��� true ���֤��ޤ����ؿ� func �����Ĥ���ʤ��Ȥ���
�����Х��ѿ����ѹ����� false ���֤��ޤ���

@param func �ؿ�̾����ꤷ�ޤ���

@param headers �ؿ� func ����Ѥ���Τ�ɬ�פʥإå��ե�����̾����ꤷ��
               ��������ϴؿ��η�������å����뤿��ǤϤʤ����ؿ����º�
               �ˤϥޥ�����������Ƥ�����ʤɤΤ���˻��Ѥ��ޤ���

#@since 1.9.2
--- have_header(header, preheaders = nil) -> bool
--- have_header(header, preheaders = nil){ ... } -> bool
#@else
--- have_header(header, preheaders = nil) -> bool
--- have_header(header, preheaders = nil){ ... } -> bool
#@end

�إå��ե����� header �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���

�إå��ե����� header ��¸�ߤ�����ϡ������Х��ѿ� [[m:$defs]] ��
"-DHAVE_header" ���ɲä��� true ���֤��ޤ����إå��ե����� header ��¸
�ߤ��ʤ����� $defs ���ѹ����� false ���֤��ޤ���

@param header �����������إå��ե��������ꤷ�ޤ���

#@since 1.9.2
@param preheaders �إå��ե�����򸡺����������ɤ߹���Ǥ����إå��ե��������ꤷ�ޤ���
#@end

--- have_struct_member(type, member, headers = nil) -> bool
--- have_struct_member(type, member, headers = nil){ ... } -> bool

member �Ȥ������Ф���Ĺ�¤�� type �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���

member �Ȥ������Ф���Ĺ�¤�� type �������ƥ��¸�ߤ�����ϡ�
�����Х��ѿ� [[m:$defs]] �� "-DHAVE_type_member" ���ɲä��������֤��ޤ���
member �Ȥ������Ф���Ĺ�¤�� type ��¸�ߤ��ʤ����ϡ������֤��ޤ���

�㤨��

  have_struct_member('struct foo', 'bar') # => true

#@since 1.9.1
�Ǥ����硢HAVE_STRUCT_FOO_BAR �Ȥ����ץ�ץ��å��ޥ���򥳥�ѥ�����Ϥ��ޤ���
�ޤ��������ߴ����Τ���� HAVE_ST_BAR �Ȥ����ץ�ץ��å��ޥ����������ޤ���
#@else
�Ǥ����硢HAVE_ST_BAR �Ȥ����ץ�ץ��å��ޥ���򥳥�ѥ�����Ϥ��ޤ���
#@end

@param type ������������¤�Τ�̾������ꤷ�ޤ���

@param member ������������¤�ΤΥ��Ф�̾������ꤷ�ޤ���

@param headers �ɲäΥإå��ե��������ꤷ�ޤ���

--- have_type(type, headers = nil, opt = "") -> bool
--- have_type(type, headers = nil, opt = ""){ ... } -> bool

��Ū�ʷ� type �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���

�� type �������ƥ��¸�ߤ�����ϡ������Х��ѿ� [[m:$defs]] ��
"-DHAVE_type" ���ɲä��������֤��ޤ����� type �������ƥ��¸�ߤ��ʤ���
��ϡ������֤��ޤ���

�㤨�С�

  have_type('foo') # => true

�Ǥ����硢HAVE_TYPE_FOO ��Ȥ����ץ�ץ��å��ޥ���򥳥�ѥ�����Ϥ��ޤ���

@param type ��������������̾������ꤷ�ޤ���

@param headers �ɲäΥإå�����ꤷ�ޤ���

@param opt ����ѥ�����Ϥ��ɲäΥ��ץ�������ꤷ�ޤ���

--- find_type(type, opt, *headers) -> Array
--- find_type(type, opt, *headers){ ... } -> Array

��Ū�ʷ� type �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���

@param type ��������������̾������ꤷ�ޤ���

@param opt ����ѥ�����Ϥ��ɲäΥ��ץ�������ꤷ�ޤ���

@param headers �ɲäΥإå�����ꤷ�ޤ���

@see [[m:Kernel.#have_type]] 

--- have_var(var, headers = nil) -> bool
--- have_var(var, headers = nil){ ... } -> bool

�ѿ� var �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���

�ѿ� var �������ƥ��¸�ߤ�����ϡ������Х��ѿ� [[m:$defs]] ��
"-DHAVE_var" ���ɲä��������֤��ޤ����ѿ� var �������ƥ��¸�ߤ��ʤ���
��ϡ������֤��ޤ���

�㤨�С�

  have_var('foo') # => true

�Ǥ����硢HAVE_FOO �Ȥ����ץ�ץ��å��ޥ���򥳥�ѥ�����Ϥ��ޤ���

@param var �����������ѿ�̾����ꤷ�ޤ���

@param headers �ɲäΥإå�����ꤷ�ޤ���

#@since 1.9.3
--- have_framework(framework) -> bool
--- have_framework(framework){ ... } -> bool

�ե졼���� framework �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���

�ե졼���� framework �������ƥ��¸�ߤ�����ϡ������Х��ѿ�
[[m:$defs]] �� "-DHAVE_FRAMEWORK_framework" ���ɲä��������֤��ޤ�����
���������Х��ѿ� [[m:$LDFLAGS]] �� "-framework #{framework}" ���ɲä�
�ޤ��� �ե졼���� framework �������ƥ��¸�ߤ��ʤ����ϡ������֤�
�ޤ���

�㤨�С�

  have_framework('Ruby') # => true

�Ǥ����硢HAVE_FRAMEWORK_RUBY �Ȥ����ץ�ץ��å��ޥ���򥳥�ѥ�����Ϥ��ޤ���

@param framework �ե졼������̾������ꤷ�ޤ���

#@end

--- check_sizeof(type, headers = nil) -> Integer | nil
--- check_sizeof(type, headers = nil){ ... } -> Integer | nil

Ϳ����줿���Υ��������֤��ޤ���

�� type �������ƥ��¸�ߤ�����ϡ������Х��ѿ� [[m:$defs]] ��
"-DSIZEOF_type=X" ���ɲä������Υ��������֤��ޤ����� type �������ƥ��
¸�ߤ��ʤ����ϡ�nil ���֤��ޤ���

�㤨�С�

  check_sizeof('mystruct') # => 12

�Ǥ����硢SIZEOF_MYSTRUCT=12 �Ȥ����ץ�ץ��å��ޥ���򥳥�ѥ�����Ϥ��ޤ���

@param type ����������������ꤷ�ޤ���

@param headers �ɲäΥإå��ե��������ꤷ�ޤ���

#@since 1.9.3
--- check_signedness(type, headers = nil, opts = nil) -> "signed" | "unsigned" | nil
--- check_signedness(type, headers = nil, opts = nil){ ... } -> "signed" | "unsigned" | nil

 Returns the signedness of the given +type+.  You may optionally
 specify additional +headers+ to search in for the +type+.
 
 If the +type+ is found and is a numeric type, a macro is passed as a
 preprocessor constant to the compiler using the +type+ name, in
 uppercase, prepended with 'SIGNEDNESS_OF_', followed by the +type+
 name, followed by '=X' where 'X' is positive integer if the +type+ is
 unsigned, or negative integer if the +type+ is signed.
 
 For example, if size_t is defined as unsigned, then
 check_signedness('size_t') would returned +1 and the
 SIGNEDNESS_OF_SIZE_T=+1 preprocessor macro would be passed to the
 compiler, and SIGNEDNESS_OF_INT=-1 if check_signedness('int') is
 done.

#@end
#@since 1.9.2
--- convertible_int(type, headers = nil, opts = nil)
--- convertible_int(type, headers = nil, opts = nil){ ... }

 Returns the convertible integer type of the given +type+.  You may
 optionally specify additional +headers+ to search in for the +type+.
 _Convertible_ means actually same type, or typedefed from same type.
 
 If the +type+ is a integer type and _convertible_ type is found,
 following macros are passed as preprocessor constants to the
 compiler using the +type+ name, in uppercase.
 
 * 'TYPEOF_', followed by the +type+ name, followed by '=X' where 'X'
   is the found _convertible_ type name.  * 'TYP2NUM' and 'NUM2TYP,
   where 'TYP' is the +type+ name in uppercase with replacing '_t'
   suffix with 'T', followed by '=X' where 'X' is the macro name to
   convert +type+ to +Integer+ object, and vice versa.
 
 For example, if foobar_t is defined as unsigned long, then
 convertible_int("foobar_t") would return "unsigned long", and define
 macros:
 
   #define TYPEOF_FOOBAR_T unsigned long
   #define FOOBART2NUM ULONG2NUM
   #define NUM2FOOBART NUM2ULONG

#@end

#@# --- arg_config(config, default){ ... }
#@# nodoc
#@# 
#@# configure ���ץ���� --config ���ͤ��֤��ޤ���
#@# ���ץ���󤬻��ꤵ��Ƥ��ʤ��Ȥ����� 2 ���� default ���֤��ޤ���
#@# 
#@# �㤨�� extconf.rb �� arg_config �᥽�åɤ�Ȥ���硢
#@# 
#@#   $ ruby extconf.rb --foo --bar=baz
#@# 
#@# �ȼ¹Ԥ����Ȥ���arg_config("--foo") ���ͤ� true��
#@# arg_config("--bar") ���ͤ� "baz" �Ǥ���

--- with_config(config, default = nil) -> bool | String
--- with_config(config, default = nil){|config, default| ... } -> bool | String

configure �Υ��ץ����򸡺����ޤ���

configure �Υ��ץ����� --with-<config> �����ꤵ�줿���Ͽ����֤���
����--without-<config> �����ꤵ�줿���ϵ����֤��ޤ����ɤ���Ǥ�ʤ���
��� default ���֤��ޤ���

����ϥǥХå�����ʤɤΥ�������������ɲä���Τ���Ω���ޤ���

@param config configure �Υ��ץ�����̾������ꤷ�ޤ���

@param default �ǥե�����ͤ��֤��ޤ���

��
  if with_config("debug")
     $defs.push("-DOSSL_DEBUG") unless $defs.include? "-DOSSL_DEBUG"
  end

--- enable_config(config, default) -> bool | String
--- enable_config(config, default){|config, default| ... } -> bool | String

configure �Υ��ץ����򸡺����ޤ���

configure �Υ��ץ����� --enable-<config> �����ꤵ�줿���ϡ������֤�
�ޤ���--disable-<config> �����ꤵ�줿���ϡ������֤��ޤ����ɤ���Ǥ��
������ default ���֤��ޤ���

����ϥǥХå�����ʤɤΥ�������������ɲä���Τ���Ω���ޤ���

@param config configure �Υ��ץ�����̾������ꤷ�ޤ���

@param default �ǥե�����ͤ��֤��ޤ���

��
  if enable_config("debug")
     $defs.push("-DOSSL_DEBUG") unless $defs.include? "-DOSSL_DEBUG"
  end

--- create_header(header = "extconf.h") -> String

[[m:Kernel.#have_func]], [[m:Kernel.#have_header]] �ʤɤθ�����̤򸵤ˡ�
�إå��ե�������������ޤ���

���Υ᥽�åɤ� extconf.rb �κǸ�ǸƤӽФ��褦�ˤ��Ƥ���������

@param header �إå��ե������̾������ꤷ�ޤ���

@return �إå��ե������̾�����֤��ޤ���

��

  # extconf.rb
  require 'mkmf'
  have_func('realpath')
  have_header('sys/utime.h')
  create_header
  create_makefile('foo')

��� extconf.rb �ϰʲ��� extconf.h ���������ޤ���

  #ifndef EXTCONF_H
  #define EXTCONF_H
  #define HAVE_REALPATH 1
  #define HAVE_SYS_UTIME_H 1
  #endif

--- dir_config(target, idefault = nil, ldefault = nil) -> [String, String]

configure ���ץ����
--with-TARGET-dir,
--with-TARGET-include,
--with-TARGET-lib
��桼���� extconf.rb �˻���Ǥ���褦�ˤ��ޤ���

--with-TARGET-dir ���ץ�����
�����ƥ�ɸ��ǤϤʤ���
�إå��ե������饤�֥�꤬����ǥ��쥯�ȥ��ޤȤ�ƻ��ꤹ�뤿��˻Ȥ��ޤ���
�桼���� extconf.rb �� --with-TARGET-dir=PATH ����ꤷ���Ȥ���
[[m:$CFLAGS]] �� "-IPATH/include" ��
[[m:$LDFLAGS]] �� "-LPATH/lib" ��
���줾���ɲä��ޤ���

--with-TARGET-include ���ץ�����
�����ƥ�ɸ��ǤϤʤ��إå��ե�����Υǥ��쥯�ȥ����ꤹ�뤿��˻Ȥ��ޤ���
�桼���� extconf.rb �� --with-TARGET-include=PATH ����ꤷ���Ȥ���
[[m:$CFLAGS]] �� PATH ���ɲä��ޤ���

--with-TARGET-lib ���ץ�����
�����ƥ�ɸ��ǤϤʤ��饤�֥��Υǥ��쥯�ȥ����ꤹ�뤿��˻Ȥ��ޤ���
�桼���� extconf.rb �� --with-TARGET-lib=PATH ����ꤷ���Ȥ���
[[m:$CFLAGS]] �� PATH ���ɲä��ޤ���

@param target �������åȤ�̾������ꤷ�ޤ���

@param idefault �����ƥ�ɸ��ǤϤʤ��إå��ե�����Υǥ��쥯�ȥ�Υǥե�����ͤ���ꤷ�ޤ���

@param ldefault �����ƥ�ɸ��ǤϤʤ��饤�֥��Υǥ��쥯�ȥ�Υǥե�����ͤ���ꤷ�ޤ���

��
  # xml2 �� configure ���ץ��������Ǥ���褦�ˤ��ޤ���
  xml2_dirs = dir_config('xml2', '/opt/local/include/libxml2', '/opt/local/lib')

--- create_makefile(target, srcprefix = nil) -> true
#@todo

[[m:Kernel.#have_library]] �ʤɤγƼ︡���η�̤򸵤ˡ���ĥ�饤�֥���
�ӥ�ɤ��뤿��� Makefile ���������ޤ���

extconf.rb �����̤��Υ᥽�åɤθƤӽФ��ǽ���ޤ���

@param target �������åȤȤʤ��ĥ�饤�֥���̾������ꤷ�ޤ���
              �㤨�С���ĥ�饤�֥��� "Init_foo" �Ȥ����ؿ����������
              ������ϡ�"foo" ����ꤷ�ޤ���
              '/' ��ޤ���ϡ��Ǹ�Υ���å���ʹߤΤߤ򥿡����å�̾
              �Ȥ��ƻ��Ѥ��ޤ����Ĥ�ϥȥåץ�٥�Υǥ��쥯�ȥ�̾�ȸ�
              �ʤ��졢�������줿 Makefile �Ϥ��Υǥ��쥯�ȥ깽¤�˽���
              �ޤ���
              �㤨�С�'test/foo' ����ꤷ����硢��ĥ�饤�֥���
              'test' �ǥ��쥯�ȥ�˥��󥹥ȡ��뤵��ޤ������γ�ĥ�饤��
              ���� Ruby ������ץȤ�����Ѥ���Ȥ���
              "require 'test/foo'" �Ȥ���ɬ�פ�����ޤ���

@param srcprefix �����������ɤ�����ǥ��쥯�ȥ�̾����ꤷ�ޤ���
                 ��ά�������� extconf.rb ������ǥ��쥯�ȥ����Ѥ��ޤ���
                 
�ʲ��Τ褦�ʥǥ��쥯�ȥ깽���ξ��:

   ext/
      extconf.rb
      test/
         foo.c

���Τ褦�ˤ��ޤ���

   create_makefile('test/foo', 'test')

���Τ褦�ˤ��ƺ�ä� Makefile �� 'make install' ����ȳ�ĥ�饤�֥��ϡ�
�ʲ��Υѥ��˥��󥹥ȡ��뤵��ޤ���

  /path/to/ruby/sitearchdir/test/foo.so

--- find_executable(bin, path = nil) -> String | nil

�ѥ� path ����¹ԥե����� bin ��õ���ޤ���

�¹ԥե����뤬���Ĥ��ä����ϡ����Υե�ѥ����֤��ޤ���
�¹ԥե����뤬���Ĥ���ʤ��ä����ϡ�nil���֤��ޤ���

���Υ᥽�åɤ� Makefile ���ѹ����ޤ���

@param bin �¹ԥե������̾������ꤷ�ޤ���

@param path �ѥ�����ꤷ�ޤ����ǥե���ȤϴĶ��ѿ� PATH �Ǥ���
            �Ķ��ѿ� PATH ���������Ƥ��ʤ����� /usr/local/bin,
            /usr/ucb, /usr/bin, /bin ��Ȥ��ޤ���

--- dummy_makefile(srcdir) -> String

���ߡ��� Makefile ��������ޤ���

@param srcdir �������ǥ��쥯�ȥ����ꤷ�ޤ���

#@since 1.9.1
--- depend_rules(depend) -> Array

�ե�����ΰ�¸�ط��ν񤫤줿 depend �ե���������Ƥ�������ޤ���

@param depend depend �ե���������Ƥ���ꤷ�ޤ���

@return ���Ĥ��ä���¸�ط��� Makefile �������֤��ޤ���
#@end

#@# --- init_mkmf(config = CONFIG, rbconfig = RbConfig::CONFIG)
#@# nodoc
#@# --- mkmf_failed(path
#@# nodoc
#@# --- pkg_config(pkg)
#@# nodoc
#@# --- with_destdir
#@# nodoc
#@# --- winsep
#@# nodoc
#@# --- mkintpath
#@# nodoc
#@# --- configuration(srcdir)
#@# nodoc
#@# --- scalar_ptr_type?(type, member = nil, headers = nil)
#@# --- scalar_ptr_type?(type, member = nil, headers = nil){ ... }
#@# nodoc
#@# --- scalar_type?(type, member = nil, headers = nil)
#@# --- scalar_type?(type, member = nil, headers = nil){ ... }
#@# nodoc
#@# --- have_typeof?
#@# nodoc
#@# --- what_type?(type, member = nil, headers = nil)
#@# --- what_type?(type, member = nil, headers = nil){ ... }
#@# nodoc
#@# --- find_executable0(bin, path = nil)
#@# nodoc

#@# --- checking_for(message, format = nil){ ... } -> object
#@# ������
#@# have_*, find_* �ϥ᥽�åɤμ¹Է�̤�ɸ����Ϥ˽��Ϥ��뤿��Υ᥽�åɤǤ���
#@# 
#@# @param message ��å���������ꤷ�ޤ���
#@# 
#@# @param format �ե����ޥå�ʸ�������ꤷ�ޤ���

#@# #@since 1.8.6
#@# --- checking_message(target, place = nil, opt = nil) -> String
#@# ������
#@# #@end

--- try_run(src, opt = "") -> bool | nil
--- try_run(src, opt = ""){ ... } -> bool | nil

Ϳ����줿�����������ɤ�������ѥ�����󥯤Ǥ��뤫�ɤ����������ޤ���

�ʲ������Ƥθ����������������ϡ������֤��ޤ��������Ǥʤ����ϵ����֤��ޤ���

  * src �� C �Υ������Ȥ��ƥ���ѥ���Ǥ��뤫
  * �������줿���֥������Ȥ���¸���Ƥ���饤�֥��ȥ�󥯤Ǥ��뤫
  * ��󥯤����ե����뤬�¹Բ�ǽ���ɤ���
  * �¹ԥե����뤬�������¸�ߤ��Ƥ��뤫�ɤ���

�֥�å���Ϳ������硢���Υ֥�å��ϥ���ѥ�������ɾ������ޤ���
�֥�å���ǥ����������ɤ��ѹ����뤳�Ȥ��Ǥ��ޤ���

@param src C �Υ����������ɤ���ꤷ�ޤ���

@param opt ��󥫤��Ϥ����ץ�������ꤷ�ޤ���
           $CFLAGS, $LDFLAGS ���󥫤ˤ��Ϥ���ޤ���

@return �¹ԥե����뤬¸�ߤ������ true ���֤��ޤ��������Ǥʤ�����
        false ���֤��ޤ����ץ�ץ���������ѥ��롢��󥯤Τ����줫��
        �ʳ��Ǽ��Ԥ������� nil ���֤��ޤ���

--- try_compile(src, opt = "", *opts) -> bool
--- try_compile(src, opt = "", *opts){ ... } -> bool

Ϳ����줿 C �Υ����������ɤ�����ѥ���Ǥ������Ͽ����֤��ޤ���
����ѥ���Ǥ��ʤ��ä����ϵ����֤��ޤ���

�֥�å���Ϳ������硢���Υ֥�å��ϥ���ѥ�������ɾ������ޤ���
�֥�å���ǥ����������ɤ��ѹ����뤳�Ȥ��Ǥ��ޤ���

@param src C �Υ����������ɤ���ꤷ�ޤ���

@param opt ����ѥ�����Ϥ����ץ�������ꤷ�ޤ���
           $CFLAGS �⥳��ѥ���ˤ��Ϥ���ޤ���

--- try_static_assert(expr, headers = nil, opt = "") -> bool
--- try_static_assert(expr, headers = nil, opt = ""){ ... } -> bool
#@todo ???

...

@param expr C ����μ�����ꤷ�ޤ���

@param headers �ɲäΥإå��ե��������ꤷ�ޤ���

@param opt ����ѥ�����Ϥ����ץ�������ꤷ�ޤ���
           $CFLAGS �⥳��ѥ���ˤ��Ϥ���ޤ���

--- try_constant(const, headers = nil, opt = "") -> Integer | nil
--- try_constant(const, headers = nil, opt = ""){ ... } Integer | nil

��� const �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���
[[m:Kernel.#have_const]] ��ȤäƤ���������

@param const C ��������̾����ꤷ�ޤ���

@param headers �ɲäΥإå��ե��������ꤷ�ޤ���

@param opt ����ѥ�����Ϥ����ץ�������ꤷ�ޤ���
           $CFLAGS �⥳��ѥ���ˤ��Ϥ���ޤ���

@return ��� const �������ƥ��¸�ߤ�����Ϥ����ͤ��֤��ޤ���
        ��� const �������ƥ��¸�ߤ��ʤ����� nil ���֤��ޤ���

--- try_func(func, libs, headers = nil) -> bool
--- try_func(func, libs, headers = nil){ ... } -> bool

�ؿ� func �������ƥ��¸�ߤ��뤫�ɤ����������ޤ���
[[m:Kernel.#have_func]] ��ȤäƤ���������

@param func �ؿ�̾����ꤷ�ޤ���

@param libs �饤�֥���̾������ꤷ�ޤ���

@param headers �ؿ� func ����Ѥ���Τ�ɬ�פʥإå��ե�����̾����ꤷ��
               ��������ϴؿ��η�������å����뤿��ǤϤʤ����ؿ����º�
               �ˤϥޥ�����������Ƥ�����ʤɤΤ���˻��Ѥ��ޤ���

--- try_var(var, headers = nil) -> bool
--- try_var(var, headers = nil){ ... } -> bool

[[m:Kernel.#have_var]] ��ȤäƤ���������

@param var �����������ѿ�̾����ꤷ�ޤ���

@param headers �ɲäΥإå�����ꤷ�ޤ���

--- try_type(type, headers = nil, opt = "") -> bool
--- try_type(type, headers = nil, opt = ""){ ... } -> bool

[[m:Kernel.#have_type]] ��ȤäƤ���������

@param type ��������������̾������ꤷ�ޤ���

@param headers �ɲäΥإå�����ꤷ�ޤ���

@param opt ����ѥ�����Ϥ��ɲäΥ��ץ�������ꤷ�ޤ���

--- install_files(mfile, ifiles, map = nil, srcprefix = nil) -> []

���Υ᥽�åɤ� create_makefile, install_rb �����Ѥ��ޤ���
�����ѤΥ᥽�åɤǤ���

@param mfile Makefile ��ɽ�� [[c:File]] �Υ��󥹥��󥹤Ǥ���

@param ifiles ���󥹥ȡ��뤹��ե�����Υꥹ�Ȥ���ꤷ�ޤ���

@param map ???

@param srcprefix �������ǥ��쥯�ȥ����ꤷ�ޤ���

--- message(format, *arg) -> nil

[[m:Kernel.#printf]] ��Ʊ���褦��ɸ����Ϥ˥�å���������Ϥ��ޤ���
��å��������ϸ夹���� [[m:IO#flush]] ���ޤ���

$VERBOSE �����ΤȤ��ϲ��⤷�ޤ���

@param format �ե����ޥå�ʸ����Ǥ���

@param arg �ե����ޥåȤ��������Ǥ���

@see [[m:Kernel.#printf]]

#@# --- typedef_expr(type, headers)
#@# nodoc
#@# --- try_signedness(tyep, member, headers = nil, opts = nil)
#@# --- try_signedness(tyep, member, headers = nil, opts = nil){ ... }
#@# nodoc

#@# --- macro_defined?(macro, src, opt = "") -> bool
#@# --- macro_defined?(macro, src, opt = ""){ ... } -> bool
#@# internal use Only
#@# --- config_string
#@# nodoc
#@# --- dir_re
#@# nodoc
#@# --- relative_from
#@# nodoc
#@# --- install_dirs
#@# nodoc
#@# --- map_dir
#@# nodoc

== Constants

--- CONFIG -> Hash
#@since 1.8.5
[[m:RbConfig::MAKEFILE_CONFIG]] ��Ʊ���Ǥ���
#@else
[[m:Config::MAKEFILE_CONFIG]] ��Ʊ���Ǥ���
#@end

#@# --- INSTALL_DIRS
#@# nodoc
#@# --- OUTFLAG
#@# nodoc
#@# --- COUTFLAG
#@# nodoc
#@# --- CPPOUTFILE
#@# nodoc
#@# --- CONFTEST_C
#@# nodoc
#@# --- STRING_OR_FAILED_FORMAT
#@# internal use only

== Special Variables

--- $srcdir -> String

Ruby ���󥿥ץ꥿�� make �����Ȥ��Υ������ǥ��쥯�ȥ�Ǥ���

--- $libdir -> String

Ruby �Υ饤�֥����֤��ǥ��쥯�ȥ�Ǥ���
�̾�� "/usr/local/lib/ruby/�С������" �Ǥ���

--- $archdir -> String

�ޥ����ͭ�Υ饤�֥����֤��ǥ��쥯�ȥ�Ǥ���
�̾�� "/usr/local/lib/ruby/�С������/arch" �Ǥ���

--- $sitelibdir -> String

�����ȸ�ͭ�Υ饤�֥����֤��ǥ��쥯�ȥ�Ǥ���
�̾�� "/usr/local/lib/ruby/site_ruby/�С������" �Ǥ���

--- $sitearchdir -> String

�����ȸ�ͭ�Ǥ��ĥޥ����ͭ�Υ饤�֥����֤��ǥ��쥯�ȥ�Ǥ���
�̾�� "/usr/local/lib/ruby/site_ruby/�С������/arch" �Ǥ���

--- $hdrdir -> String

Ruby �Υإå��ե����� ruby.h ��¸�ߤ���ǥ��쥯�ȥ�Ǥ���
�̾�� [[m:$archdir]] ��Ʊ���ǡ�"/usr/local/lib/ruby/�С������/arch" �Ǥ���

--- $topdir -> String

��ĥ�饤�֥��� make ���뤿��Υإå��ե����롢
�饤�֥������¸�ߤ���ǥ��쥯�ȥ�Ǥ���
�̾�� [[m:$archdir]] ��Ʊ���ǡ�"/usr/local/lib/ruby/�С������/arch" �Ǥ���

--- $defs -> [String]

��ĥ�饤�֥��򥳥�ѥ��뤹��Ȥ��Υޥ����������ꤹ������Ǥ���

�����ѿ����ͤϡ��㤨��

  ["-DHAVE_FUNC", "-DHAVE_HEADER_H"]

�Τ褦�ʷ���������Ǥ���

[[m:Kernel.#have_func]] �ޤ��� [[m:Kernel.#have_header]]
��ƤӽФ��ȡ����θ�����̤� $defs ���ɲä���ޤ���

[[m:Kernel.#create_header]]
�Ϥ����ѿ����ͤ򻲾Ȥ��ƥإå��ե�������������ޤ���

--- $libs -> String

��ĥ�饤�֥����󥯤���Ȥ���
���˥�󥯤����饤�֥�����ꤹ��ʸ����Ǥ���

�����ѿ����ͤϡ��㤨��

  "-lfoo -lbar"

�Τ褦�ʷ�����ʸ����Ǥ���

[[m:Kernel.#have_library]] �ޤ��� [[m:Kernel.#find_library]]
��ƤӽФ��ȡ����θ�����̤�
�֤˶����Ϥ��ߤĤ� $libs ��Ϣ�뤵��ޤ���

--- $CFLAGS -> String

��ĥ�饤�֥��򥳥�ѥ��뤹��Ȥ��� C ����ѥ���Υ��ץ����䡢
�إå��ե�����Υǥ��쥯�ȥ����ꤹ��ʸ����Ǥ���

[[m:Kernel.#dir_config]] �θ�������������ȡ�
�����ѿ����ͤ� " -Idir" ���ɲä���ޤ���

--- $LDFLAGS -> String

��ĥ�饤�֥����󥯤���Ȥ��Υ�󥫤Υ��ץ����
�饤�֥��ե�����Υǥ��쥯�ȥ����ꤹ��ʸ����Ǥ���

[[m:Kernel.#find_library]] �ޤ��� [[m:Kernel.#dir_config]]
�θ�������������ȡ�$LDFLAGS ���ͤ� "-Ldir" ���ɲä��ޤ���

#@# �����餯�桼���˲�������Ƥ��ʤ��ѿ�
#@# --- $LOCAL_LIBS
#@#     �饤�֥�����ꤹ��ʸ����Ǥ���
#@# 
#@# --- $local_flags
#@#     ��󥫥��ץ�������ꤹ��ʸ����Ǥ���

#@# = reopen String
#@# ������
#@# == Instance Methods
#@# 
#@# --- quote -> String
#@# 
#@# ���ڡ�����ޤ�ʸ����򥯥����Ȥ����֤��ޤ���
#@# 
#@# --- tr_cpp -> String
#@# 
#@# C �ץ�ץ��å��˻��ѤǤ���̾�������������֤��ޤ���
#@# 
#@# = reopen Array
#@# ������
#@# == Instance Methods
#@# 
#@# --- quote -> Array
#@# 
#@# ���Ƥ����Ǥ� [[m:String#quote]] �����֤��ޤ���
#@# 
#@# = module Logging
#@# �������ѤΤ�

