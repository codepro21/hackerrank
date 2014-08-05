t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

def isPrime(n)
  t = 2
  limit = Math.sqrt(n).floor+1

  while(t<limit)
    return 0 if n%t==0
    t += 1
  end
  return 1
end

def nextPrime(p)
  p += 1
  while(isPrime(p) != 1)
    p += 1
  end
  return p
end

nums.each do |n|

  arr = (2..n).to_a
  p = 2
  all_one = 0
  result = 1

  while(all_one == 0 && p <= n)
    f = 0

    for i in 0..arr.length-1
      if arr[i]%p == 0
        arr[i] /= p if arr[i]%p == 0
        f = 1
      end
    end

    if(f == 1)
      result *= p
      p = 2
      f = 0
    else
      p = nextPrime(p)
    end

    all_one = 1
    arr.each do |i|
      if i != 1
        all_one = 0
        break
      end
    end
  end

  puts result
end