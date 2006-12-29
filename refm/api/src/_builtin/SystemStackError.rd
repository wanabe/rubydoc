#@since 1.9.0
= class SystemStackError < Exception
#@else
= class SystemStackError < StandardError
#@end

システムスタックがあふれたときに発生します。
典型的には、メソッド呼び出しを無限再起させてしまった場合に発生します。

ほとんどの場合は実際にスタックがあふれる前に
SystemStackError 例外が発生しますが、
運が悪いと例外を発生させる間もなくスタックがあふれてしまうこともあります。
その場合は [BUG] というエラーメッセージが出たり、
"segmentation fault (core dumped)" などと表示されて
プロセスが異常終了します。

この問題の解決策は検討されていますが、
近いうちには修正できない可能性があります。
