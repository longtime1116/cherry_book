def fizz_buzz(n)
  return unless n.is_a?(Integer)
  return unless n > 0

  if n % 15 == 0
    'fizz buzz'
  elsif n % 3 == 0
    'fizz'
  elsif n % 5 == 0
    'buzz'
  else
    n
  end
end
