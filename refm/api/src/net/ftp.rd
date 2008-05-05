= class Net::FTP < Object

== Class Methods

--- new(host = nil, user = nil, passwd = nil, acct = nil)
#@todo

新しいインスタンスを生成します。

host が指定された場合、生成されたインスタンスに対して connect を呼び出し、
さらに user が指定された場合は login を呼び出します。

--- open(host, user = nil, passwd = nil, acct = nil)
#@todo

host を省略できない以外は new と同じです。

== Instance Methods

--- connect(host, port = FTP_PORT)
#@todo

host で指定されたホストに接続します。

--- sendcmd(cmd)
#@todo

cmd で指定されたコマンドをサーバーに送り、 サーバーからの応答を返します。

応答コードが 4xx の場合は例外 FTPTermError が、5xx の場合は
例外 FTPPermError が発生します。
応答コードの最初の数字が 1 から 5 のどれでもない場合は
例外 FTPProtoError が発生します。

--- voidcmd(cmd)
#@todo

sendcmdと同様にサーバーにコマンドを送りますが、nil を返す点と、
応答コードが 2xx 以外の場合、例外 FTPReplyError が発生する点が異なります。

--- login(user = "anonymous", passwd = nil, acct = nil)
#@todo

ログイン処理を行ないます。

user が省略された場合、anonymous でログインします。

--- retrbinary(cmd, blocksize, rest_offset = nil, callback = Proc.new)
#@todo

サーバーに cmd で指定されたコマンドを送り、バイナリデータを 取り寄せます。
blocksize で指定されたバイト単位でデータを
読み込み、callback で指定された Proc オブジェクトまたは
ブロックに読み込んだデータを渡します。

--- retrlines(cmd, callback = nil)
#@todo

サーバーに cmd で指定されたコマンドを送り、テキストデータを
取り寄せます。一行ずつテキストを読み込み、callback で指定された
Proc オブジェクトまたはブロックに読み込んだ行を渡します。

callback もブロックも省略された場合は読み込んだ行を print します。

--- storbinary(cmd, file, blocksize, rest_offset = nil, callback = nil)
#@todo

サーバーに cmd で指定されたコマンドを送り、バイナリデータを
送ります。blocksize で指定されたバイト単位で
file からデータを読み込み、サーバーに送ります。

callback やブロックが指定された場合はデータが
送信されるごとにそれを呼び出します。

--- storlines(cmd, file, callback = nil)
#@todo

サーバーに cmd で指定されたコマンドを送り、テキストデータを
送ります。一行ずつで file からテキストを読み込み、
サーバーに送ります。

callback やブロックが指定された場合はデータが
送信されるごとにそれを呼び出します。


--- getbinaryfile(remotefile, localfile, blocksize = DEFAULT_BLOCKSIZE, callback = nil)
#@todo

サーバー上のバイナリファイルを get します。

callback やブロックが指定された場合は
データが送信されるごとにそれを呼び出します。

#@if (version >= "1.7.0")
((<ruby 1.7 feature>)): localfile は省略可能になりました。
File.basename(remotefile) が省略時の値になります。
#@end

--- gettextfile(remotefile, localfile, callback = nil)
#@todo

サーバー上のテキストファイルを get します。

callback やブロックが指定された場合は
データが送信されるごとにそれを呼び出します。


--- putbinaryfile(localfile, remotefile, blocksize = DEFAULT_BLOCKSIZE, callback = nil)
#@todo

サーバーにバイナリファイルを put します。

callback やブロックが指定された場合は
データが送信されるごとにそれを呼び出します。

--- puttextfile(localfile, remotefile, callback = nil)
#@todo

サーバーにテキストファイルを put します。

callback やブロックが指定された場合は
データが送信されるごとにそれを呼び出します。

--- acct(account)
#@todo

サーバーにアカウント情報を送ります。

--- nlst(dir = nil)
#@todo

dir で指定したディレクトリのファイルの配列を返します。
dir を省略した場合カレントディレクトリが指定されます。

--- list(*args, &block)
--- ls(*args, &block)
--- dir(*args, &block)
#@todo

LIST コマンドを送信し、結果を返します。

ブロックとともに呼び出された場合は各行に対してブロックを
実行します。

--- rename(fromname, toname)
#@todo

ファイルをリネームします。

--- delete(filename)
#@todo

ファイルを削除します。

--- chdir(dirname)
#@todo

カレントディレクトリを dirname に変更します。

--- size(filename)
#@todo

ファイルのサイズを返します。

--- mtime(filename, local = false)
#@todo

filename の更新時刻を Time オブジェクトで返します。
local は、更新時刻をローカル時刻とみなすかどうかの
フラグです。(省略したときのデフォルト値は false です)。

--- mkdir(dirname)
#@todo

ディレクトリを作成します。

--- rmdir(dirname)
#@todo

ディレクトリを削除します。

--- pwd
--- getdir
#@todo

カレントディレクトリを返します。

--- system
#@todo

サーバーの OS のタイプを返します。

--- abort
#@todo

データの転送を中止します。

--- status
#@todo

現在の状態を返します。

--- mdtm(filename)
#@todo

MDTM コマンドを送信し、結果を返します。

--- passive
#@todo

passive モードの状態を真偽値で返します。

--- passive=(bool)
#@todo

passive モードの状態を設定します。新しい状態を返します。

--- return_code
#@todo

現在のセッションの改行コードを返します。

--- return_code=(string)
#@todo

現在のセッションの改行コードを設定します。新しい改行コードを返します。

--- lastresp
--- last_response_code
#@todo

サーバからの最後の応答を返します(string)。

(例): ファイルが正常に転送された時は、"226"。数字の意味は [[unknown:RFC:959]] 参照。

--- last_response
#@todo



--- welcome
#@todo

サーバのウェルカムメッセージを返します。

--- help(arg = nil)
#@todo

help 情報を返します。

--- quit
#@todo

ログアウトします。

--- close
#@todo

接続を切ります。

--- closed?
#@todo

接続が切れている時に真を返します。

--- resume
#@todo

現在のリジュームモードを返します。リジュームモードとは途中で中断された
データ転送を再開するためのものです。デフォルトの値は false です。
この値が真であるとき、いくつかの転送メソッドは事前に REST コマンドを
発行することによって転送元と転送元のオフセットをセットします。
これにより、すでに転送されたデータは転送されなくなります。
具体的には以下のメソッドが影響を受けます。

getbinaryfile はローカルファイルのサイズをオフセットとします。

putbinaryfile はリモートファイルのサイズをオフセットとします。

--- resume=(boolean)
#@todo

resume の値を設定します。

--- debug_mode
#@todo

デバッグモードであるか否かを表す真偽値です。
値が真であるとき、送受信の記録と ABOR, STAT の結果が標準出力に
随時表示されます。

--- debug_mode=(boolean)
#@todo

デバッグモードの値を設定します。

--- set_socket(sock, get_greeting = true)
#@todo

通信先を TCPSocket オブジェクト sock に設定します。
省略可能な第2引数 get_greeting に偽が与えられると、
set_socket は通信先を設定するだけで sock に対する操作を
何も行ないません。このとき値として nil を返します。
get_greeting が真(デフォルト)ならば、通信先を sock に
設定したあと、通常FTPサーバが接続時に送ってくるメッセージを読み込み、
このメッセージを値として返します。

--- get(remotefile, localfile = File.basename(remotefile), blocksize = DEFAULT_BLOCKSIZE)
--- get(remotefile, localfile = File.basename(remotefile), blocksize = DEFAULT_BLOCKSIZE) { |data| .... }
#@todo

binary の値に従ってリモートファイルを取得し、
localfile をファイル名とするローカルファイルに保存します。
remotefile が省略されると localfile のベースネームが
仮定されます。
block_size が省略されると DEFAULT_BLOCLSIZE が仮定されます。
この値は binary が真であるときのみ有効です。

ブロックが与えられた場合はそのデータをファイルに書きこむごとに、
書き込んだデータを data に代入してブロックが評価されます。
ブロックを最後に評価したときに得られた値が get の値になります。

ブロックが与えられなかった場合の get の値は nil です。

--- put(localfile, remotefile = File.basename(localfile), blocksize = DEFAULT_BLOCKSIZE)
--- put(localfile, remotefile = File.basename(localfile), blocksize = DEFAULT_BLOCKSIZE) { |data| .... }
#@todo

binary の値に従ってローカルファイル localfile を送信し、
remotefile をファイル名とするリモートファイルに保存します。
remotefile が省略されると localfile のベースネームが
仮定されます。
block_size が省略されると DEFAULT_BLOCLSIZE が仮定されます。
この値は binary が真であるときのみ有効です。

ブロックが与えられた場合はそのデータを送信するごとに、
送信したデータを data に代入してブロックが評価されます。
ブロックを最後に評価したときに得られた値が put の値になります。

ブロックが与えられなかった場合の put の値は nil です。

--- binary
#@todo

表現タイプがバイナリ(IMAGE)であるか否かを表す真偽値です。
get と put が影響を受けます。
デフォルトの値は true です。
偽の場合、ASCII が仮定されます。
EBCDIC や LOCAL など他の表現タイプはサポートされていません。

--- binary=(bool)
#@todo

表現タイプがバイナリ(IMAGE)であるか否かを設定します。


--- noop
#@todo

--- site(arg)
#@todo

== Constants

--- CRLF
#@todo

--- DEFAULT_BLOCKSIZE
#@todo

--- FTP_PORT
#@todo

--- MDTM_REGEXP
#@todo


= class Net::FTPError < StandardError

= class Net::FTPReplyError < Net::FTPError

= class Net::FTPTempError < Net::FTPError

= class Net::FTPPermError < Net::FTPError

= class Net::FTPProtoError < Net::FTPError

