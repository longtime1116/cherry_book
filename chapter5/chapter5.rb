# 任意のキーワードを受け付ける**引数
def buy_burger(burger, drink: true, frenchfries: true, **others)
  p burger
  p drink if drink
  p frenchfries if frenchfries
  p others if others
end

buy_burger('cheese burger', drink: true, frenchfries: true, salad: true, chiken: true)

# Ruby2.7及び3.0以降では、**hash という形で明示的にハッシュをキーワード引数に変換することで渡せる。それ以前だと、そのまま hash を渡したら勝手に変換してくれていた。
hash = { drink: true, frenchfries: true, salad: true, chiken: true }
buy_burger('fish', **hash)

# 最後の引数がハッシュであれば、キーワード引数を渡したときにハッシュとして受け取ってくれる
def buy_burger_option_hash(_burger, options = {})
  p options
end
buy_burger_option_hash('fish', **hash)
