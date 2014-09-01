gets.to_i.times{
  (n,k) = gets.split.map{|i| i.to_i}

  p = k
  for i in 0..n-1
    p = n-1+i-p

    break if p <= i
  end

  puts p
}