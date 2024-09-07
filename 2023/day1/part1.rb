S = $<.map &:chomp
S.map! do |str|
  l = str.match(/\d/)
  r = str.reverse.match(/\d/)
  "#{l}#{r}".to_i
end
p S.sum
