require 'benchmark'
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
    limit = Math.sqrt(n).floor+1

    @primes.each do |p|
      break if p > limit

      return 0 if n%p == 0
    end

    return 1
  end

  def getSum(n)
    sum = 0
    p = 2

    if(@primes.length > 0)
      @primes.each do |pri|
        if pri <= n
          sum += pri
        else
          return sum
        end
      end
      p = @primes.last+1
    end

    while(p <= n)
      if(isPrime(p) == 1)
        sum += p
        @primes << p
      end

      if(p%2 == 0)
        p += 1
      else
        p += 2
      end
      p += 2 if p!=3 && p%3==0
    end

    return sum
  end

  def start
    inputs
    @ins.each do |n|
      puts Benchmark.measure{puts getSum(n)}
    end
  end

end

Prime.new.start