�Ƽ�� assert �᥽�åɤ��󶡤��ޤ���

#@until 1.9.1
= class Test::Unit::AssertionFailedError < StandardError
�����������˼��Ԥ������� [[c:Test::Unit::Assertions]] ���� raise ����ޤ���
#@end

= module Test::Unit::Assertions

#@since 1.9.1
include MiniTest::Assertions
#@end

�Ƽ�� assert �᥽�åɤ��󶡤���⥸�塼��Ǥ���

Test::Unit::TestCase �� include ����ƻȤ��ޤ���
[[lib:test/unit]] ��¾�Υ��饹�Ȥ���Ω���ơ��󶡤���Ƥ��� assert �᥽�åɤ�����Ȥ����Ȥ�Ǥ��ޤ���
assert_block �᥽�åɤ�Ȥ����Ȥˤ�ꡢ������ assert �᥽�åɤ�ä��뤳�Ȥ�Ǥ��ޤ���

#@since 1.9.1
assert �����Ԥ������ϡ��㳰 [[c:MiniTest::Assertion]] ���ꤲ�ޤ���
#@else
assert �����Ԥ������ϡ��㳰 [[c:Test::Unit::AssertionFailedError]] ���ꤲ�ޤ���
#@end
�� assert �᥽�åɤκǸ�ΰ��� message �ϥƥ��Ȥ����Ԥ����Ȥ���ɽ�������
��å������Ǥ���


#@until 1.9.1
== Singleton Methods

--- use_pp=(value)

���Ϥ� [[lib:pp]] ����Ѥ��뤫�ɤ�������ꤷ�ޤ���������ꤷ������
[[lib:pp]] �� require ����ޤ���

@param value [[lib:pp]] ����Ѥ��뤫�ɤ�����
#@end

== Instance Methods

#@until 1.9.1
--- assert(boolean, message = nil)    -> ()

boolean �����ʤ�ѥ����ޤ���

@param boolean ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

--- assert_instance_of(klass, object, message = "")    -> ()

object �� klass ��ľ�ܤΥ��󥹥��󥹤Ǥ���ʤ顢�ѥ����ޤ���
[[m:Object#instance_of?]]�⻲�Ȥ��Ʋ�������

@param klass ���Ԥ��륯�饹����ꤷ�ޤ���

@param object ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

[[m:Test::Unit::Assertions#assert_kind_of]] �Ȥΰ㤤����դ��Ʋ�������

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

--- assert_nil(object, message = "")    -> ()

object �� nil �ʤ�Хѥ����ޤ���

@param object ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Test::Unit::Assertions#assert_not_nil]]

--- assert_kind_of(klass, object, message = "")    -> ()

object.kind_of?(klass) �����ʤ�ѥ����ޤ���

���Τˤϡ�object �� klass �����Υ��֥��饹�Υ��󥹥��󥹤Ǥ���ʤ�ѥ����ޤ���
�ޤ���klass ���⥸�塼��Ǥ�����ϡ�object �� klass �򥤥󥯥롼�ɤ������饹�����Υ��֥��饹��
���󥹥��󥹤Ǥ���ʤ�ѥ����ޤ���

[[m:Test::Unit::Assertions#assert_instance_of]] �Ȥΰ㤤����դ��Ʋ�������

@param klass ���Ԥ��륯�饹���⥸�塼���Ϳ���ޤ���

@param object ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Object#kind_of?]]

--- assert_respond_to(object, method, message = "")    -> ()

object.respond_to?(method) �����ʤ�ѥ����ޤ���

@param object ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param method ���ڤ���᥽�åɤ� [[c:Symbol]] ��ʸ����ǻ��ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Object#respond_to?]]

--- assert_match(pattern, string, message = "")    -> ()

string =~ pattern �����ʤ�Хѥ����ޤ���

@param pattern ���Ԥ���ѥ������ʸ��������ɽ���ǻ��ꤷ�ޤ���ʸ�����
               ���ꤷ����������������ɽ�����Ѵ�����ޤ���

@param string ���ڤ���ʸ�������ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Test::Unit::Assertions#assert_no_match]]

--- assert_same(expected, actual, message = "")    -> ()

actual.equal?(expected) �����ʤ�ѥ����ޤ���

[[m:Test::Unit::Assertions#assert_equal]] �Ȥΰ㤤����դ��Ʋ�������

@param expected ���Ԥ��륪�֥������Ȥ���ꤷ�ޤ���

@param actual ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Object#equal?]], [[m:Test::Unit::Assertions#assert_not_same]]

--- assert_operator(object1, operator, object2, message = "")    -> ()

object1.send(operator, object2) �����ʤ�ѥ����ޤ���

@param object1 ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param operator ���ڤΤ���α黻��(�᥽�å�)�� [[c:Symbol]] ��
                to_str �᥽�åɤ����ѤǤ��륪�֥������Ȥǻ��ꤷ�ޤ���

@param object2 ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

--- assert_raises(*args, &block)    -> object

[[m:Test::Unit::Assertions#assert_raise]] �Υ����ꥢ���Ǥ���

@param args [[m:Test::Unit::Assertions#assert_raise]] �ˤ��Τޤ��Ϥ��ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Test::Unit::Assertions#assert_raise]]

--- flunk(message = "Flunked")    -> ()

��˼��Ԥ��ޤ���

�����Ȥ����ƥ��Ȥ�񤯤ޤǤδ֡��ƥ��Ȥ��Ԥ����Ƥ����������ʤɤ˻Ȥ��ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError ���ȯ�����ޤ���

--- assert_throws(expected_symbol, message = "") { ... }    -> ()

�֥�å���¹Ԥ��� :expected_symbol �� throw ���줿��ѥ����ޤ���

@param expected_symbol throw �����ȴ��Ԥ��륷��ܥ����ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

--- assert_in_delta(expected_float, actual_float, delta, message = "")    -> ()

(expected_float.to_f - actual_float.to_f).abs <= delta.to_f
�����ʤ�ѥ����ޤ���

@param expected_float ���Ԥ���¿��ͤ���ꤷ�ޤ���

@param actual_float ���ڤ���¿��ͤ���ꤷ�ޤ���

@param delta ���ƤǤ���������ο��ǻ��ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

--- assert_send(send_array, message = "")    -> ()

send_array[0].__send__(send_array[1], *send_array[2..-1])
�����ʤ�ѥ����ޤ���

@param send_array ���ڤ��륪�֥������Ȥ� [�쥷���С��᥽�åɡ��᥽�åɤΰ���]
                  �ǻ��ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

--- assert_block(message = "assert_block failed.") { ... }    -> ()

�֥�å���¹Ԥ������η�̤����ʤ�ѥ����ޤ���

������ assert �᥽�åɤ����������ˤ�Ȥ��ޤ���

  def deny(boolean, message = nil)
    message = build_message message, '<?> is not false or nil.', boolean
    assert_block message do
      not boolean
    end
  end

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���
#@end

--- assert_equal(expected, actual, message = nil)    -> ()

expected == actual �ʤ�Хѥ����ޤ���

#@since 1.9.1
[[m:MiniTest::Assertions#assert_same]]�Ȥΰ㤤����դ��Ʋ�������
#@else
[[m:Test::Unit::Assertions#assert_same]]�Ȥΰ㤤����դ��Ʋ�������
#@end

@param expected ���Ԥ��륪�֥������Ȥ���ꤷ�ޤ���

@param actual ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���
#@end

@see [[m:Test::Unit::Assertions#assert_not_equal]], [[m:Object#==]]

--- assert_not_equal(expected, actual, message = "")    -> ()

expected != actual �ʤ�Хѥ����ޤ���

@param expected Ʊ����ΤǤϤʤ��ȴ��Ԥ��륪�֥������Ȥ���ꤷ�ޤ���

@param actual ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���
#@end

@see [[m:Test::Unit::Assertions#assert_equal]]

--- assert_not_nil(object, message = "")    -> ()

object �� nil �Ǥʤ��ʤ�Хѥ����ޤ���

@param object ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���

@see [[m:MiniTest::Assertions#assert_nil]]
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Test::Unit::Assertions#assert_nil]]
#@end

--- assert_no_match(regexp, string, message = "")    -> ()

regexp !~ string �����ʤ�Хѥ����ޤ���

@param regexp �ޥå����ʤ��ȴ��Ԥ���ѥ����������ɽ���ǻ��ꤷ�ޤ���

@param string ���ڤ���ʸ�������ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���

[[m:MiniTest::Assertions#assert_match]] �Ȥϰۤʤ� regexp �ˤ�����ɽ��
�ʳ��ϻ���Ǥ��ޤ���
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

[[m:Test::Unit::Assertions#assert_match]] �Ȥϰۤʤ� regexp �ˤ�����ɽ
���ʳ��ϻ���Ǥ��ޤ���
#@end

--- assert_not_same(expected, actual, message = "")    -> ()

!actual.equal?(expected) �����ʤ�ѥ����ޤ���

@param expected ���Ԥ��륪�֥������Ȥ���ꤷ�ޤ���

@param actual ���ڤ��륪�֥������Ȥ���ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Object#equal?]], [[m:MiniTest::Assertions#assert_same]]
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���

@see [[m:Object#equal?]], [[m:Test::Unit::Assertions#assert_same]]
#@end

#@since 1.8.1

--- assert_raise(message = "") { ... }    -> object
--- assert_raise(klass1, klass2, ..., message = "") { ... }    -> object

�֥�å���¹Ԥ����㳰��ȯ�����������㳰��
klass1, klass2,... �Τ����줫�Υ��饹�Υ��󥹥��󥹤ʤ�Хѥ����ޤ���

assert �˥ѥ��������ϡ��ºݤ��ꤲ��줿�㳰���֤��ޤ���

@param klassX �㳰���饹����ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���
#@end

#@end

--- build_message(head, template = nil, *arguments)

�ƥ��Ȥ����Ԥ����Ȥ���ɽ��������å�������������ޤ���

@param head template������������å�����������ɽ������ʸ�������ꤷ�ޤ���

@param template ���������å������Υƥ�ץ졼�Ȥ�ʸ����ǻ��ꤷ�ޤ���

@param arguments template ��� '?' ���֤������륪�֥������Ȥ�����ǻ��ꤷ�ޤ���

@return ����������å�������Test::Unit::Assertions::AssertionMessage��
        ���󥹥��󥹤��֤��ޤ���

head �� template �������ɲä���ޤ���template �˻��ꤷ��ʸ����� '?' ��
�ޤޤ�Ƥ������ϡ�arguments �˻��ꤷ�����֥������ȤǤ��줾���֤�����
���ޤ���

--- assert_nothing_raised(message = "") { ... }
--- assert_nothing_raised(klass1, klass2, ..., message = "") { ... }

�֥�å���¹Ԥ����㳰�������ʤ���Хѥ����ޤ���

�֥�å���¹Ԥ���ȯ�������㳰�� klass1, klass2, ..., �Τ����줫�Υ��饹��
���󥹥��󥹤Ǥ�����ϡ�assert �ϼ��԰����ȤʤꡢTest::Unit::AssertionFailedError
���ꤲ�ޤ��������Ǥʤ����ϡ����顼�����Ȥʤ�ȯ�������㳰��Ƥ��ꤲ�ޤ���

@param klassX �㳰���饹����ꤷ�ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���
#@end

--- assert_nothing_thrown(message = "") { ... }    -> ()

�֥�å���¹Ԥ��� throw ��������ʤ���Хѥ����ޤ���

@param message assert �����Ԥ�������ɽ�������å�������ʸ����ǻ��ꤷ
               �ޤ������ꤷ�ʤ��ä�����ɽ�����ޤ���

#@since 1.9.1
@raise MiniTest::Assertion assert �����Ԥ�������ȯ�����ޤ���
#@else
@raise Test::Unit::AssertionFailedError assert �����Ԥ�������ȯ�����ޤ���
#@end

#@since 1.9.1
--- mu_pp(obj)     -> String

obj ��ʹ֤��ɤߤ䤹������ʸ����ɽ���ˤ����֤��ޤ���

@param obj Ǥ�դΥ��֥�������

@return obj ��ʹ֤��ɤߤ䤹�������ˤ���ʸ����
#@end
