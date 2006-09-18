#@if (version >= "1.8.0")
= class Generator < Object

include Enumerable

内部イテレータを外部イテレータに変えるためのクラスです。
実装に callcc を使っているので遅いです。

* [[c:SyncEnumerator]]

例:

  require 'generator'
  
  # Generator from an Enumerable object
  g = Generator.new(['A', 'B', 'C', 'Z'])
  
  while g.next?
    puts g.next
  end
  
  # Generator from a block
  g = Generator.new { |g|
    for i in 'A'..'C'
      g.yield i
    end
  
    g.yield 'Z'
  }
  
  # The same result as above
  while g.next?
    puts g.next
  end

== Class Methods

--- new(enum = nil)
--- new(enum = nil) {|g|  ... }

[[c:Enumerable]] オブジェクトかブロックから Generator オブジェクトを生成します。
enum には [[c:Enumerable]] をインクルードしたオブジェクトを与えます。
enum とブロックを同時に与えた場合は、ブロックは無視されます。

ブロックは self を引数として呼ばれます。

== Instance Methods

--- current

現在の位置にある要素を返します。next と違い位置は移動しません。

例:

  g = Generator.new(['A', 'B', 'C', 'Z'])
  p g.current # => 'A'
  p g.current # => 'A'

--- each {|e| ... }

ジェネレータの要素を引数としてブロックを評価します。self を返します。

--- end?

次の要素がなく、ジェネレータが終わりに達しているなら真を返します。

--- index
--- pos

現在の位置を返します。

例:

  g = Generator.new(['A', 'B', 'C', 'Z'])
  p g.pos     # => 0
  p g.next    # => 'A'
  p g.pos     # => 1

--- next

現在の位置にある要素を返し、位置を1つ増やします。次の要素がなければ、
例外 EOFError を投げます。

例:

  g = Generator.new() do |g|
        ['A', 'B', 'C', 'Z'].each{|s|
          g.yield s
        }
      end
  p g.next # => 'A'
  p g.next # => 'B'

--- next?

次の要素が存在するなら真を返します。

--- rewind

ジェネレータを最初に巻き戻します。self を返します。

例:

  g = Generator.new() do |g|
        ['A', 'B', 'C', 'Z'].each{|s|
          g.yield s
        }
      end
  p g.next # => 'A'
  p g.next # => 'B'
  g.rewind
  p g.next # => 'A'

--- yield(val)

val をジェネレータに渡します。
Generator.new() {|g|  ... } のブロックの中でしか呼ぶことができません。
ジェネレータに渡された val は next などで取り出すことができます。

例:

  g = Generator.new() do |g|
        n = 0
        loop do
          g.yield n
          n += 1
        end
      end
  p g.next # => 0
  p g.next # => 1
  p g.next # => 2
  g.rewind
  p g.next # => 0

= class SyncEnumerator < Object

include Enumerable

複数の [[c:Enumerable]] オブジェクトを並行して yield するためのクラスです。

例:

  require 'generator'
  
  s = SyncEnumerator.new([1,2,3], ['a', 'b', 'c'])
  
  # Yields [1, 'a'], [2, 'b'], and [3,'c']
  s.each { |row| puts row.join(', ') }

== Class Methods

--- new(*enums)

SyncEnumerator オブジェクトを生成します。
複数の [[c:Enumerable]] オブジェクトを与えます。
Enumerable オブジェクトのサイズは異なっていても構いません。

== Instance Methods

--- each {|row| ... }

与えられた Enumerable オブジェクトのそれぞれの要素の配列を引数として
ブロックを評価します。self を返します。

要素がある Enumerable オブジェクトがひとつでもあれば、評価を続けます。
要素のなくなった Enumerable オブジェクトの代わりに nil を配列の要素とします。
全ての Enumerable オブジェクトの要素がなくなるとそこで、ブロックの評価を止めます。

例:

  s = SyncEnumerator.new([1, 2, 3], ['a', 'b'], ['X'])
  s.each{|arry| p arry}
  
  # => 結果
  [1, "a", "X"]
  [2, "b", nil]
  [3, nil, nil]

--- end?(i = nil)

SyncEnumerator が終わりに達している場合は真を返します。
i を与えた場合は、i 番目の Enumerable オブジェクトが終わりに
達している場合、真を返します。

--- length
--- size

与えられた Enumerable オブジェクトの数を返します。
#@end
