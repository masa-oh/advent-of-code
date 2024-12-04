A = $<.map { _1.split.map &:to_i }

ans = A.count do |row|
  row.map.with_index.any? do |x, i|
    tmp_row = row.dup.tap { _1.delete_at i }
    tmp_row_asc = tmp_row.sort
    tmp_row_desc = tmp_row_asc.reverse

    next unless tmp_row == tmp_row_asc || tmp_row == tmp_row_desc
    next unless (0..tmp_row.size-2).all? { (tmp_row[_1] - tmp_row[_1+1]).abs.between?(1, 3) }

    true
  end
end

p ans
