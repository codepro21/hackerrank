#!/usr/bin/ruby
def maxXor(l, r)
  max = 0
  for i in l..r-1
    for j in i..r
      max = i^j if max < i^j
    end
  end

  puts max
end
l = gets.to_i
r = gets.to_i
print maxXor(l, r)
