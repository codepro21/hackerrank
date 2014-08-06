$primes = []

t = gets.to_i
ins = []

t.downto(1) do
  ins << gets.to_i
end

def getSum(n)
  sum = 0
  p = 2

  arr = Array.new(n+1,0)

  ex = 0
  limit = Math.sqrt(n).floor+1

  while(p <= n)
    if(ex == 0 && $primes.length > 0)
      $primes.each do |pri|
        sum += pri if pri <= n
        return sum if pri >= n

        if($primes.last < n)
          t = pri
          while(t <= n)
            arr[t] = 1
            t += pri
          end
        end
      end

      p = $primes.last + 1
    end

    ex = 1
    if(arr[p] == 0)
      break if p > limit
      t = 2*p
      while(t <= n)
        arr[t] = 1
        t += p
      end
    end
    if(p%2 == 0)
      p += 1
    else
      p += 2
    end
    p += 2 if p!=3 && p%3 == 0
  end

  first = 2
  first = $primes.last+1 if $primes.length > 0
  for i in first..n
    $primes << i if arr[i] == 0
  end

  return $primes.inject(:+)
end

ins.each do |n|
  puts getSum(n)
end
