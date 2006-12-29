= class fatal < Exception

インタプリタ内部で致命的なエラーが起こったときに発生します。
致命的なエラーとは、例えば以下のような状態です。

  * スレッドのデッドロックが発生した
  * -x オプションや -C オプションで指定されたディレクトリに移動できなかった
  * -i オプション付きで起動されたが、
    パーミッションなどの関係でファイルを変更できなかった

通常の手段では、
Ruby プログラムからは fatal クラスにはアクセスできません。

#@# 以下のようにすれば見えます
#@#
#@#    begin
#@#      Thread.start { Thread.stop }
#@#      Thread.stop
#@#    rescue Exception
#@#      Fatal = $!.class
#@#    end
#@#
#@#    p Fatal    # => fatal
