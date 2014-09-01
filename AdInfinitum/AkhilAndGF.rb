gets.to_i.times{
  (n,m) = gets.split.map{|i| i.to_i}

  if m == 2 || m == 5 || m == 10
    puts '1'
    next
  end

  remainder = ''

  i = 1
  while(i<=n)
    if n-i > 1000
      remainder += '1'*1000
      i += 1000
    else
      remainder += '1'
      i += 1
    end

    if remainder.to_i >= m
      remainder = (remainder.to_i%m).to_s
    end

  end

  puts remainder.to_i%m
}