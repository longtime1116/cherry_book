proc = :split.to_proc
p proc #=> #<Proc:0x000000012a03b508(&:split) (lambda)>
p proc.call('a b c') # 一つ目の引数をレシーバに、split() を呼び出している
p 'a b c'.split

p ['a b c', 'd e f', 'g h i'].map { |e| e.split }
# :splitというシンボルを&でブロックにして渡して、その一つ目の引数として各要素が渡される。
# したがって、各引数をレシーバに split メソッドが呼び出される。
p ['a b c', 'd e f', 'g h i'].map(&:split)
