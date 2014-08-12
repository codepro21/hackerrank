t = gets.to_i
ins = []

t.downto(1) do
  ins << gets.chomp
end

ins.each do |s|

  sum = 0
  for i in 0..(s.length-1)/2
    sum += (s[i].ord - s[s.length-1-i].ord).abs
  end

  puts sum
end