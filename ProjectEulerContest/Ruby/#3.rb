t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

nums.each do |n|

  largest = 0
  t = 2
  limit = Math.sqrt(n).floor+1

  while(t<limit)
    if(n%t == 0)
      largest = t
      n /= t
      t = 2
      limit = Math.sqrt(n).floor+1
    else
      t += 1
    end
  end

  largest = n if n > largest
  puts largest
end