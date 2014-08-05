t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

nums.each do |n|
  sq_su = 0
  su_sq = 0

  su_sq = (1+n)*n/2*(1+n)*n/2

  for i in 1..n
    sq_su += i*i
  end

  puts su_sq-sq_su
end