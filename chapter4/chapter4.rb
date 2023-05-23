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
