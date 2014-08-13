gets.to_i.times {
  n = gets.to_i

  i = n/3

  number = 0
  while(i >= 0)
    if((n-i*3)%5 == 0)
      number = ('5'*(i*3) + '3'*(n-i*3)).to_i
      break
    end
    i -= 1
  end

  if number == 0
    puts -1
  else
    puts number
  end
}