grid = $<.map &:chomp
rows = grid.size
cols = grid[0].size
count = 0

grid.each_with_index do |row, i|
  next if i == 0 || i == rows - 1
  row.chars.each_with_index do |char, j|
    next if j == 0 || j == cols - 1
    next if char != 'A'
    next unless (grid[i-1][j-1] == 'M' && grid[i+1][j+1] == 'S') || (grid[i-1][j-1] == 'S' && grid[i+1][j+1] == 'M')
    next unless (grid[i+1][j-1] == 'M' && grid[i-1][j+1] == 'S') || (grid[i+1][j-1] == 'S' && grid[i-1][j+1] == 'M')

    count += 1
  end
end

p count
