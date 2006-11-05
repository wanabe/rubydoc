= class MatchData < Object

正規表現のマッチに関する情報を扱うためのクラス。
このクラスのインスタンスは、
* [[m:Regexp#last_match]]
* [[m:Regexp#match]], [[m:String#match]]
* [[m:$~]]
などにより得られます。

== Instance Methods

--- [](n)

n 番目の部分文字列を返します。0 はマッチ全体を意味します。
n の値が負の時には末尾からのインデックスと見倣します(末尾の
要素が -1 番目)。n 番目の要素が存在しない時には nil を
返します。

  /(foo)(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.to_a       # => ["foobar", "foo", "bar", nil]
  p $~[0]         # => "foobar"
  p $~[1]         # => "foo"
  p $~[2]         # => "bar"
  p $~[3]         # => nil        (マッチしていない)
  p $~[4]         # => nil        (範囲外)
  p $~[-2]        # => "bar"

--- [](start..end)

[[m:Array#[](start..end)]] と同じです。

/(foo)(bar)/ =~ "foobarbaz"
  p $~[0..2]      # => ["foobar", "foo", "bar"]

--- [](start, length)

[[m:Array#[](start, length)]] と同じです。

  /(foo)(bar)/ =~ "foobarbaz"
  p $~[0, 3]      # => ["foobar", "foo", "bar"]

--- begin(n)

n 番目の部分文字列先頭のオフセットを返します。0 はマッチ全体
を意味します。n が範囲外の場合は例外 [[c:IndexError]] が発生
します。n 番目の部分文字列がマッチしていなければ nil
を返します。

  /(foo)(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.begin(0)   # => 0
  p $~.begin(1)   # => 0
  p $~.begin(2)   # => 3
  p $~.begin(3)   # => nil
  p $~.begin(-1)  # => `begin': index -1 out of matches (IndexError)

--- end(n)

n 番目の部分文字列終端のオフセットを返します。0 はマッチ全体
を意味します。n が範囲外の場合は例外 [[c:IndexError]] が発生
します。n 番目の部分文字列がマッチしていなければ nil
を返します。

  /(foo)(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.end(0)   # => 6
  p $~.end(1)   # => 3
  p $~.end(2)   # => 6
  p $~.end(3)   # => nil
  p $~.end(-1)  # => `end': index -1 out of matches (IndexError)

--- captures

[[m:$1]], [[m:$2]], ... を格納した配列を
返します。[[m:MatchData#to_a]] と異なり [[m:$&]] を要
素に含みません。グループにマッチした部分文字列がなければ対応する要
素は nil になります。

  /(foo)(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.to_a       # => ["foobar", "foo", "bar", nil]
  p $~.captures       # => ["foo", "bar", nil]

--- length
--- size

部分文字列の数を返します(self.to_a.size と同じです)。

  /(foo)(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.size       # => 4

--- offset(n)

n 番目の部分文字列のオフセットの配列 [start, end] を返
します。

  [ self.begin(n), self.end(n) ]

と同じです。n番目の部分文字列がマッチしていなければ
[nil, nil] を返します。

--- post_match

マッチした部分より後ろの文字列を返します([[m:$']]と同じ)。

  /(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.post_match # => "baz"

--- pre_match

マッチした部分より前の文字列を返します([[m:$`]]と同じ)。

  /(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.pre_match  # => "foo"

#@since 1.8.0
--- select { ... }

self.to_a.[[m:Enumerable#select]] { ... } と同じです。
#@end

--- string

マッチ対象になった文字列の複製を返します。返す文字列はフリーズ
([[m:Object#freeze]])されています。

--- to_a

[[m:$&]], [[m:$1]], [[m:$2]],... を格納した配列を返します。

  /(foo)(bar)(BAZ)?/ =~ "foobarbaz"
  p $~.to_a       # => ["foobar", "foo", "bar", nil]

[[m:MatchData#captures]] も参照してください。

--- to_s

マッチした文字列全体を返します。

  /bar/ =~ "foobarbaz"
  p $~            # => #<MatchData:0x401b1be4>
  p $~.to_s       # => "bar"

#@since 1.8.0
--- values_at(index1, index2, ...)

正規表現中の indexN 番目の括弧にマッチした部分文字列の配列を
返します。0 番目は [[m:$&]] のようにマッチした文字列全
体を表します。

  m = /(foo)(bar)(baz)/.match("foobarbaz")
  p m.values_at(0,1,2,3,4)   # same as m.to_a.values_at(...)
  p m.values_at(-1,-2,-3)

  => ["foobarbaz", "foo", "bar", "baz", nil]
     ["baz", "bar", "foo"]
#@end
