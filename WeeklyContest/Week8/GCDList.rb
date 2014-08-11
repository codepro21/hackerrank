class GCD
  attr_accessor :ins

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      num = gets.to_i
      list = gets.chomp
      @ins << [num, list]
    end
  end

  def primeFactor(n)

    p = 2
    limit = Math.sqrt(n).floor+1
    factors = Hash.new

    while(p < limit)
      if(n%p == 0)
        factors[p] = factors[p] == nil ? 1 : factors[p]+1
        n /= p
        p=2
        limit = Math.sqrt(n).floor+1
      else
        if p%2 == 0
          p += 1
        else
          p += 2
        end
      end
    end

    factors[n] = factors[n] == nil ? 1 : factors[n] + 1

    return factors
  end

  def getGCD(a, b)
    primeList = Hash.new

    [a,b].each do |n|
      temp = primeFactor(n.to_i)
      temp.each { |key, value| primeList[key] = value if primeList[key] == nil || primeList[key] < value}
    end

    gcd = 1
    primeList.each { |key, value| gcd *= key**value}

    return gcd
  end

  def getList(info)
    num = info[0]
    list = info[1].split(' ')
    new_list = []

    new_list << list[0]
    for i in 1..num-1
      new_list << getGCD(list[i-1],list[i])
    end
    new_list << list[num-1]

    puts new_list.join(' ')
  end

  def start
    inputs
    @ins.each do |n|
      getList(n)
    end
  end
end

GCD.new.start