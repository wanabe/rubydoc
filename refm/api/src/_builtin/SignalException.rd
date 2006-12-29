= class SignalException < Exception

捕捉していないシグナルを受け取ったときに発生します。

実際に発生したシグナル名は、
[[m:SignalException#message]] から
「"SIG" + シグナル名」という形で得られます。

デフォルトの状態では、
以下のシグナルが SignalException を発生させます。

  * SIGALRM
  * SIGHUP
  * SIGINT (※ただし以下参照)
  * SIGQUIT
  * SIGUSR1
  * SIGUSR2

なお、SIGINT シグナルを受けた場合は SignalException の下位クラスである
[[c:Interrupt]] が発生します。
