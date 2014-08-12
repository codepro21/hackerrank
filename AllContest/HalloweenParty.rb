t = gets.to_i
ins = []

t.downto(1) do
  ins << gets.to_i
end

ins.each do |k|
  if(k%2 == 0)
    puts k*k/4
  else
    puts (k/2)*(k/2+1)
  end
end