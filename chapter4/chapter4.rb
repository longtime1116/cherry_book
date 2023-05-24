range = 1..5
p range.include?(4.9)
p range.include?(5)
range = 1...5
p range.include?(4.9)
p range.include?(5)
p range.to_a

a = 'abcdefg'
p a[1..3]

def liquid?(temperature)
  # 0 <= temperature && temperature < 100
  (0...100).include?(temperature)
end

p (1..10).step(2).map { |n| n + 1 }

# a,c,d以外の要素をbに
a, *b, c, d = 1, 2, 3, 4, 5
p b

def hoge(_a, *b)
  p b
  p b.class #=> 配列で受け取っている
end
hoge(1, 2, 3)

# 展開する記号としての*(splat演算子)
a = []
b = [2, 3]
a.push(1)
a.push(*b) #=> a.push(2,3) と同じ意味。
p a

a = [1, 2, 3]
p [a]
p [*a]

# 2.7から使える、番号指定パラメータ。引数を_nで取得できる
p %w[1 20 300].map { _1.rjust(3, '0') }

# 終端を持たないRangeオブジェクト
(10..).each do |i|
  break if i > 15

  p i
end

# redo は繰り返し処理をやり直す
foods = %w[tomato apple banana]
foods.each do |food|
  print "Do you like #{food}? => "
  answer = %w[yes no].sample
  puts answer

  redo unless answer == 'yes'
end
