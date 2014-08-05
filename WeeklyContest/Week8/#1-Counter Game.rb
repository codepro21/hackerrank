class Counter
  attr_accessor :ins

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      @ins << gets.to_i
    end
  end

  def getPower(n)
    pow = 1

    while(n != 1)
      pow *= 2
      n /= 2
    end

    return pow
  end

  def getWinner(n)
    turn = 0
    while(n != 1)
      turn += 1
      pow = getPower(n)

      if(pow == n)
        n /= 2
      else
        n -= pow
      end

    end

    if(turn == 0)
      return "Louise"
    end

    if(turn%2 == 1)
      return "Louise"
    end

    return "Richard"
  end

  def start
    inputs
    @ins.each do |n|
      puts getWinner(n)
    end
  end
end

Counter.new.start