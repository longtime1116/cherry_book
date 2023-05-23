def to_hex(r, g, b)
  [r, g, b].sum('#') do |e|
    e.to_s(16).rjust(2, '0')
  end
end

def to_ints(str)
  # 連続する2文字のアルファベット、数字、またはアンダースコアにマッチ
  str.scan(/\w\w/).map(&:hex)
end
