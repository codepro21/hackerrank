t = gets.to_i

t.times do
  n = gets.to_i
  a = gets.to_i
  b = gets.to_i

  answer = [a*(n-1)]

  for i in 0..n-2
    answer << answer[0] + (b-a)*(i+1) unless answer.include? answer[0] + (b-a)*(i+1)
  end

  puts answer.sort.join(' ')
end