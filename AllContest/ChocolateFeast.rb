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
    t = (wr+re)
    wr = t/m
    re = t%m
  end

  puts answer
}