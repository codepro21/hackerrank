(n, m) = gets.split.map{|i| i.to_i}

sum = 0
m.times {
  (a,b,k) = gets.split.map{|i| i.to_i}

  sum += (b-a+1)*k
}

puts sum/n