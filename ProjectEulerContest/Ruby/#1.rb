t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

nums.each do |n|

  n -= 1
  t3 = (n/3.0).floor
  t5 = (n/5.0).floor
  t15 = (n/15.0).floor

  sum = (3*(1+t3)*t3 + 5*(1+t5)*t5 - 15*(1+t15)*t15)/2

  puts sum
end