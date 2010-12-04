OpenSSL([[url:http://www.openssl.org]])
を Ruby から扱うためのライブラリです。

このドキュメントでは SSL/TLS の一般的事項については
解説をしません。利用者は、SSL/TLSの各概念、例えば
以下の事項について理解している必要があります。
  * 暗号と認証に関する一般的概念
  * セキュリティに対する攻撃法
  * 公開鍵暗号と秘密鍵暗号
  * 署名の役割、署名の方法とその検証
  * 公開鍵基盤(PKI, Public Key Infrastructure)
  * X.509 証明書
  * 暗号と乱数について
#@# 要追加
SSLのようなセキュリティ技術は、その利用者に無条件に安全性を
提供することはできません。利用者、とくにSSLでソフトウェアを実装する
プログラマは、 SSL/TLS の技術、それが基づいている概念を理解し、
ライブラリを適切に利用する必要があります。

=== Components

OpenSSL は SSL/TLS による通信を提供する高水準なインターフェースと
より基本的な機能を提供する低水準なインターフェースがあります。
基本的には高水準なインターフェースのみを利用すべきです。

低水準なインターフェースを利用する場合には、利用したい機能に
関する十分な知識と注意深さが必要となります。
#@# どれが高水準インターフェースでどれが低水準かの
#@# リストが必要
  * [[c:OpenSSL]]
  * OpenSSL::Cipher
    * [[c:OpenSSL::Cipher::Cipher]]
    * 以下のクラスは Cipher を継承している。使い方は Cipher を参照。
    * OpenSSL::Cipher::AES
    * OpenSSL::Cipher::BF
    * OpenSSL::Cipher::CAST5
    * OpenSSL::Cipher::DES
    * OpenSSL::Cipher::IDEA
    * OpenSSL::Cipher::RC2
    * OpenSSL::Cipher::RC4
    * OpenSSL::Cipher::RC5
  * OpenSSL::Digest
    * [[c:OpenSSL::Digest::Digest]]
    * 以下のクラスは Digest を継承している。使い方は Digest を参照。
    * OpenSSL::Digest::DSS1
    * OpenSSL::Digest::MD2
    * OpenSSL::Digest::MD4
    * OpenSSL::Digest::MD5
    * OpenSSL::Digest::MDC2
    * OpenSSL::Digest::RIPEMD160
    * OpenSSL::Digest::SHA
    * OpenSSL::Digest::SHA1
    * OpenSSL::Digest::SHA224
    * OpenSSL::Digest::SHA256
    * OpenSSL::Digest::SHA384
    * OpenSSL::Digest::SHA512
  * OpenSSL::X509
    * [[c:OpenSSL::X509::Certificate]]
    * [[c:OpenSSL::X509::CRL]]
    * [[c:OpenSSL::X509::Extension]]
    * [[c:OpenSSL::X509::Name]]
    * [[c:OpenSSL::X509::Store]]
    * [[c:OpenSSL::X509::StoreContext]]
  * [[c:OpenSSL::SSL]]
    * [[c:OpenSSL::SSL::SSLContext]]
    * [[c:OpenSSL::SSL::SSLServer]]
    * [[c:OpenSSL::SSL::SSLSocket]]
  * [[c:OpenSSL::PKCS7]]
    * [[c:OpenSSL::PKCS7::PKCS7]]
  * OpenSSL::PKey
    * [[c:OpenSSL::PKey::PKey]]
    * [[c:OpenSSL::PKey::RSA]]
    * [[c:OpenSSL::PKey::DSA]]
    * [[c:OpenSSL::PKey::DH]]
  * OpenSSL::Config
  * OpenSSL::Engine
  * [[c:OpenSSL::ASN1]]
    * [[c:OpenSSL::ASN1::ASN1Data]]
      * [[c:OpenSSL::ASN1::Primitive]]
        * OpenSSL::ASN1::Boolean
        * OpenSSL::ASN1::Integer
        * OpenSSL::ASN1::Enumerated
        * OpenSSL::ASN1::BitString
        * OpenSSL::ASN1::OctetString
        * OpenSSL::ASN1::UTF8String
        * OpenSSL::ASN1::NumericString
        * OpenSSL::ASN1::PrintableString
        * OpenSSL::ASN1::T61String
        * OpenSSL::ASN1::VideotexString
        * OpenSSL::ASN1::IA5String
        * OpenSSL::ASN1::GraphicString
        * OpenSSL::ASN1::ISO64String
        * OpenSSL::ASN1::GeneralString
        * OpenSSL::ASN1::UniversalString
        * OpenSSL::ASN1::BMPString
        * OpenSSL::ASN1::Null
        * [[c:OpenSSL::ASN1::ObjectId]]
        * OpenSSL::ASN1::UTCTime
        * OpenSSL::ASN1::GeneralizedTime
      * [[c:OpenSSL::ASN1::Constructive]]
        * OpenSSL::ASN1::Sequence
        * OpenSSL::ASN1::Set

=== 例

自己署名証明書の作成の例です。自分の秘密鍵で自分の公開鍵に署名しているから自己署名です。

  require 'openssl'
  
  key = OpenSSL::PKey::RSA.new(1024)
  digest = OpenSSL::Digest::SHA1.new()
  
  issu = sub = OpenSSL::X509::Name.new()
  sub.add_entry('C', 'JP')
  sub.add_entry('ST', 'Shimane')
  sub.add_entry('CN', 'Ruby Taro')
  
  cer = OpenSSL::X509::Certificate.new()
  cer.not_before = Time.at(0)
  cer.not_after = Time.at(0)
  cer.public_key = key  # <= 署名する対象となる公開鍵
  cer.serial = 1
  cer.issuer = issu
  cer.subject = sub
  
  cer.sign(key, digest) # <= 署名するのに使う秘密鍵とハッシュ関数
  print cer.to_text

===[a:references] 参考文献
  * [[RFC:5246]]
  * Eric Rescorla. SSL and TLS : Designing and Building Secure Systems.
    邦訳, Eric Rescorla 著 齋藤孝道・鬼頭利之・古森貞監訳.
    マスタリングTCP/IP SSL/TLS編
  * John Viega, Matt Messier and Pravir Chandra. Network Security with OpenSSL:
    Cryptography for Secure Communications. 
    邦訳, John Viega, Matt Messier and Pravir Chandra 著 齋藤孝道監訳.
    OpenSSL -暗号・PKI・SSL/TLSライブラリの詳細-

= module OpenSSL

このページは定数と例外のみを説明しています。

== Constants

--- VERSION
#@todo

Ruby/OpenSSL のバージョンです。

--- OPENSSL_VERSION
#@todo

システムにインストールされている OpenSSL 本体のバージョンを表した文字列です。

--- OPENSSL_VERSION_NUMBER
#@todo

システムにインストールされている OpenSSL 本体のバージョンを表した数です。
[[url:http://www.openssl.org/docs/crypto/OPENSSL_VERSION_NUMBER.html]]
も参照してください。

= module OpenSSL::SSL::SocketForwarder
= class OpenSSL::OpenSSLError < StandardError

#@include(openssl/ASN1)
#@include(openssl/ASN1__ASN1Data)
#@include(openssl/ASN1__Constructive)
#@include(openssl/ASN1__ObjectId)
#@include(openssl/ASN1__Primitive)
#@include(openssl/BN)
#@include(openssl/Cipher)
#@include(openssl/Config)
#@include(openssl/Digest)
#@include(openssl/Digest__Digest)
#@include(openssl/Engine) 
#@include(openssl/HMAC)
#@include(openssl/Netscape__SPKI)
#@include(openssl/OCSP)
#@include(openssl/PKCS5)
#@include(openssl/PKCS12)
#@include(openssl/PKCS7)
#@include(openssl/PKCS7__PKCS7)
#@include(openssl/PKey__DH)
#@include(openssl/PKey__DSA)
#@include(openssl/PKey__PKey)
#@include(openssl/PKey__RSA)
#@include(openssl/Random)
#@include(openssl/SSL)
#@include(openssl/SSL__SSLContext)
#@include(openssl/SSL__SSLServer)
#@include(openssl/SSL__SSLSocket)
#@include(openssl/SSL__Session)
#@include(openssl/X509)
#@include(openssl/X509__Attribute)
#@include(openssl/X509__CRL)
#@include(openssl/X509__Certificate)
#@include(openssl/X509__Extension)
#@include(openssl/X509__ExtensionFactory)
#@include(openssl/X509__Name)
#@include(openssl/X509__Request)
#@include(openssl/X509__Revoked)
#@include(openssl/X509__Store)
#@include(openssl/X509__StoreContext)
