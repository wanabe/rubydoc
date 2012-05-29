= trap::NKF
* -m0をつけないとBエンコードなどのMIME encodeがデコードされてしまいます。
    NKF.nkf("-e", "foo") #=> foo
    NKF.nkf("-e -m0", "foo") #=> "foo"

* 1.8.2から中のNKFのバージョンが1.7相当から2.0相当にあがったため、
  ((<nkf/NKF.guess>))などの挙動が変わっています。
  * 必要なら(({defined?(NKF::UTF8)}))で場合分けして対応してください。
  * 古い挙動が必要なら((<nkf/NKF.guess1>))を使ってください。
