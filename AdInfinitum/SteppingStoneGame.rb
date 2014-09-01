gets.to_i.times{
  n = gets.to_i

  x = Math.sqrt(2*n+1.0/4) - 1.0/2

  if(x.to_i.to_f == x)
    puts "Go On Bob " + x.to_i.to_s
  else
    puts "Better Luck Next Time"
  end
}