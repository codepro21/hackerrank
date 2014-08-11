require 'benchmark'
$ins=[]
$matrix=[]

def inputs
  t = gets.to_i

  t.downto(1) do
    $ins << gets.chomp
  end
end

def validMatrix(x1, y1, x2, y2)
  for i in x1..x2
    for j in y1..y2
      if($matrix[i][j].to_i == 0)
        return 0
      end
    end
  end

  return 1
end

def isValid(x1,y1,x2,y2,x3,y3,x4,y4)

  if(x1 == x3 && y1 == y3 && x2 == x4 && y2 == y4)
    return 0
  end

  if((x1 <= x3 && x2 >= x4 && y1 <= y3 && y2 >= y4) || (x1 >= x3 && x2 <= x4 && y1 >= y3 && y2 <= y4))
    return 0
  end

  if(x2 < x3 || x4 < x1 || y2 < y3 || y4 < y1)
    return 0
  end

  return 1
end

def getNum

  size = $ins.length

  $ins.each do |ins|
    $matrix << ins.split('')
  end

  possible = []
  count = 0
  x1 = 0
  while(x1 < size)
    y1 = 0
    while(y1 < size)
      if $matrix[x1][y1].to_i == 0
        y1 += 1
        next
      end

      x2 = x1
      while(x2 < size)
        y2 = y1
        while(y2 < size)

          break if $matrix[x2][y2].to_i == 0

          if((x1 == x2 && y1 == y2) || (x1 == 0 && y1 == 0 && x2 == $matrix.length-1 && y2 == $matrix.length-1))
            y2 += 1
            next
          end

          break if validMatrix(x1,y1,x2,y2) == 0

          possible << [x1, y1, x2, y2]
          y2 += 1
        end
        x2 += 1
      end
      y1 += 1
    end
    x1 += 1
  end

  for i in 0..possible.length-1
    mA = possible[i]

    for j in i..possible.length-1
      mB = possible[j]

      break  if mA[2] < mB[0]

      if isValid(mA[0],mA[1],mA[2],mA[3],mB[0],mB[1],mB[2],mB[3]) == 1
        count += 1
      end
    end
  end

  puts count*2
end

inputs
puts Benchmark.measure{getNum}
