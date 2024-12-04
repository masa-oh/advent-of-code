text = $<.read.split.to_a.join
pattern = /mul\((\d+),(\d+)\)/
p text.scan(pattern).map { |m| m[0].to_i * m[1].to_i }.sum
