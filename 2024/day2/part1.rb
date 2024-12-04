A = $<.map { _1.split.map &:to_i }

ans = A.count do |row|
  row_asc = row.sort
  row_desc = row_asc.reverse

  next unless row == row_asc || row == row_desc
  next unless (0..row.size-2).all? { (row[_1] - row[_1+1]).abs.between?(1, 3) }

  true
end

p ans
