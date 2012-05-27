#@since 1.8.1

BigDecimal��Ȥä�����Ū�ʵ�ǽ���󶡤��ޤ���

�ʲ��η׻����Ԥ��ޤ���

 * sqrt(x, prec)
 * sin (x, prec)
 * cos (x, prec)
 * atan(x, prec)
#@until 1.9.3
 * exp (x, prec)
 * log (x, prec)
#@end
 * PI  (prec)
 * E   (prec)

����:

: x

  �׻��оݤ� BigDecimal ���֥������ȡ�

: prec

  �׻���̤����١�

��:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath

  a = BigDecimal((PI(100)/2).to_s)
  puts sin(a,100) #=> 0.10000000000000000000......E1

#@since 1.9.3
= reopen BigMath
#@else
#@include(BigMath)
#@end

#@since 1.9.2
== Module Functions
#@else
== Instance Methods
#@end

--- sqrt(x, prec) -> BigDecimal

x ��ʿ������ prec �ǻ��ꤷ�����٤Ƿ׻����ޤ���

@param x ʿ������������

@param prec �׻���̤����١�

@raise FloatDomainError x �� 0 �ʲ����⤷���� NaN �����ꤵ�줿����ȯ�����ޤ���

@raise ArgumentError prec �� 0 ̤�������ꤵ�줿����ȯ�����ޤ���

��:

#@since 1.9.2

  require "bigdecimal/math"

  puts BigMath::sqrt(BigDecimal.new('2'), 10) #=> 0.14142135623730950488016883515E1

#@else

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts sqrt(BigDecimal.new('2'), 10) #=> 0.14142135623730950488016883515E1

#@end

--- sin(x, prec) -> BigDecimal

x �������ؿ��� prec �ǻ��ꤷ�����٤Ƿ׻����ޤ���ñ�̤ϥ饸����Ǥ���x
��̵����� NaN ����ꤷ�����ˤ� NaN ���֤��ޤ���

@param x �׻��оݤ� BigDecimal ���֥������ȡ�ñ�̤ϥ饸����

@param prec �׻���̤����١�

@raise ArgumentError prec �� 0 �ʲ������ꤵ�줿����ȯ�����ޤ���

��:

#@since 1.9.2

  require "bigdecimal/math"

  puts BigMath::sin(BigDecimal.new('0.5'), 10) #=> 0.479425538604203000273287935689073955184741E0

#@else

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts sin(BigDecimal.new('0.5'), 10) #=> 0.479425538604203000273287935689073955184741E0

#@end

--- cos(x, prec) -> BigDecimal

x ��;���ؿ��� prec �ǻ��ꤷ�����٤Ƿ׻����ޤ���ñ�̤ϥ饸����Ǥ���x
��̵����� NaN ����ꤷ�����ˤ� NaN ���֤��ޤ���

@param x �׻��оݤ� BigDecimal ���֥������ȡ�ñ�̤ϥ饸����

@param prec �׻���̤����١�

@raise ArgumentError prec �� 0 �ʲ������ꤵ�줿����ȯ�����ޤ���

��:

#@since 1.9.2

  require "bigdecimal/math"

  puts BigMath::cos(BigDecimal.new('0.5'), 10) #=> 0.8775825618903727161162815826327690580439923E0

#@else

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts cos(BigDecimal.new('0.5'), 10) #=> 0.8775825618903727161162815826327690580439923E0

#@end

--- atan(x, prec) -> BigDecimal

x �ε����ܴؿ��� prec �ǻ��ꤷ�����٤Ƿ׻����ޤ���ñ�̤ϥ饸����Ǥ���
x ��̵����� NaN ����ꤷ�����ˤ� NaN ���֤��ޤ���

@param x �׻��оݤ� BigDecimal ���֥������ȡ�ñ�̤ϥ饸����

@param prec �׻���̤����١�

@raise ArgumentError x �������ͤ�1�ʾ�ξ���ȯ�����ޤ���

@raise ArgumentError prec �� 0 �ʲ������ꤵ�줿����ȯ�����ޤ���

��:

#@since 1.9.2

  require "bigdecimal/math"

  puts BigMath::atan(BigDecimal.new('0.5'), 10) #=> 0.463647609000806116214256237466868871528608E0

#@else

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts atan(BigDecimal.new('0.5'), 10) #=> 0.463647609000806116214256237466868871528608E0

#@end

===== ���

x �������ͤ� 0.9999 �Τ褦�� 1 �˶᤹�����ͤˤ���ȷ׻���̤���«���ʤ�
��ǽ��������ޤ���

--- PI(prec) -> BigDecimal

�߼�Ψ�� prec �ǻ��ꤷ�����٤Ƿ׻����ޤ���

@param prec �׻���̤����١�

@raise ArgumentError prec �� 0 �ʲ������ꤵ�줿����ȯ�����ޤ���

��:

#@since 1.9.2

  require "bigdecimal/math"

  puts BigMath::PI(10) #=> 0.314159265359224236485984067E1

#@else

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts PI(10) #=> 0.314159265359224236485984067E1

#@end

--- E(prec) -> BigDecimal

�����п����� e �� prec �ǻ��ꤷ�����٤Ƿ׻����ޤ���

@param prec �׻���̤����١�

@raise ArgumentError prec �� 0 �ʲ������ꤵ�줿����ȯ�����ޤ���

��:

#@since 1.9.2

  require "bigdecimal/math"

  puts BigMath::E(10) #=> 0.271828182845904523536028752390026306410273E1

#@else

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts E(10) #=> 0.271828182845904523536028752390026306410273E1

#@end

#@end
