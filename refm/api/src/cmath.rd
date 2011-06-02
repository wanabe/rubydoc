#@since 1.9.1

ʣ�ǿ��黻�򥵥ݡ��Ȥ���饤�֥��Ǥ���

= module CMath

include Math

ʣ�ǿ��黻�򥵥ݡ��Ȥ���⥸�塼��Ǥ���[[c:Math]] �⥸�塼���ʣ�ǿ��ǤǤ���

��:

  require "cmath"
  CMath.sqrt(-9)  # => (0+3.0i)

== Module Functions

--- exp!(x) -> Float

x �λؿ��ؿ�([[m:Math::E]] �� x ��)���ͤ��֤��ޤ���[[m:Math.#exp]] �Υ�
���ꥢ���Ǥ���

@param x [[m:Math::E]] �� x �褹�����¿��ǻ��ꤷ�ޤ���

@raise TypeError x �˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.exp!(0)   # => 1
  CMath.exp!(0.5) # => Math.sqrt(Math::E)
  CMath.exp!(1)   # => Math::E
  CMath.exp!(2)   # => Math::E ** 2

--- exp(z) -> Float | Complex

z �λؿ��ؿ�([[m:Math::E]] �� z ��)���ͤ��֤��ޤ���

@param z [[m:Math::E]] �� z �褹�������ꤷ�ޤ���

��:

  require "cmath"
  CMath.exp(Complex(0, 0))              # => (1.0+0.0i)
  CMath.exp(Complex(0, Math::PI))       # => (-1.0+1.2246063538223773e-16i)
  CMath.exp(Complex(0, Math::PI / 2.0)) # => (6.123031769111886e-17+1.0i)

--- log!(x) -> Float
--- log!(x, b) -> Float

x ���п����֤��ޤ���[[m:Math.#log]] �Υ����ꥢ���Ǥ���

@param x ���������μ¿��ǻ��ꤷ�ޤ���

@param b �����ꤷ�ޤ�����ά�������ϼ����п���׻����ޤ���

@raise Math::DomainError x ����ο��Ǥ������ȯ�����ޤ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError �����Τɤ��餫�˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.log!(Math::E) # => 1.0
  CMath.log!(1)       # => 0.0
  CMath.log!(100, 10) # => 2.0
  CMath.log!(-1.0)     # => Math::DomainError

#@# r4625 ���ߡ�Math.#log �Υɥ�����Ȥϰ����� 1 �Ĥ����ʤ�����1.9 ��
#@# �Ǥ� 2 �Ļ��ꤹ�����Ǥ��롣

--- log(z) -> Float | Complex
--- log(z, b) -> Float | Complex

z ���п����֤��ޤ���

@param x ��������ꤷ�ޤ���

@param b �����ꤷ�ޤ�����ά�������ϼ����п���׻����ޤ���

��:

  require "cmath"
  CMath.log(Complex(0, 0)) # => -Infinity+0.0i
  CMath.log(0)             # => -Infinity

#@todo ���Ϳ�����Ȥ�������ɲá�

#@since 1.9.2
--- log2!(x) -> Float
#@else
--- log2(x) -> Float
#@end

2 ����Ȥ��� x ���п� (binary logarithm) ���֤��ޤ���[[m:Math.#log2]]
�Υ����ꥢ���Ǥ���

@param x ���������μ¿��ǻ��ꤷ�ޤ���

@raise Math::DomainError x ����ο��Ǥ������ȯ�����ޤ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

#@since 1.9.2
--- log2(z) -> Float | Complex

2 ����Ȥ��� z ���п� (binary logarithm) ���֤��ޤ���

@param z ��������ꤷ�ޤ���
#@end

--- log10!(x) -> Float

x �ξ����п����֤��ޤ���[[m:Math.#log10]] �Υ����ꥢ���Ǥ���

@param x ���������μ¿��ǻ��ꤷ�ޤ���

@raise Math::DomainError x ����ο��Ǥ������ȯ�����ޤ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- log10(z) -> Float | Complex

x �ξ����п����֤��ޤ���

#@since 1.9.2
--- cbrt!(x) -> Float
#@else
--- cbrt(x) -> Float
#@end

�¿� x ��Ω�������֤��ޤ���[[m:Math.#cbrt]] �Υ����ꥢ���Ǥ���

@raise TypeError x �˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.cbrt!(8.0)  # => 2.0
  CMath.cbrt!(-8.0) # => -2.0

#@since 1.9.2
--- cbrt(z) -> Float | Complex

z ��Ω�������֤��ޤ���

#@end

--- sqrt!

#@todo

--- sqrt

#@todo

--- sin!

#@todo

--- sin

#@todo

--- cos!

#@todo

--- cos

#@todo

--- tan!

#@todo

--- tan

#@todo

--- sinh!

#@todo

--- sinh

#@todo

--- cosh!

#@todo

--- cosh

#@todo

--- tanh!

#@todo

--- tanh

#@todo

--- asin!

#@todo

--- asin

#@todo

--- acos!

#@todo

--- acos

#@todo

--- atan!

#@todo

--- atan

#@todo

--- atan2!

#@todo

--- atan2

#@todo

--- asinh!

#@todo

--- asinh

#@todo

--- acosh!

#@todo

--- acosh

#@todo

--- atanh!

#@todo

--- atanh

#@todo

--- frexp

#@todo

--- ldexp

#@todo

--- hypot

#@todo

--- erf

#@todo

--- erfc

#@todo

--- gamma

#@todo

--- lgamma

#@todo

#@end
