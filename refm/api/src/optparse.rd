= class OptionParser < Object

コマンドラインのオプションを取り扱うためのクラスです。
オプションが指定された時に呼ばれるブロックを
[[m:OptionParser#on]] メソッドで登録していきます。
つまり、OptionParser を使う場合、基本的には

 * (1) OptionParser オブジェクト opt を生成する。
 * (2) オプションを取り扱うブロックを opt に登録する。
 * (3) opt.parse(ARGV) でコマンドラインを実際に parse する。

というような流れになります。

  require "optparse"
  ProgramConfig = Hash.new
  opts = OptionParser.new
  opts.on("-a"){|v| ProgramConfig[:a] = true } # -a オプションがコマンドラインで指定されていた場合の動作。
  opts.parse!(ARGV)                            # 実際にコマンドラインの parse を行う。

=== デフォルトで利用可能なオプション

以下はデフォルトで利用可能なオプションです。オプションサマリには
出てきません。

: --help

オプションサマリを表示します。

: --version

定数 ::Version が定義されていたら、それを表示します。

=== 例

The following example is a complete Ruby program.  You can run it and see the
effect of specifying various options.

  require 'optparse'
  require 'optparse/time'
  require 'ostruct'
  require 'pp'

  class OptparseExample

    CODES = %w[iso-2022-jp shift_jis euc-jp utf8 binary]
    CODE_ALIASES = {"jis" => "iso-2022-jp", "sjis" => "shift_jis"}

    #
    # Return a structure describing the options.
    #
    def self.parse(args)
      # The options specified on the command line will be collected in *options*.
      # We set default values here.
      options = OpenStruct.new
      options.library = []
      options.inplace = false
      options.encoding = "utf8"
      options.transfer_type = :auto
      options.verbose = false

      opts = OptionParser.new do |opts|
        opts.banner = "Usage: example.rb [options]"

        opts.separator ""
        opts.separator "Specific options:"

        # Mandatory argument.
        opts.on("-r", "--require LIBRARY",
                "Require the LIBRARY before executing your script") do |lib|
          options.library << lib
        end

        # Optional argument; multi-line description.
        opts.on("-i", "--inplace [EXTENSION]",
                "Edit ARGV files in place",
                "  (make backup if EXTENSION supplied)") do |ext|
          options.inplace = true
          options.extension = ext || ''
          options.extension.sub!(/\A\.?(?=.)/, ".")  # Ensure extension begins with dot.
        end

        # Cast 'delay' argument to a Float.
        opts.on("--delay N", Float, "Delay N seconds before executing") do |n|
          options.delay = n
        end

        # Cast 'time' argument to a Time object.
        opts.on("-t", "--time [TIME]", Time, "Begin execution at given time") do |time|
          options.time = time
        end

        # Cast to octal integer.
        opts.on("-F", "--irs [OCTAL]", OptionParser::OctalInteger,
                "Specify record separator (default \\0)") do |rs|
          options.record_separator = rs
        end

        # List of arguments.
        opts.on("--list x,y,z", Array, "Example 'list' of arguments") do |list|
          options.list = list
        end

        # Keyword completion.  We are specifying a specific set of arguments (CODES
        # and CODE_ALIASES - notice the latter is a Hash), and the user may provide
        # the shortest unambiguous text.
        code_list = (CODE_ALIASES.keys + CODES).join(',')
        opts.on("--code CODE", CODES, CODE_ALIASES, "Select encoding",
                "  (#{code_list})") do |encoding|
          options.encoding = encoding
        end

        # Optional argument with keyword completion.
        opts.on("--type [TYPE]", [:text, :binary, :auto], "Select transfer type (text, binary, auto)") do |t|
          options.transfer_type = t
        end

        # Boolean switch.
        opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
          options.verbose = v
        end

        opts.separator ""
        opts.separator "Common options:"

        # No argument, shows at tail.  This will print an options summary.
        # Try it and see!
        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end

        # Another typical switch to print the version.
        opts.on_tail("--version", "Show version") do
          puts OptionParser::Version.join('.')
          exit
        end
      end

      opts.parse!(args)
      options
    end  # parse()

  end  # class OptparseExample

  options = OptparseExample.parse(ARGV)
  pp options

Note: if you get errors or strange results from any of the above code, make
sure you have the latest version installed.  Some changes have been made since
Ruby 1.8.0 was released.


== Class Methods

--- new(banner=nil, width=32, indent = ' ' * 4)
--- new(banner=nil, width=32, indent = ' ' * 4) {|opt| ...}

OptionParser オブジェクトを生成します。
banner にはヘルプ(サマリ)の最初の部分に表示されるアプリケーションの説明
などを文字列として与えます。
width にはサマリの幅を数値で与えます。indent にはサマリのインデント
を文字列として与えます。

ブロックが与えられた場合、生成した OptionParser オブジェクトを引数としてブロックを評
価します。つまり、以下のような書き方が可能です。

  require 'optparse'
  OptionParser.new do |opt|

    opt.on('-a') {|v| p v }
    opt.on('-b') {|v| p v }

    opt.parse!(ARGV)
  end

--- accept(klass, pat = /.*/){|str| ...}

オプションの引数を文字列から Ruby のオブジェクトに変換するための
ブロックを登録します。すべての OptionParser インスタンスに共通です。
klass にはクラスオブジェクトを与えます。pat には match メソッドを持ったオブジェクト
(Regexp オブジェクトなど)を与えます。

ブロックには、文字列から klass のインスタンスを生成して返すものを指定します。

[[m:OptionParser#on]] で klass を指定した場合、
コマンドラインのオプションに与えられた引数はこの accept で登録したブロックで
klass のインスタンスに変換されてから、
OptionParser#on で登録したブロックに渡されます。

  require "optparse"
  OptionParser.accept(Time) do |s,|
    begin
      Time.parse(s) if s
    rescue
      raise OptionParser::InvalidArgument, s
    end
  end

  opts = OptionParser.new

  opts.on("-t", "--time [TIME]", Time) do |time|
    p time.class #=> Time
  end

  opts.parse!(ARGV)

いくつかのクラスに対しては変換用のブロックがデフォルトで登録されて
います。[[m:OptionParser#デフォルトで利用可能な引数クラス]]を参照
して下さい。

--- reject(klass)

#accept で登録したブロックを削除します。

#@since 1.8.5
--- getopts
see [[m:OptionParser#getopts]].
#@end

== Instance Methods

--- accept(klass, pat = /.*/){|str| ...}

OptionParser.accept と同様ですが、
登録したブロックはレシーバーに限定されます。

--- reject(klass)

accept で登録したブロックを削除します。

--- banner
--- banner=(heading)

サマリの最初の部分を設定します。

--- summary_width
--- summary_width=(width)

サマリを表示するときの幅を数値で設定します。

--- summary_indent
--- summary_indent=(indent)

サマリを表示する時のインデントを文字列で設定します。

--- program_name
--- program_name=(name)
プログラムの名前を文字列で設定します。デフォルトは $0 が使わ
れます。

--- version
--- version=(ver)
プログラムのバージョンを設定します。

--- release
--- release=(rel)
Release code.

--- ver
program_name、version と release から生成したバー
ジョンを表す文字列を返します。

--- summarize(to = [], width = @summary_width, max = width - 1, indent= @summary_indent)
--- summarize(to = [], width = @summary_width, max = width - 1, indent= @summary_indent) {|line| ... }

サマリを to へと加えていきます。
to には << メソッドが定義されたオブジェクトを与えます。
デフォルトは [] です。
width にはサマリの幅を数値で与えます。デフォルトは self.summary_width です。
サマリの最大幅を数値で与えます。デフォルトは self.summary_width - 1です。
indent にはサマリのインデントを文字列で与えます。デフォルトは
self.summary_indent です。

ブロックが与えられた場合、サマリの各行を引数としてブロックを評価します。
この場合、ブロックの中で明示的に to へと加えていかない限り、
to にサマリが加えられることはありません。

--- help
--- to_s

サマリの文字列を返します。

--- to_a

サマリの各行を要素とした配列を返します。

--- separator(str)

サマリを表示する時に、オプションを区切るためのメソッドです。オプションにいくつかの種類がある場合に、サマリがわかりやすくなります。
区切りとして引数 str が表示されます。サマリには on メソッドを呼んだ順にオプションが表示されるので、
区切りを挿入したいところで separator を呼びます。[[unknown:例|optparse/Example]]を参照してください。

--- on(short [, klass [, pat [, desc]]]) {|v| ...}
--- on(long  [, klass [, pat [, desc]]]) {|v| ...}
--- on(short, long [, klass [, pat [, desc]]]) {|v| ...}

オプションを取り扱うためのブロックを登録します。

short にはショートオプションを表す文字列を与えます。
そのオプションが引数をとらない場合は、
  on("-x"){|boolean| ...}
となります。コマンドラインにオプションが存在した場合 true を引数と
してブロックを評価します。
ショートオプションが引数をとる場合は、
  on("-x MANDATORY"){|val| ...}
となります。"MANDATORY" の部分は任意の文字列で構いません。
オプションの引数が必須でない場合は [] をつけて、
  on("-x [OPTIONAL]"){|val| ...}
となります。

long にはロングオプションを表す文字列を与えます。ショートオプショ
ンの時と同様に、
  on("--long"){|boolean| ...}
  on("--long MANDATORY"){|val| ...}
  on("--long [OPTIONAL]"){|val| ...}
と指定できます。

ショートオプションとロングオプションを同時に登録することもできます。
  opts.on("-r", "--require LIBRARY"){|lib| ...}
これは以下と同値です。
  opts.on("-r LIBRARY"){|lib| ...}
  opts.on("--require LIBRARY"){|lib| ...}

klass にはクラスを与えます。
どのようなクラスを受け付けるかは、
以下の「デフォルトで利用可能な引数クラス」を参照して下さ
い。OptionParser.accept や OptionParser#accept によって、受け付け
るクラスを増やすことができます。登録されていないクラスが指定された
場合、例外 ArgumentError を投げます。

オプションの引数は accept で登録したブロックで klass のインスタンス
に変換されてから、ブロックに渡されます。

  opts.on("-w", "--width N", Integer){|w|
    p w.class #=> Integer
  }
  # ruby command --width=32

  opts.on("-o", "--overwrite VALUE", TrueClass){|boolean| ...}
  # ruby command --overwrite yes

klass には可能な引数を列挙した配列やハッシュを
与えることもできます。
  opts.on("--protocol VALUE", [:http, :ftp, :https]){|w|
    p w
  }
  # ruby command --protocol=http #=> :http

  opts.on("-c", "--charset VALUE", {"jis" => "iso-2022-jp", "sjis" => "shift_jis"}){|w|
    p w
  }
  # ruby command --charset=jis #=> "iso-2022-jp"

コマンドに与えられた引数が配列やハッシュに含まれない場合、
例外 OptionParser::InvalidArgument が parse 実行時に投げられます。

pat にはオプションの引数に許すパターンを表す正規表現で与えます。
コマンドに与えられた引数がパターンにマッチしない場合、
例外 OptionParser::InvalidArgument が parse 実行時に投げられます。
  opts.on("--username VALUE", /[a-zA-Z0-9_]+/){|name| ...}
  # ruby command --username=ruby_user
  # ruby command --username=ruby.user #=> Error

desc にはオプションの説明を文字列で与えます。
サマリに表示されます。

=== デフォルトで利用可能な引数クラス

: Object

any string, and no conversion. this is fall-back.

: String

any none-empty string, and no conversion.

: Integer

Ruby/C-like integer, octal for 0-7 sequence, binary for
0b, hexadecimal for 0x, and decimal for others; with
optional sign prefix. Converts to Integer.

: Float

Float number format, and converts to Float.

: Numeric

Generic numeric format, and converts to Integer for integer
format, Float for float format.

: OptionParser::DecimalInteger

Decimal integer format, to be converted to Integer.

: OptionParser::OctalInteger

Ruby/C like octal/hexadecimal/binary integer format, to be converted
to Integer.

: OptionParser::DecimalNumeric

Decimal integer/float number format, to be converted to
Integer for integer format, Float for float format.

: TrueClass

Boolean switch, which means whether it is present or not, whether it
is absent or not with prefix no-, or it takes an argument
yes/no/true/false/+/-.

: FalseClass

Similar to TrueClass, but defaulted to false.

: Array

List of strings separated by ","


--- on_head(short [, long [, klass [, pat [, desc]]]]) {...}
--- on_tail(short [, long [, klass [, pat [, desc]]]]) {...}

[[m:OptionParser#on]]と同様の働きをします。
on メソッドと違う点は、OptionParser オブジェクトが保持している
リストの最初かあるいは最後にブロックを登録する点です。

--version や --help の説明をサマリの最後に表示したい時に便利です。

  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end

  opts.on_tail("--version", "Show version") do
    puts OptionParser::Version.join('.')
    exit
  end

--- order(*argv)
--- order(*argv){|s| ...}
--- order!(argv = ARGV)
--- order!(argv = ARGV) {|s| ...}

与えられた argv を順番にパースします。
オプションではないコマンドの引数(下の例で言うと somefile)に出会うと、パースを中断します。
ブロックが与えられている場合は、パースを中断せずに
引数をブロックに渡してブロックを評価し、パースを継続します。argv を返します。

order! は与えられた argv を破壊的にパースします。
argv からオプションがすべて取り除かれます。

  $ cat opt.rb
  require 'optparse'
  opt = OptionParser.new

  opt.on('-a [VAL]') {|v| p :a }
  opt.on('-b') {|v| p :b }

  opt.order!(ARGV)
  p ARGV

  $ ruby opt2.rb -a foo somefile -b
  :a
  ["somefile", "-b"]

コマンドの引数 somefile よりも後ろにオプションを置くことができま
せん。-b もコマンドのオプションではない引数として扱われてしまいます。

--- permute(*argv)
--- permute!(argv = ARGV)

与えられた argv をパースします。
オプションではないコマンドの引数(下の例で言うと somefile)があってもパースを中断しません。
オプションでない引数の配列を返します。

permute! は与えられた argv を破壊的にパースします。
argv からオプションがすべて取り除かれます

  $ cat opt.rb
  require 'optparse'
  opt = OptionParser.new

  opt.on('-a [VAL]') {|v| p :a }
  opt.on('-b ') {|v| p :b }

  opt.permute!(ARGV)
  p ARGV

  $ ruby opt2.rb -a foo somefile -b
  :a
  :b
  ["somefile"]

order と違いコマンドの引数 somefile よりも後ろにオプションを置くことが
できます。

--- parse(*argv)
--- parse!(argv = ARGV)

与えられた argv をパースします。
permute と同様に振舞います。しかし、
環境変数に POSIXLY_CORRECT が設定されている場合は、
order と同様に振舞います。

parse! は permute! と同様に argv を破壊的にをパースします。
環境変数に POSIXLY_CORRECT が設定されている場合は、
order! と同様に振舞います。

--- load(filename)

file を読み込んで各行に対して parse を行ないます。

--- environment(env)

環境変数 env に対して
[[m:Shellwords.shellwords]] を呼
んで配列にしてから parse を行ないます。

--- add_banner(to)

--- match_nonswitch?(str)

--- switch_name

Main name of the switch.

#@since 1.8.3
--- default_argv
--- default_argv=
Strings to be parsed in default. ARGV is default.
#@end

#@since 1.8.5
--- getopts
Wrapper method for getopts.rb.

 params = ARGV.getopts("ab:", "foo", "bar:")
 # params[:a] = true   # -a
 # params[:b] = "1"    # -b1
 # params[:foo] = "1"  # --foo
 # params[:bar] = "x"  # --bar x

#@end

= class OptionParser::ParseError < StandardError

OptionParser の例外クラスの基底クラスです。

= class OptionParser::AmbiguousOption < OptionParser::ParseError

補完が曖昧にしかできないオプションがあった場合に投げられます。

= class OptionParser::NeedlessArgument < OptionParser::ParseError

引数を取らないはずのオプションに引数が与えられた場合に投げられます。

= class OptionParser::MissingArgument < OptionParser::ParseError

引数が必要なオプションに引数が与えられなかった場合に投げられます。

= class OptionParser::InvalidOption
< OptionParser::ParseError

定義されていないオプションが与えられた場合に投げられます。

= class OptionParser::InvalidArgument < OptionParser::ParseError

オプションの引数が指定されたパターンにマッチしない時に投げられます。

= class OptionParser::AmbiguousArgument < OptionParser::ParseError

オプションの引数が曖昧にしか補完できない場合に投げられます。


= module OptionParser::Arguable

Extends command line arguments array to parse itself.

== Instance Methods

--- options=()

Sets [[c:OptionParser]] object, when opt is false or
nil, methods [[m:OptionParser::Arguable#options]] and
[[m:OptionParser::Arguable#options=]] are undefined.  Thus, there
is no ways to access the [[c:OptionParser]] object via the
receiver object.

--- options

Actual [[c:OptionParser]] object, automatically created if not
yet.

If called as iterator, yields with the [[c:OptionParser]] object
and returns the result of the block. In this case, rescues any
[[c:OptionParser::ParseError]] exceptions in the block, just emits
error message to STDERR and returns nil.

:Parameters:
  : block
    Yielded with the [[c:OptionParser]] instance.

--- order!
--- permute!
--- parse!

Parses self destructively, and returns self just contains
rest arguments left without parsed.

#@since 1.8.5
--- getopts

Substitution of getopts is possible as follows. Also see
[[m:OptionParser#getopts]].

  def getopts(*args)
    ($OPT = ARGV.getopts(*args)).each do |opt, val|
      eval "$OPT_#{opt.gsub(/[^A-Za-z0-9_]/, '_')} = val"
    end
  rescue OptionParser::ParseError
  end

#@end

= redefine Kernel
== Constants
--- ARGV
optparse を require することにより、ARGV は 
[[c:OptionParser::Arguable]] を extend します。
