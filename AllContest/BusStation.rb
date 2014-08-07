require 'benchmark'
class Bus
  attr_accessor :ins

  def inputs
    @ins = []
    @ins << gets.to_i
    @ins << gets.chomp
  end

  def getSize
    ng = @ins[0]
    ig = @ins[1].split(' ')

    max = 0

    ig.each do |g|
      max += g.to_i
    end

    ps = [];x = 0

    for i in 0..ng-1
      x += ig[i].to_i
      break if x > max/2+1

      if(max%x ==0)
        buf = 0;valid = 1

        for j in 0..ng-1
          buf += ig[j].to_i

          if(buf == x)
            buf = 0
          elsif(buf > x)
            valid = 0
            break
          end
        end

        ps << x if valid == 1 && buf == 0
      end
    end

    ps << max if ps.last != max
    puts ps.join(' ')
  end

  def start
    inputs
    puts Benchmark.measure{getSize}
  end

end

Bus.new.start