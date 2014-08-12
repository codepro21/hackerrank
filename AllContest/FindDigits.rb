t = gets.to_i

t.times do
  n = gets.to_i
  nums = n.to_s.split('')

  count = 0
  nums.each do |e|
    count += 1 if e.to_i != 0 && n%e.to_i == 0
  end

  puts count
end