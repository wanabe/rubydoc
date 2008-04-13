Observer パターンを扱うためのライブラリです。

= module Observable

Observer パターンを提供するモジュールです。

Mix-in により Observer パターンを提供します。

Observable モジュールを include したクラスは
Observable#changed メソッドにより更新フラグを立て、
Observable#notify_observers が呼び出されると
更新フラグが立っている場合はオブザーバに通知します
(オブザーバの update メソッドを呼び出す)。
Observable#notify_observers の引数は
そのままオブザーバの update メソッドに渡されます。

=== サンプルコード
  require 'observer'
  class AObservable
    include Observable
    ...
  end
  class AObserver
    def update(arg)
      ...
    end
    ...
  end
  obj = AObservable.new
  observer = AObserver.new
  obj.add_observer(observer)
  obj.changed
  obj.notify_observers(args)

== Instance Methods

--- add_observer(observer)
#@todo

オブザーバを追加します。
オブザーバは update メソッドを備えている必要があります。

observer が update メソッドを持たないときは
例外 NoMethodError が発生します。

--- delete_observer(observer)
#@todo

オブザーバを削除します。

--- delete_observers
#@todo

オブザーバをすべて削除します。

--- count_observers
#@todo

オブザーバの数を返します。

--- changed(state = true)
#@todo

更新フラグを立てます。

--- changed?
#@todo

更新フラグの状態を返します。

--- notify_observers(*arg)
#@todo

更新フラグが立っていたら、オブザーバの update メソッドを呼び出します。
与えられた引数はその update メソッドに渡されます。
更新フラグは false になります。
