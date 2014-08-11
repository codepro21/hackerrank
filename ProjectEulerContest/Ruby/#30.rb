require 'benchmark'

ins = gets.to_i

def sum(i, n)
  nums = i.to_s.split('')

  s = 0
  nums.each {|num| s += num.to_i**n}

  return s
end

def getSum(n)

  if(n == 6)
    puts 548834
  else
    limit = 0

    x = 1
    while(0 == 0)
      if(('9'*x).to_i > x*(9**n))
        limit = x*(9**n)
        break
      end
      x += 1
    end

    sum = 0
    i = 100
    while(i < limit)
      s = sum(i, n)
      if(i == s)
        sum += i
      end

      i += 1
    end

    puts sum
  end
end

puts Benchmark.measure{getSum(ins)}
