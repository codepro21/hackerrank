t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

def getPrimes(n)
  primes = []
  t = 2
  limit = Math.sqrt(n).floor+1

  while(t<limit)
    if(n%t == 0)
      primes << t
      n /= t
      t = 2
      limit = Math.sqrt(n).floor+1
    else
      t += 1
    end
  end

  primes << n
  return primes.sort.reverse
end

def checkProduct(prime)
  depth = 0
  first = 0
  matrix = []

  prime.each{|n| return 0 if n >= 1000}

  first = prime.shift
  if(first >= 100 && first < 1000)
    rest = 1
    prime.each{|n| rest *= n}

    if(rest >=100 && rest < 1000)
      return 1
    end
  end

  for i in 0..prime.length-1
    matrix[i] = [] if matrix[i] == nil
    matrix[i][0] = i
  end
  depth = 1

  while(matrix.length != 0 && depth < prime.length)
    valid = []
    for i in 0..matrix.length-1
      val = first

      for j in 0..depth-1
        val *= prime[matrix[i][j]]
      end

      rest = 1
      if(val >= 100 && val < 1000)
        for k in 0..prime.length-1
          isF = 0
          for l in 0..depth-1
            isF = 1 if k == matrix[i][l]
          end

          if(isF == 0)
            rest *= prime[k]
          end
        end

        if(rest >=100 && rest < 1000)
          return 1
        end
      end

      if(val < 1000)
        valid << i
      end
    end

    valid_matrix = []
    for i in 0..matrix.length-1
      valid_matrix << matrix[i] if valid.include? i
    end

    return 0 if valid_matrix.length == 0

    depth += 1
    matrix = valid_matrix
    temp = []

    for i in 0..matrix.length-1
      for j in 0..prime.length-1
        isF = 1
        for k in 0..depth-1
          isF = 0 if j == matrix[k][i]
          break
        end

        if(isF == 1)
          t = []
          for l in 0..matrix[i].length-1
            t[l] = matrix[i][l]
          end
          t[l+1] = j

          temp << t
        end
      end
    end

    matrix = temp
  end
end

def getPalindrom(n)
  pt = (n/1000)
  result = 0

  while(result == 0 && pt > 100)
    pa = (pt.to_s + pt.to_s.reverse).to_i

    if(pa <= n)
      prime = getPrimes(pa)
      mp = prime[0]

      if(mp < 1000)
        if(mp >= 100 && pa/mp < 1000)
          result = pa
        elsif (checkProduct(prime) == 1)
          result = pa
        end
      end
    end
    pt -= 1
  end
  return result
end

nums.each do |n|
  puts getPalindrom(n)
end