str = gets.chomp

h = {}

for i in 0..str.length-1
  if h[str[i]] == nil
    h[str[i]] = 1
  else
    h[str[i]] += 1
  end
end

answer = 'YES'
odd = 0
h.each do |key, value|
  if value%2 == 1
    odd += 1
    if odd > 1
      answer = 'NO'
      break
    end
  end
end

puts answer