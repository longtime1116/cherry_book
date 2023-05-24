def to_hex(r, g, b)
  [r, g, b].sum('#') do |e|
    e.to_s(16).rjust(2, '0')
  end
end

def to_ints(str)
  # str[1..2]とか、str[1,1]とかで抜き出しても良いが、ここでは正規表現。
  # 連続する2文字のアルファベット、数字、またはアンダースコアにマッチ
  str.scan(/\w\w/).map(&:hex)
end
