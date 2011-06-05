#@since 1.9.1

ʣ�ǿ��黻�򥵥ݡ��Ȥ���饤�֥��Ǥ���

= module CMath

include Math

ʣ�ǿ��黻�򥵥ݡ��Ȥ���⥸�塼��Ǥ���

[[c:Math]] �⥸�塼���ʣ�ǿ��ǤǤ���Ʊ̾�Υ᥽�åɤ�ʣ�ǿ��б����ޤ���
����η׻���̤�ɬ�פʾ��ϡ��֥᥽�å�̾!�פη����ǸƤӽФ��ޤ���

��:

  require "cmath"
  CMath.sqrt(-9)  # => (0+3.0i)
  CMath.sqrt!(4)  # => 2.0

== Module Functions

--- exp!(x) -> Float

�¿� x �λؿ��ؿ�([[m:Math::E]] �� x ��)���ͤ��֤��ޤ���
[[m:Math.#exp]] �Υ����ꥢ���Ǥ���

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

�¿� x ���п����֤��ޤ���[[m:Math.#log]] �Υ����ꥢ���Ǥ���

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

2 ����Ȥ���¿� x ���п� (binary logarithm) ���֤��ޤ���
[[m:Math.#log2]]�Υ����ꥢ���Ǥ���

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

�¿� x �ξ����п����֤��ޤ���[[m:Math.#log10]] �Υ����ꥢ���Ǥ���

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

--- sqrt!(x) -> Float

�¿� x ��ʿ�������֤��ޤ���[[m:Math.#sqrt]] �Υ����ꥢ���Ǥ���

@raise Math::DomainError x ����ο��Ǥ������ȯ�����ޤ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.sqrt!(4.0) # => 2.0
  CMath.sqrt!(9.0) # => 3.0

--- sqrt(z) -> Float | Complex

z ��ʿ�������֤��ޤ���

��:

  require "cmath"
  CMath.sqrt(-1)               # => (0+1.0i)
  CMath.sqrt(1)                # => 1.0
  CMath.sqrt(Complex(0, 8))    # => (2.0+2.0i)

--- sin!(x) -> Float

�¿� x �������ؿ����ͤ�饸������֤��ޤ���[[m:Math.#sin]] �Υ����ꥢ��
�Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.sin!(0 * Math::PI / 4) # => 0.0
  CMath.sin!(1 * Math::PI / 4) # => 0.7071067811865475
  CMath.sin!(2 * Math::PI / 4) # => 1.0

--- sin(z) -> Float | Complex

z �������ؿ����ͤ�饸������֤��ޤ���

--- cos!(x) -> Float

�¿� x ��;���ؿ����ͤ�饸������֤��ޤ���[[m:Math.#cos]] �Υ����ꥢ��
�Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.cos!(0 * Math::PI / 4) # => 1.0
  CMath.cos!(1 * Math::PI / 4) # => 0.7071067811865476
  CMath.cos!(4 * Math::PI / 4) # => -1.0

--- cos(z) -> Float | Complex

z ��;���ؿ����ͤ�饸������֤��ޤ���

--- tan!(x) -> Float

�¿� x �����ܴؿ����ͤ�饸������֤��ޤ���[[m:Math.#tan]] �Υ����ꥢ��
�Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

��:

  require "cmath"
  CMath.tan!(0 * Math::PI / 4) # => 0.0
  CMath.tan!(1 * Math::PI / 4) # => 1.0
  CMath.tan!(4 * Math::PI / 4) # => 0.0

--- tan(z) -> Float | Complex

z �����ܴؿ����ͤ�饸������֤��ޤ���

--- sinh!(x) -> Float

�¿� x ���ж��������ؿ����ͤ��֤��ޤ���[[m:Math.#sinh]] �Υ����ꥢ����
����

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- sinh(z) -> Float | Complex

z ���ж��������ؿ����ͤ��֤��ޤ���

--- cosh!(x) -> Float

�¿� x ���ж���;���ؿ����ͤ��֤��ޤ���[[m:Math.#cosh]] �Υ����ꥢ����
����

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- cosh(z) -> Float | Complex

z ���ж���;���ؿ����ͤ��֤��ޤ���

--- tanh!(x) -> Float

�¿� x ���ж������ܴؿ����ͤ��֤��ޤ���[[m:Math.#tanh]] �Υ����ꥢ����
����

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- tanh(z) -> Float | Complex

z ���ж������ܴؿ����ͤ��֤��ޤ���

--- asin!(x) -> Float

�¿� x �ε������ؿ����ͤ�饸������֤��ޤ���[[m:Math.#asin]] �Υ�����
�����Ǥ���

@param x -1.0 <= x <= 1 ���ϰ���μ¿���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise Math::DomainError �������ϰϳ��μ¿�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- asin(z) -> Float | Complex

z �ε������ؿ����ͤ�饸������֤��ޤ���

--- acos!(x) -> Float

�¿� x �ε�;���ؿ����ͤ�饸������֤��ޤ���[[m:Math.#acos]] �Υ�����
�����Ǥ���

@param x -1.0 <= x <= 1 ���ϰ���μ¿�

@return �֤�����ͤ��ϰϤ� [0, +��] �Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise Math::DomainError �������ϰϳ��μ¿�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- acos(z) -> Float | Complex

z �ε�;���ؿ����ͤ�饸������֤��ޤ���

--- atan!(x) -> Float

�¿� x �ε����ܴؿ����ͤ�饸������֤��ޤ���[[m:Math.#atan]] �Υ�����
�����Ǥ���

@param x �¿���

@return �֤�����ͤ��ϰϤ� [-��/2, +��/2] �Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- atan(z) -> Float | Complex

z �ε����ܴؿ����ͤ�饸������֤��ޤ���

--- atan2!(x, y) -> Float

�¿� x / y �ε����ܴؿ����ͤ��֤��ޤ���[[m:Math.#atan2]] �Υ����ꥢ����
����

@param x �¿���

@param y �¿���

@return �֤�����ͤ��ϰϤ� [-��/2, ��/2] �Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- atan2(x, y) -> Float | Complex

x / y �ε����ܴؿ����ͤ��֤��ޤ���

--- asinh!(x) -> Float

�¿� x �ε��ж��������ؿ����ͤ��֤��ޤ���[[m:Math.#asinh]] �Υ����ꥢ���Ǥ���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- asinh(z) -> Float | Complex

z �ε��ж��������ؿ����ͤ��֤��ޤ���

--- acosh!(x) -> Float

�¿� x �ε��ж���;���ؿ����ͤ��֤��ޤ���[[m:Math.#acosh]] �Υ����ꥢ���Ǥ���

@param x x >= 1 ���ϰϤμ¿���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise Math::DomainError �������ϰϳ��μ¿�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- acosh(z) -> Float | Complex

z �ε��ж���;���ؿ����ͤ��֤��ޤ���

--- atanh!(x) -> Float

�¿� x �ε��ж������ܴؿ����ͤ��֤��ޤ���[[m:Math.#atanh]] �Υ����ꥢ���Ǥ���

@param x -1 < x < 1 �μ¿���

@return �¿���

@raise TypeError �����Τɤ��餫�˿��Ͱʳ�����ꤷ������ȯ�����ޤ���

@raise Math::DomainError �������ϰϳ��μ¿�����ꤷ������ȯ�����ޤ���

@raise RangeError x �˼¿��ʳ��ο��ͤ���ꤷ������ȯ�����ޤ���

--- atanh(z) -> Float | Complex

z �ε��ж������ܴؿ����ͤ��֤��ޤ���

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
