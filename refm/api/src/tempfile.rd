require tmpdir

テンポラリファイルを操作するためのクラスです

= class Tempfile < File
#@#= class Tempfile < DelegateClass(File)

テンポラリファイルを操作するためのクラスです。

 * テンポラリファイルを作成します。
   ファイルは "w+" モードで "basename.pid.n" という名前になります。
 * Tempfile オブジェクトは[[c:File]]オブジェクトと同じように使うことができます。
 * Tempfile#close(true) により、作成したテンポラリファイルは削除されます。
 * スクリプトが終了するときにも削除されます。
 * [[m:Tempfile#open]]により、テンポラリファイルを再オープンすることができます。
 * テンポラリファイルのモードは 0600 です。

== Class Methods

--- new(basename, tempdir = Dir::tmpdir) -> Tempfile
--- open(basename, tempdir = Dir::tmpdir) -> Tempfile
--- open(basename, tempdir = Dir::tmpdir){|fp| ...} -> nil

#@since 1.8.7
テンポラリファイルを作成し、それを表す Tempfile オブジェクトを生成して返します。
ファイル名のプレフィクスには指定された basename が使われます。
ファイルは指定された tempdir に作られます。
#@else
"basename.pid.n" というファイル名で
テンポラリファイルを作成し、インスタンスを返します。
#@end
 ブロックを指定して呼び出した場合は、Tempfile オブジェクトを引数として ブロックを実行します。ブロックの実行が終了すると、ファイルは自動的に クローズされ、nilをかえします。


@param basename ファイル名のプレフィクスを文字列で指定します。
#@since 1.8.7
                文字列の配列を指定した場合、先頭の要素がファイル名のプレフィックス、次の要素が
                サフィックスとして使われます。
#@end

@param tempdir テンポラリファイルが作られるディレクトリです。
               このデフォルト値は、[[m:Dir.tmpdir]] の値となります。


#@since 1.8.7
例:
   require "tempfile"
   t = Tempfile.open(['hoge', 'bar'])
   p t.path                            #=> "/tmp/hoge20080518-6961-5fnk19-0bar"
   t2 = Tempfile.open(['t', '.xml'])
   p t2.path                           #=> "/tmp/t20080518-6961-xy2wvx-0.xml"
#@end

例２：ブロックを与えた場合
  require 'tempfile'

  path = nil
  Tempfile.open("temp"){|fp|
    fp.puts "hoge"
    path = fp.path
  }

  system("cat #{path}")


== Instance Methods

--- close(real = false) -> nil

テンポラリファイルをクローズします。
real が偽ならば、テンポラリファイルはGCによって削除されます。
そうでなければ、すぐに削除されます。

@param real false もしくはそれ以外を指定します。

  tf = Tempfile.open("bar")
  tf.close
  p FileTest.exist?(tf.path) # => true

--- open -> self

クローズしたテンポラリファイルを再オープンします。
"r+" でオープンされるので、クローズ前の内容を再度読む
ことができます。

  tf = Tempfile.new("foo")
  tf.print("foobar,hoge\n")
  tf.print("bar,ugo\n")
  tf.close
  tf.open
  p tf.gets # => "foobar,hoge\n"

--- path -> String

テンポラリファイルのパス名を返します。

  tf = Tempfile.new("hoo")
  p tf.path # => "/tmp/hoo.10596.0" 

#@since 1.6.8
--- length -> Integer
--- size -> Integer
テンポラリファイルのサイズを返します。

  tf = Tempfile.new("foo")
  tf.print("bar,ugo")
  p tf.size # => 7
  tf.close
  p tf.size # => 0
#@end

#@since 1.9.0
--- close! -> nil
#@else
--- close! -> self
#@end
テンポラリファイルをクローズし、すぐに削除します。

  tf = Tempfile.open("bar")
  tf.close!
  p FileTest.exist?(tf.path) # => false

--- delete -> self
--- unlink -> self

テンポラリファイルをクローズせずに、削除します。
UNIXライクなシステムでは、
作成したテンポラリファイルが他のプログラムに使用される機会をなくすために、
テンポラリファイルを作成しオープンした後、
すぐに削除するということがしばしばおこなわれます。

#@# Unlinks the file. On UNIX-like systems, it is often a good idea
#@# to unlink a temporary file immediately after creating and opening
#@# it, because it leaves other programs zero chance to access the
#@# file.

  tf = Tempfile.new("foo")
  tf.unlink
  p tf.path # => nil
  tf.print("foobar,hoge\n")
  tf.rewind
  p tf.gets("\n") # => "foobar,hoge\n"
