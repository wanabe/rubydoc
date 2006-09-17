= module Kernel

全てのクラスから参照できるメソッドを定義しているモジュール。
[[c:Object]] クラスはこのモジュールをインクルードしています。
[[unknown:組み込み関数]]の項で解説されているメソッドはこのモジュールで定義され
ています。

[[c:Object]] クラスのメソッドは実際にはこのモジュールで定義されていま
す。これはトップレベルでのメソッドの再定義に対応するためです。

#@include(functions)
#@include(constants)
#@include(specialvars)
