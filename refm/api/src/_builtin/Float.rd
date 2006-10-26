= class Float < Numeric
include Precision

浮動小数点数のクラス。Float の実装は C 言語の double で、その精度は環
境に依存します。((-一般にはせいぜい15桁です。詳しくは多くのシステムで
採用されている浮動小数点標準規格、IEEE (Institute of Electrical and
Electronics Engineers: 米国電気電子技術者協会) 754 を参照してください-))

  # あるシステムでの 1/3(=0.333...) の結果
  printf("%.50f\n", 1.0/3)
  => 0.33333333333333331482961625624739099293947219848633

[[m:Math::PI]] など、浮動小数点演算に関する定数については [[c:Math]] を
参照のこと。

== Class Methods

--- induced_from(num)

num を Float に変換した結果を返します。

== Instance Methods

--- +(other)
--- -(other)
--- *(other)
--- /(other)
--- %(other)
--- **(other)

算術演算子。それぞれ和、差、積、商、剰余、冪を計算します。

--- <=>(other)

self と other を比較して、self が大きい時に正、
等しい時に 0、小さい時に負の整数を返します。

--- ==(other)
--- <(other)
--- <=(other)
--- >(other)
--- >=(other)

比較演算子。

--- finite?

数値が ∞ でも、NaN でもなければ真を返します

--- infinite?

数値が +∞ のとき 1、-∞のとき -1 を返します。それ以外は nil を返
します。浮動小数点数の 0 による除算は ∞ です。

  inf = 1.0/0
  p inf
  p inf.infinite?
  
  => Infinity
     1
  
  inf = -1.0/0
  p inf
  p inf.infinite?
  
  => -Infinity
     -1

--- nan?

数値が NaN(Not a number)のとき真を返します。浮動小数点数 0 の 0 に
よる除算は NaN です。

  nan = 0.0/0.0
  p nan
  p nan.nan?
  
  => NaN
     true

--- to_f

self を返します。

--- to_i
--- truncate

小数点以下を切り捨てて値を整数に変換します。

[[m:Numeric#round]], [[m:Numeric#ceil]], [[m:Numeric#floor]] も参照。

#@if (version >= "1.8.0")

== Constants

--- DIG

Float が表現できる最大の 10 進桁数

--- EPSILON

1.0 + Float::EPSILON != 1.0 となる最小の値

--- MANT_DIG

仮数部の Float::RADIX 進法での桁数

--- MAX
--- MIN

Float が取り得る最大値、最小値

--- MAX_10_EXP
--- MIN_10_EXP

最大／最小の 10 進の指数

--- MAX_EXP
--- MIN_EXP

最大／最小の Float::RADIX 進の指数

--- RADIX

指数表現の基数

--- ROUNDS

丸めモード (-1: 不定、0: 0.0 の方向に丸め、1: 四捨五入、2:正の無限
大の方向に丸め、3:負の無限大の方向に丸め)
#@end
