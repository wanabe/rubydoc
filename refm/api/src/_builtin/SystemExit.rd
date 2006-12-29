= class SystemExit < Exception

Ruby インタプリタを終了させるときに発生します。
#@# exit と raise SystemExit の違い： [[ruby-dev:12785]]

== Class Methods

#@since 1.8.0
--- new(status = 0, error_message = "")

SystemExit オブジェクトを生成して返します。

第 1 引数 status には終了ステータスを整数で指定します。
第 2 引数 error_message にはエラーメッセージを文字列で指定します。

例:

  ex = SystemExit.new(1)
  p ex.status   # => 1
#@end

== Instance Methods

#@since 1.8.0
--- status

例外オブジェクトに保存された終了ステータスを返します。

終了ステータスは [[m:Kernel#exit]] や [[m:SystemExit.new]] などで設定されます。

例:

  begin
    exit 1
  rescue SystemExit => err
    p err.status   # => 1
  end

  begin
    raise SystemExit.new(1, "dummy exit")
  rescue SystemExit => err
    p err.status   # => 1
  end
#@end

#@since 1.8.2
--- success?

終了ステータスが正常終了を示す値ならば true を返します。

大半のシステムでは、ステータス 0 が正常終了を表します。

例:

  begin
    exit true
  rescue SystemExit => err
    p err.success?  # => true
  end

  begin
    exit false
  rescue SystemExit => err
    p err.success?  # => false
  end
#@end
