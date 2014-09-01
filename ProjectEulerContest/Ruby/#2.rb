gets.to_i.times{
  n = gets.to_i

  f = 0
  g = 1
  even_sum = 0

  while f < n
    even_sum += f if f%2 == 0
    f += g
    g = f - g
  end

  puts even_sum
}