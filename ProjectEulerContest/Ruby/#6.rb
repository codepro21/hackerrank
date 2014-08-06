t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

nums.each do |n|
  puts (n-1)*n*(n+1)*(3*n+2)/12
end