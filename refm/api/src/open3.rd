プログラムを実行し、そのプロセスの標準入力・標準出力・
標準エラー出力にパイプをつなぎます。

= module Open3

プログラムを実行し、そのプロセスの標準入力・標準出力・
標準エラー出力にパイプをつなぎます。

=== 使用例

nroff を実行してその標準入力に man ページを送り込み処理させる。
nroff プロセスの標準出力から処理結果を受け取る。

  require "open3"

  stdin, stdout, stderr = *Open3.popen3('nroff -man')
  # こちらから書く
  Thread.fork {
    File.foreach('/usr/man/man1/ruby.1') do |line|
      stdin.print line
    end
    stdin.close    # または close_write
  }
  # こちらから読む
  stdout.each do |line|
    print line
  end

== Module Functions

#@todo envについて追記する。
#@since 1.9.2
--- popen3(cmd, opts = {}) -> [IO, IO, IO, Thread]
--- popen3(cmd, opts = {}) {|stdin, stdout, stderr, wait_thr| ... } -> ()

外部プログラム cmd を実行し、そのプロセスの標準入力、標準出力、標準エラー
出力に接続されたパイプと実行したプロセスを待つためのスレッドを 4 要素の
配列で返す。cmd は組み込み関数 [[m:Kernel.#exec]] と同じ規則で解釈され
る。

  stdin, stdout, stderr, wait_thr = *Open3.popen3("/usr/bin/nroff -man")

@param cmd 実行するコマンドを指定。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定。

@return ブロックを与えられた場合はブロックの最後に評価された値を返す。
        ブロックを与えられなかった場合は標準入力、標準出力、標準エラー
        出力と実行したプロセスを待つためのスレッドに接続されたパイプを
        返す。

ブロックを指定するとパイプの配列を引数にブロックを実行し、最後に
パイプを close する。この場合はブロックの最後の式の結果を返す。

        require 'open3'

        Open3.popen3("read stdin; echo stdout; echo stderr >&2") {|stdin, stdout, stderr, wait_thr|
          stdin.puts "stdin"
          stdin.close     # または close_write
          p stdout.read
          p stderr.read
        }
        #=> "stdout\n"
            "stderr\n"

#@else
--- popen3(*cmd) -> [IO, IO, IO]
--- popen3(*cmd) {|stdin, stdout, stderr| ... } -> ()

外部プログラム cmd を実行し、そのプロセスの標準入力、
標準出力、標準エラー出力に接続されたパイプを 3 要素の配列で返す。
cmd は組み込み関数 [[m:Kernel.#exec]] と同じ規則で解釈される。

        stdin, stdout, stderr = *Open3.popen3("/usr/bin/nroff -man")

@param cmd 実行するコマンドを指定。

@return ブロックを与えられた場合はブロックの最後に評価された値を返す。
        ブロックを与えられなかった場合は標準入力、標準出力、標準エラー
        を返す。

ブロックを指定するとパイプの配列を引数にブロックを実行し、最後に
パイプを close する。この場合はブロックの最後の式の結果を返す。

        require 'open3'

        Open3.popen3("read stdin; echo stdout; echo stderr >&2") {|stdin, stdout, stderr|
          stdin.puts "stdin"
          stdin.close     # または close_write
          p stdout.read
          p stderr.read
        }
        #=> "stdout\n"
            "stderr\n"

#@end

stdin への入力が終わったらできる限り早く close か close_write
で閉じるべきです。

[UNIX系OS固有の注意] Open3 で作成した子プロセスは
[[man:wait(2)]] しなくてもゾンビになりません。

コマンドは実際には孫プロセスとして動作するため、組み込み変数 [[m:$?]] でコマンドの終了ステータスを得ることはできません。
#@#終了ステータスがほしいひとは、((<POpen4|URL:http://popen4.rubyforge.org/>)) を試してみるといいかもしれません。

#@since 1.9.2
引数リストの最後に[[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で
指定する事ができます。

例:

  require "open3"
  
  # オプションを指定した場合。
  Dir.chdir("/tmp")
  Open3.popen3("pwd", :chdir=> "/") {|i,o,e,t|
    p o.read.chomp #=> "/"
  }
  
  # オプションを指定しない場合。
  Dir.chdir("/tmp")
  Open3.popen3("pwd") {|i,o,e,t|
    p o.read.chomp #=> "/tmp"
  }

@see [[m:Kernel.#spawn]]

#@end

#@since 1.9.2

--- popen2(cmd, opts = {}) -> [IO, IO, Thread]
--- popen2(cmd, opts = {}) {|stdin, stdout, wait_thr| ... } -> ()

cmdで指定されたコマンドを実行し、そのプロセスの標準入力・標準出力にパイ
プをつなぎます。Open3.popen3に似ていますが、標準エラーを扱いません。

@param cmd 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は標準入力、標準出力に接続されたパ
        イプと実行したプロセスを待つためのスレッドを返します。

@see [[m:Open3.#popen3]], [[m:Kernel.#spawn]]

--- popen2e(cmd, opts = {}) -> [IO, IO, Thread]
--- popen2e(cmd, opts = {}) {|stdin, stdout_and_stderr, wait_thr| ... } -> ()

cmdで指定されたコマンドを実行し、そのプロセスの標準入力・標準出力と標準
エラーにパイプをつなぎます。Open3.popen3に似ていますが、標準出力と標準
エラーが1つの変数で扱われます。

@param cmd 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は標準入力、標準出力と標準エラーに
        接続されたパイプと実行したプロセスを待つためのスレッドを返しま
        す。

@see [[m:Open3.#popen3]], [[m:Kernel.#spawn]]

--- capture3(cmd, opts = {}) -> [String, String, Process::Status]

cmdで指定されたコマンドを実行し、そのプロセスの標準出力と標準エラー、プ
ロセスの終了ステータスを表すオブジェクトを返します。

@param cmd 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return 実行したコマンドの標準出力と標準エラー、プロセスの終了ステータ
        スを表すオブジェクトを配列で返します。

指定された引数はopts[:stdin_data]とopts[:binmode]以外は全て
[[m:Open3.#popen3]]に渡されます。opts[:stdin_data]は実行するコマンドの
標準出力に渡されます。opts[:binmode]を真に指定されると内部で使用される
パイプをバイナリモードに指定します。

例:

  require "open3"
  
  o, e, s = Open3.capture3("echo a; sort >&2", :stdin_data=>"foo\nbar\nbaz\n")
  p o #=> "a\n"
  p e #=> "bar\nbaz\nfoo\n"
  p s #=> #<Process::Status: pid 32682 exit 0>

@see [[m:Open3.#popen3]], [[m:Kernel.#spawn]]

--- capture2(cmd, opts = {}) -> [String, Process::Status]

cmdで指定されたコマンドを実行し、そのプロセスの標準出力とプロセスの終了
ステータスを表すオブジェクトを返します。

@param cmd 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return 実行したコマンドの標準出力と終了ステータスを表すオブジェクトを
        配列で返します。

指定された引数はopts[:stdin_data]とopts[:binmode]以外は全て
[[m:Open3.#popen3]]に渡されます。opts[:stdin_data]は実行するコマンドの
標準出力に渡されます。opts[:binmode]を真に指定されると内部で使用される
パイプをバイナリモードに指定します。

例:

  require "open3"
  
  # factorコマンドで与えられた数値(42)を素因数分解する。
  o, s = Open3.capture2("factor", :stdin_data=>"42")
  p o #=> "42: 2 3 7\n"

@see [[m:Open3.#popen3]], [[m:Kernel.#spawn]]

--- capture2e(cmd, opts = {}) -> [String, Process::Status]

cmdで指定されたコマンドを実行し、そのプロセスの標準出力と標準エラーを1
つの文字列にしたものとプロセスの終了ステータスを表すオブジェクトを返し
ます。

@param cmd 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return 実行したコマンドの標準出力と標準エラーを1つの文字列にしたものと
        終了ステータスを表すオブジェクトを配列で返します。

指定された引数はopts[:stdin_data]とopts[:binmode]以外は全て
[[m:Open3.#popen3]]に渡されます。opts[:stdin_data]は実行するコマンドの
標準出力に渡されます。opts[:binmode]を真に指定されると内部で使用される
パイプをバイナリモードに指定します。

例:

  require "open3"
  
  o, s = Open3.capture2e("echo a; sort >&2", :stdin_data=>"foo\nbar\nbaz\n")
  p o #=> "a\nbar\nbaz\nfoo\n"
  p s #=> #<Process::Status: pid 20574 exit 0>

@see [[m:Open3.#popen3]], [[m:Kernel.#spawn]]

--- pipeline_rw(cmd1, cmd2, ..., opts = {}) -> [IO, IO, [Thread]]
--- pipeline_rw(cmd1, cmd2, ..., opts = {}) {|first_stdin, last_stdout, wait_thrs| -> ()

cmdXで指定したコマンドのリストをパイプで繋いで順番に実行します。最初の
コマンドの標準入力に書き込む事も最後のコマンドの標準出力を受けとる事も
できます。

@param cmdX 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は最初に実行するコマンドの標準入力
        と最後に実行するコマンドの標準出力、実行したプロセスを待つため
        のスレッドの配列を配列で返します。

例:

  require "open3"
  
  Open3.pipeline_rw("sort", "cat -n") {|stdin, stdout, wait_thrs|
    stdin.puts "foo"
    stdin.puts "bar"
    stdin.puts "baz"
    
    # sortコマンドにEOFを送る。
    stdin.close
    
    # stdinに渡した文字列をsortコマンドが並べ替えたものに、catコマンド
    # が行番号を付けた文字列が表示される。
    p stdout.read   #=> "     1\tbar\n     2\tbaz\n     3\tfoo\n"
  }

@see [[m:Kernel.#spawn]]

--- pipeline_r(cmd1, cmd2, ..., opts = {}) -> [IO, [Thread]]
--- pipeline_r(cmd1, cmd2, ..., opts = {}) {|last_stdout, wait_thrs| -> ()

cmdXで指定したコマンドのリストをパイプで繋いで順番に実行します。最後の
コマンドの標準出力を受けとる事ができます。

@param cmdX 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は最後に実行するコマンドの標準出力、
        実行したプロセスを待つためのスレッドの配列を配列で返します。

例:

  require "open3"
  
  Open3.pipeline_r("yes", "head -10") {|r, ts|
    p r.read      #=> "y\ny\ny\ny\ny\ny\ny\ny\ny\ny\n"
    p ts[0].value #=> #<Process::Status: pid 24910 SIGPIPE (signal 13)>
    p ts[1].value #=> #<Process::Status: pid 24913 exit 0>
  }

@see [[m:Kernel.#spawn]]

--- pipeline_w(cmd1, cmd2, ..., opts = {}) -> [IO, [Thread]]
--- pipeline_w(cmd1, cmd2, ..., opts = {}) {|first_stdin, wait_thrs| -> ()

cmdXで指定したコマンドのリストをパイプで繋いで順番に実行します。最初の
コマンドの標準入力に書き込む事ができます。

@param cmdX 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は最初に実行するコマンドの標準入力、
        実行したプロセスを待つためのスレッドの配列を配列で返します。

例:

  require "open3"
  
  Open3.pipeline_w("bzip2 -c", :out=>"/tmp/hello.bz2") {|w, ts|
    w.puts "hello"
  }

@see [[m:Kernel.#spawn]]

--- pipeline_start(cmd1, cmd2, ..., opts = {}) -> [Thread]
--- pipeline_start(cmd1, cmd2, ..., opts = {}) {|wait_thrs| -> ()

cmdXで指定したコマンドのリストをパイプで繋いで順番に実行します。

@param cmdX 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return ブロックを指定した場合はブロックの最後に評価された値を返します。
        ブロックを指定しなかった場合は実行したプロセスを待つためのスレッ
        ドの配列を返します。

例:

  require "open3"
  
  # xeyesを10秒だけ実行する。
  Open3.pipeline_start("xeyes") {|ts|
    sleep 10
    t = ts[0]
    Process.kill("TERM", t.pid)
    p t.value #=> #<Process::Status: pid 911 SIGTERM (signal 15)>
  }

@see [[m:Kernel.#spawn]]

--- pipeline(cmd1, cmd2, ..., opts = {}) -> [Process::Status]

cmdXで指定したコマンドのリストをパイプで繋いで順番に実行します。

@param cmdX 実行するコマンドを指定します。

@param opts [[m:Kernel.#spawn]]と同様のオプションをハッシュ形式で指定します。

@return 実行したコマンドの終了ステータスを配列で返します。

例:

  require "open3"
  
  fname = "/usr/share/man/man1/ruby.1.gz"
  p Open3.pipeline(["zcat", fname], "nroff -man", "less")
  #=> [#<Process::Status: pid 11817 exit 0>,
  #    #<Process::Status: pid 11820 exit 0>,
  #    #<Process::Status: pid 11828 exit 0>]

@see [[m:Kernel.#spawn]]

#@end
