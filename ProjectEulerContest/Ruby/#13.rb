t = gets.to_i

sum = 0

t.times do
  s = gets.chomp[0..11]

  sum += s.to_i

end

puts sum.to_s[0..9]