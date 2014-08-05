class Prime
  attr_accessor :ins, :primes

  def initialize
    @primes = []
  end

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      @ins << gets.to_i
    end
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

  def getPrime(n)

    if(@primes.length >= n)
      return @primes[n-1]
    end

    p = 0
    if(@primes.length == 0)
      count = 0
      num = 2
    else
      count = @primes.length
      num = @primes.last+1
    end

    while(count != n)
      if(isPrime(num) == 1)
        count += 1
        p = num
        @primes << p
      end
      num += 1
    end

    return p
  end

  def start
    inputs
    @ins.each do |n|
      puts getPrime(n)
    end
  end
end

Prime.new.start