#@since 1.8.2

require tk
require tk/itemconfig
require tk/scrollable
require tk/txtwin_abst

= module TkListItemConfig
include TkItemConfigMethod

= class TkListbox < TkTextWin
include TkListItemConfig
include Tk::Scrollable

リストボックスウィジェットのクラスです。
リストボックスウィジェットは項目の一覧を表すウィジェットです。

  require "tk"
  list = TkListbox.new { setgrid 'yes'; pack }
  list.insert 'end', "abc"
  list.insert 'end', "def"
  list.insert 'end', "123"
  list.insert 'end', "456"
  Tk.mainloop

メソッドの説明の中で((*位置*))は、以下のいずれかを指します。

  *数字

   数字で指定した要素位置(上端は0)

  *"@x,y"

   x、y は数字です。
   数字で指定したピクセル位置(入力欄の左上端は0から始まる)

  *"active"

   アクティブ(カーソル位置のこと)である要素の位置

  *"end"

   最後の要素の位置

  *"anchor"

   ???

== Instance Methods

--- tagid(id)

--- activate(y)

((|y|))で指定した((*位置*))の要素をアクティブにします。そのリスト
ボックスに((<入力フォーカス>))があれば、アクティブな行には下線が引
かれます。

     require "tk"
     TkListbox.new {
       insert 'end', "foo"
       insert 'end', "bar"
       insert 'end', "baz"
       activate 1
       #focus
       pack
     }
     Tk.mainloop

--- curselection

((<選択>))された要素の要素番号を配列にして返します(要素番号は上端が0)

--- get(index)
--- get(first, last)

引数が1つの場合、指定した((*位置*))の要素を文字列で返します。
引数が2つの場合、指定した範囲の要素を文字列の配列で返します。

--- nearest(y)

((|y|))で指定したY座標に近い要素の要素番号を返します。

--- size

要素の数を返します。

--- selection_anchor(index)

((|index|))で指定した((*位置*))の要素を((<アンカー>))にします。

--- selection_clear(first, last = TkUtil::None)

((|first|))、((|last|))で指定した((*位置*))の範囲の要素が((<選択>))さ
れていれば非選択にします。((|last|))を省略した場合、((|first|))の((*位
置*))の要素を非選択にします。

--- selection_includes(index)

(({index}))で指定した((*位置*))の要素が((<選択>))されているかどうかを
真偽値(({true}))/(({false}))で返します。

      require "tk"
      l = TkListbox.new {
        100.times {|i| insert "end", i}
      }.pack
      p l.selection_set(0)
      p l.selection_includes(0)
      Tk.mainloop

--- selection_set(first, last = TkUtil::None)

((|first|))、((|last|))で指定した((*位置*))の範囲の要素を((<選択>))し
ます。((|last|))を省略した場合、((|first|))の((*位置*))の要素を選択し
ます。

--- index(idx)

--- value

--- value=(vals)

--- clear
--- erase

== Constants

--- TkCommandNames

--- WidgetClassName

#@end
