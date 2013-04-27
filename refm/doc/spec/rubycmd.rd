= Rubyの起動

  * [[ref:cmd_option]]
  * [[ref:shebang]]

Rubyインタプリタの起動は以下の書式のコマンドラインにより行います。
#@#((-[[c:Win32ネイティブ版]] には、コマンドプロンプトを使用しない
#@#rubyw.exe コマンドがあります-))

  ruby [ option ...] [ -- ] [ programfile ] [ argument ...]

ここで、option は後述の[[ref:cmd_option]]
のいずれかを指定します。-- は、オプション列の終りを明示するため
に使用できます。programfile は、Ruby スクリプトを記述したファイ
ルです。これを省略したり`-' を指定した場合には標準入力を Ruby ス
クリプトとみなします。

programfile が `#!' で始まるファイルである場合、特殊な解釈
が行われます。詳細は後述の[[ref:shebang]] を参照
してください

argument に指定した文字列は組み込み定数 [[m:Kernel::ARGV]] の初
期値として設定されます。標準のシェルがワイルドカードを展開しない環境
([[d:platform/Win32]])では、Ruby インタプリタが自前でワイルドカードを展開して
[[m:Kernel::ARGV]] に設定します。この場合ワイルドカードとして
`*', `?', `[]', `**/' が使用できます
([[m:Dir.glob]] と異なり `{..}' は使えません)。Win32 環境で、
ワイルドカード展開を抑止したい場合は引数をシングルクォート(') で括りま
す。

===[a:cmd_option] コマンドラインオプション

Rubyインタプリタは以下のコマンドラインオプションを受け付けま
す。基本的にPerlのものと良く似ています。

: -0数字

  入力レコードセパレータ([[m:$/]])を8進数で指定します。

  数字を指定しない場合はヌルキャラクタがセパレータになります
  ($/ = "\0" と同じ)。
  数の後に他のスイッチがあっても構いません。

  -00で, パラグラフモード($/=""と同じ), -0777で
  (そのコードを持つ文字は存在しないので)ファイルの内容を全部一度に読み
  込むモード($/=nilと同じ)に設定できます。

: -a

  `-n'や`-p'とともに用いて, オートスプリットモードをONにします。
  オートスプリットモードでは各ループの先頭で,
//emlist{
    $F = $_.split
//}
  が実行されます。`-n'か`-p'オプションが同時に指定されない限り,
  このオプションは意味を持ちません。

: -C directory

  スクリプト実行前に指定されたディレクトリに移動します。

: -c

  スクリプトの内部形式へのコンパイルのみを行い, 実行しません。コンパイル終
  了後, 文法エラーが無ければ, "Syntax OK"と出力します。

: --copyright

  著作権表示をします。

#@until 1.9.2
: -Kc
#@since 1.9.1
  外部エンコーディングとスクリプトエンコーディングをセットします。
  e(EUC-JP), s(Windows-31J, CP932), u(UTF-8), n(ASCII-8BIT, BINARY) が使用できます。
#@else
  Rubyの処理する漢字コードを指定します。 Rubyは指定された文字
  が `E'または`e'の場合は文字列やアクセスするファイルの内容の
  コードがEUCであると仮定します。同様に`S'または`s'の場合は
  SJIS、'U'または'u'の場合はUTF-8として処理します。
  `N'は漢字を処理しません。デフォルトはN(NONE)です。

  また、このオプションを使用すると [[m:$KCODE]] にも値をセットします。

  このオプションは将来文字コードの取扱いが変更された場合等には
  変更される可能性があります。
#@end
#@end

: -d
: --debug

  デバッグモードでスクリプトを実行します。[[m:$DEBUG]] を
  true にします。

#@since 1.9.1
: -E ex[:in]
: --encoding ex[:in]

  デフォルトの外部エンコーディングと内部エンコーディングを:区切りで指定
  します。内部エンコーディングを省略した場合は
  [[m:Encoding.default_internal]] は nil になります。また、:エンコーディ
  ング のように外部エンコーディングを省略した場合は内部エンコーディング
  のみを変更します。
#@end

: -e script

  コマンドラインからスクリプトを指定します。-eオ
  プションを付けた時には引数からスクリプトファイル名を取りませ
  ん。

  -e オプションを複数指定した場合、各スクリプトの間に改行を
  挟んで解釈します。
//emlist{
    以下は等価です。
    ruby -e "5.times do |i|" -e "puts i" -e "end"

    ruby -e "5.times do |i|
      puts i
    end"

    ruby -e "5.times do |i|; puts i; end"
//}

: -Fregexp

  入力フィールドセパレータ([[m:$;]])に regexp をセットします。

: -h
: --help

  コマンドラインオプションの概要を表示します。

: -i[extension]

  引数で指定されたファイルの内容を置き換える(in-place edit)こ
  とを指定します。元のファイルは拡張子をつけた形で保存されます。
  拡張子を省略するとバックアップは行われず、変更されたファイル
  だけが残ります。ただし [[d:platform/Win32]] では省略出来ません
  ([[ruby-list:38066]] 参照)。

  例:

//emlist{
    % echo matz > /tmp/junk
    % cat /tmp/junk
    matz
    % ruby -p -i.bak -e '$_.upcase!' /tmp/junk
    % cat /tmp/junk
    MATZ
    % cat /tmp/junk.bak
    matz
//}

: -I directory

  ファイルをロードするパスを指定(追加)します。指定されたディレ
  クトリはRubyの配列変数([[m:$:]])に追加されます。

: -l

  行末の自動処理を行います。まず、[[m:$\]] を
  [[m:$/]] と同じ値に設定し, printでの出力
  時に改行を付加するようにします。それから, -n
  フラグまたは-pフラグが指定されていると
  gets
  で読み込まれた各行の最後に対して
  [[m:String#chop!]]を行います。

: -n

  このフラグがセットされるとプログラム全体が
  sed -nやawk
  のように
//emlist{
    while gets
     ...
    end
//}
  で囲まれているように動作します.

: -p

  -nフラグとほぼ同じですが, 各ループの最後に変数 [[m:$_]]
  の値を出力するようになります。

  例:
//emlist{
    % echo matz | ruby -p -e '$_.tr! "a-z", "A-Z"'
    MATZ
//}

: -r feature

  スクリプト実行前に feature で指定されるライブラリを
  [[m:Kernel.#require]] します。
  `-n'オプション、`-p'オプションとともに使う時に特に有効です。

: -s

  スクリプト名に続く, `-'で始まる引数を解釈して, 同名のグローバル変数に値
  を設定します。`--'なる引数以降は解釈を行ないません。該当する引数は
  [[m:Kernel::ARGV]] から取り除かれます。

  例:
//emlist{
    #! /usr/local/bin/ruby -s
    # prints "true" if invoked with `-xyz' switch.
    print "true\n" if $xyz
//}

: -S

  スクリプト名が`/'で始まっていない場合, 環境変数
  PATHの値を使ってスクリプトを探すことを指定しま
  す。 これは、#!をサポートしていないマシンで、
  #! による実行をエミュレートするために、以下の
  ようにして使うことができます:
//emlist{
    #!/bin/sh
    exec ruby -S -x $0 "$@"
    #! ruby
//}

  システムは最初の行により、スクリプトを/bin/sh
  に渡します。/bin/shは2行目を実行しRubyインタプリタを起動します。
  Rubyインタプリタは-x
  オプションにより`#!'で始まり, "ruby"という文字列を含む行までを
  読み飛ばします。

  システムによっては [[m:$0]]は必ずしもフルパスを含まな
  いので、`-S'を用いてRubyに必要に応じてスクリプトを探すように
  指示する必要があります。

: -T[level]

  不純度チェックを行います。level を指定すると安全度レベルをその
  レベルに設定します。level 省略時は 1 を指定したのと同じです。
  CGIプログラムなどでは-T1 程度を指定しておく方が良いでしょう。
  [[m:$SAFE]] に指定したレベルがセットされます。

: -v
  冗長モード。起動時にバージョンの表示を行い, 組み込み変数
  [[m:$VERBOSE]]をtrueにセットします。この変数がtrueで
  ある時, いくつかのメソッドは実行時に冗長なメッセージを出力し
  ます。`-v'オプションが指定されて, それ以外の引数がない時には
  バージョンを表示した後, 実行を終了します(標準入力からのスク
  リプトを待たない).

: --verbose
  冗長モード。 組み込み変数 [[m:$VERBOSE]] をtrueにセットします。この変数がtrueで
  ある時, いくつかのメソッドは実行時に冗長なメッセージを出力します。

: --version

  Rubyのバージョンを表示します。

: -w

  バージョンの表示を行う事無く冗長モードになります。

#@since 1.8.0
: -W[level]

    冗長モードを三段階のレベルで指定します。それぞれ以下の通りです。
//emlist{
     * -W0: 警告を出力しない
     * -W1: 重要な警告のみ出力(デフォルト)
     * -W2 or -W: すべての警告を出力する
//}
    組み込み変数 [[m:$VERBOSE]] はそれぞれ nil, false, true
    に設定されます。
#@end

: -x[directory]

  メッセージ中のスクリプトを取り出して実行します。スクリプトを
  読み込む時に、`#!'で始まり, "ruby"という文字列を含む行までを
  読み飛ばします。スクリプトの終りはEOF(ファイル
  の終り), ^D(コントロールD), ^Z(コ
  ントロールZ)または予約語__END__で指定されます。

  ディレクトリ名を指定すると、スクリプト実行前に指定されたディ
  レクトリに移動します。

: -y
: --yydebug

  コンパイラデバッグモード。スクリプトを内部表現にコンパイルす
  る時の構文解析の過程を表示します。この表示は非常に冗長なので,
  コンパイラそのものをデバッグする人以外には必要ないと思います。

===[a:shebang] インタプリタ行の解釈

コマンドラインに指定したスクリプトが `#!' で始まるファイルで、そ
の行に `ruby' という文字列を含まない場合、OSに代わって
`#!' に続く文字列をコマンドラインとみなしてそのインタプリタを起
動します。このときコマンドラインで指定した引数はそのインタプリタに渡さ
れます。

例えば、以下のシェルスクリプトを ruby で実行すると sh を起動します。

  #!/bin/sh -vx
  echo "$@"

この行に `ruby' という文字列が含まれる場合は、その文字列よ
り左側は無視され、右側に `-'で始まる語があればオプションとして解
釈します。

ここで指定したオプションは、コマンドラインでの指定に追加されます。これ
はそのスクリプトで指定すべきオプションを埋め込むために使います。例えば
以下の行で始まるスクリプトはコマンドラインに -Ke オプションを指
定したのと同じ効果になります。

   #! ruby -Ke
