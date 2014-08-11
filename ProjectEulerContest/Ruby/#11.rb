grid = []

20.times do
  grid << gets.chomp.split(' ')
end

product = 0

grid.each do |g|
  for i in 0..g.length-4
    t = g[i].to_i * g[i+1].to_i * g[i+2].to_i * g[i+3].to_i

    product = t if t > product
  end
end

for i in 0..19
  for j in 0..16
    t = grid[j][i].to_i * grid[j+1][i].to_i * grid[j+2][i].to_i * grid[j+3][i].to_i
    product = t if t > product
  end
end

for i in 0..16
  for j in 0..16
    t = grid[i][j].to_i * grid[i+1][j+1].to_i * grid[i+2][j+2].to_i * grid[i+3][j+3].to_i
    product = t if t > product
  end
end

for i in 0..16
  for j in 3..19
    t = grid[i][j].to_i * grid[i+1][j-1].to_i * grid[i+2][j-2].to_i * grid[i+3][j-3].to_i
    product = t if t > product
  end
end

puts product