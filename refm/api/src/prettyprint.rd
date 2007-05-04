= class PrettyPrint < Object

pretty printing アルゴリズムのためのクラスです。
改行の位置を探し、きれいなインデントを施します。

デフォルトでは、このクラスは文字列を扱います。
また、文字1バイトが出力幅の中で1カラムを占めると仮定しています。
しかし、以下のメソッドに対して適切な引数を与えることで、
そうでない場合にも利用できます。
 * [[m:PrettyPrint.new]]: 出力バッファ、空白の生成をするブロックや改行オブジェクトを設定できます。
 * [[m:PrettyPrint#text]]: 幅を設定できます。
 * [[m:PrettyPrint#breakable]] 
ですので、このクラスは以下のようなことにも応用が可能です。
 * proportional font を使ったテキストの整形
 * 出力幅とバイト数が異なるような多バイト文字
 * 文字以外の整形

=== References
Christian Lindig, Strictly Pretty, March 2000,
[[url:http://www.st.cs.uni-sb.de/~lindig/papers/pretty/strictly-pretty.html]]

Philip Wadler, A prettier printer, March 1998,
[[url:http://homepages.inf.ed.ac.uk/wadler/topics/language-design.html#prettier]]


== Class Methods
--- new(output = '', maxwidth = 79, newline = "\n")               -> PrettyPrint
--- new(output = '', maxwidth = 79, newline = "\n"){|width| ...}  -> PrettyPrint
#@todo

pretty printing のためのバッファを生成します。
output は出力先です。output は << メソッドを持っていなければなりません。
<< メソッドには
 * [[m:PrettyPrint#text]] の第1引数 obj 
 * [[m:PrettyPrint#breakable]] の第1引数 sep 
 * [[m:PrettyPrint.new]] の第3引数 newline 
 * [[m:PrettyPrint.new]] に与えたブロックを評価した結果
のどれかひとつが引数として与えられます。

ブロックが指定された場合は、空白を生成するために使われます。ブロックは、生成したい空白の幅を表す整数を引数として呼ばれます。ブロックが指定されない場合は、空白を生成するために {|width| ' ' * width} が使われます。

@param output 出力先を指定します。output は << メソッドを持っていなければなりません。

@param maxwidth は行の最大幅を指定します。ただし、改行できないものが渡された場合は、実際の出力幅は maxwidth を越えることがあります。

@param newline は改行に使われます。


--- format(output = '', maxwidth = 79, newline = "\n", genspace = lambda{|n| ' ' * n}) {|pp| ...}    -> object
#@todo

PrettyPrint オブジェクトを生成し、それを引数としてブロックを実行します。
与えられた output を返します。

以下と同じ働きをするもので簡便のために用意されています。

  begin
    pp = PrettyPrint.new(output, maxwidth, newline, &genspace)
    ...
    pp.flush
    output
  end

--- singleline_format(output = '', maxwidth = 79, newline = "\n", genspace = lambda{|n| ' ' * n}) {|pp| ...}    -> object
#@todo

PrettyPrint オブジェクトを生成し、それを引数としてブロックを実行します。
[[m:PrettyPrint.format]] に似ていますが、改行しません。

引数 maxwidth, newline と genspace は無視されます。ブロック中の breakable の実行は、
改行せずに text の実行であるかのように扱います。

== Instance Methods
--- text(obj)           -> ()
--- text(obj, width)    -> ()
#@todo

obj を width カラムのテキストとして自身に追加します。

@param obj 自身に追加するテキストを文字列で指定します。

@param width obj のカラムを指定します。指定されなかった場合、obj.length が利用されます。

--- breakable(sep = ' ')     -> ()
--- breakable(sep, width)    -> ()
#@todo

「必要ならここで改行出来る」ということを自身に通知します。
もしその位置で改行されなければ、width カラムのテキスト sep が出力の際にそこに挿入されます。

@param sep 改行が起きなかった場合に挿入されるテキストを文字列で指定します。

@param width テキスト sep は width カラムであると仮定されます。指定されなければ、sep.length が利用されます。例えば sep が多バイト文字の際に指定する必要があるかも知れません。

--- nest(indent) {...}     -> ()
#@todo

自身の現在のインデントを indent ぶんだけ増加させてから、ブロックを実行し、元に戻します。

@param indent インデントの増加分を整数で指定します。

--- group(indent = 0, open_obj = '', close_obj = '', open_width = open_obj.length, close_width = close_obj.length){...}      -> ()
#@todo

ブロックを実行します。
ブロック内で自身に追加される文字列やオブジェクトは、1行でまとめて表示しても
よい同じグループに属すると仮定されます。

もう少し詳しく説明します。Pretty Print アルゴリズムはインデントと改行を、
ツリー構造を作ることによって決定します。そして、group メソッドは子ノードの作成と
子ノードのインデントの深さの決定を担当します。

同じノード内で呼ばれた breakable は、改行するならば全て同時に改行します。そして、
子ノードで改行が発生した場合、親ノードでも改行が発生します。逆に親ノードの改行は、
子ノードに伝播しません。

@param indent グループのインデントの深さを指定します。

@param open_obj 指定された場合、self.text(open_obj, open_width) がブロックが実行される前に呼ばれます。開き括弧などを出力するのに使用されます。

@param close_obj 指定された場合、self.text(close_obj, close_width) がブロックが実行された後に呼ばれます。閉じ括弧などを出力するのに使用されます。

--- flush     -> ()
#@todo

バッファされたデータを出力します。

--- first?
#@todo

#@since 1.8.2
このメソッドは obsolete です。
#@end

現在のグループで first? に対する最初の呼び出しかどうかを判定する
述語です。これはカンマで区切られた値を整形するのに有用です。

  pp.group(1, '[', ']') {
    xxx.each {|yyy|
      unless pp.first?
        pp.text ','
        pp.breakable
      end
      ... pretty printing yyy ...
    }
  }
