t = gets.to_i
t.times{
  (n, c, m) = gets.split.map{|i| i.to_i}

  answer = n/c
  wr = answer
  answer += wr/m
  re = wr%m
  wr /= m

  while(wr+re >= m)
    answer += (wr+re)/m
    te = (wr+re)
    wr = te/m
    re = te%m
  end

  puts answer
}