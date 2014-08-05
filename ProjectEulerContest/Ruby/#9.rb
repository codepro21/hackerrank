class Triplet
  attr_accessor :ins

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      @ins << gets.to_i
    end
  end

  def getMax(n)
    res = -1

    return res if n%2==1

    a = 2

    while(a <= n/3)

      if(n**2 % (n-a) == 0)
        b = (n-a)/2 - a**2/(n-a)/2

        if(b < a)
          break
        end
        while(b <n-a-b && (n-a-b)**2 <= a**2+b**2)
          c = n-a-b

          res  = a*b*c if a**2+b**2==c**2 && a*b*c > res

          b += 1
        end
      end
      a += 1
    end

    return res
  end

  def start
    inputs
    @ins.each do |n|
      puts getMax(n)
    end
  end
end

Triplet.new.start