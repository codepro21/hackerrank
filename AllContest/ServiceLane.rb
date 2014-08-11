f = gets.chomp.split(' ')

n = f[0].to_i
t = f[1].to_i

width = gets.chomp.split(' ')
cases = []
t.downto(1) do
  cases << gets.chomp.split(' ')
end

cases.each do |ins|
  i = ins[0].to_i
  j = ins[1].to_i
  type = 3

  for x in i..j
    if width[x].to_i < type.to_i
      type = width[x]
    end
  end

  puts type
end