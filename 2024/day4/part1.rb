grid = $<.map &:chomp
rows = grid.size
cols = grid[0].size
count = 0

# Check horizontal
rows.times do |i|
  (cols - 3).times do |j|
    count += 1 if grid[i][j..j+3] == "XMAS" || grid[i][j..j+3] == "SAMX"
  end
end

# Check vertical
(rows - 3).times do |i|
  cols.times do |j|
    count += 1 if grid[i][j] == "X" && grid[i+1][j] == "M" && grid[i+2][j] == "A" && grid[i+3][j] == "S"
    count += 1 if grid[i][j] == "S" && grid[i+1][j] == "A" && grid[i+2][j] == "M" && grid[i+3][j] == "X"
  end
end

# Check diagonal (top-left to bottom-right)
(rows - 3).times do |i|
  (cols - 3).times do |j|
    count += 1 if grid[i][j] == "X" && grid[i+1][j+1] == "M" && grid[i+2][j+2] == "A" && grid[i+3][j+3] == "S"
    count += 1 if grid[i][j] == "S" && grid[i+1][j+1] == "A" && grid[i+2][j+2] == "M" && grid[i+3][j+3] == "X"
  end
end

# Check diagonal (bottom-left to top-right)
(rows - 3).times do |i|
  (3...cols).each do |j|
    count += 1 if grid[i][j] == "X" && grid[i+1][j-1] == "M" && grid[i+2][j-2] == "A" && grid[i+3][j-3] == "S"
    count += 1 if grid[i][j] == "S" && grid[i+1][j-1] == "A" && grid[i+2][j-2] == "M" && grid[i+3][j-3] == "X"
  end
end

p count
