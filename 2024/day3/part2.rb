text = $<.read.split.to_a.join
pattern = /do\(\)|don\'t\(\)|mul\(\d+,\d+\)/
matches = text.scan(pattern)
can_do = true
count = 0

matches.each do |m|
  case m
  when 'do()'
    can_do = true
  when 'don\'t()'
    can_do = false
  else
    if can_do
      m.scan(/mul\((\d+),(\d+)\)/).each do |m|
        count += m[0].to_i * m[1].to_i
      end
    end
  end
end

p count
