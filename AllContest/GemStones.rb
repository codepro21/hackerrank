class Stone
  attr_accessor :ins

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      @ins << gets.chomp
    end
  end

  def getGem(rocks)

    sieve_exist = Hash.new(0)

    rocks.each do |rock|
      temp = rock.scan(/\w/).inject(Hash.new(0)) { |h, c| h[c] +=1; h}
      temp.each do |key, value|
        sieve_exist[key] += 1
      end
    end

    gems = 0
    sieve_exist.each { |key, value| gems += 1 if sieve_exist[key] == rocks.length  }

    return gems
  end

  def start
    inputs
    puts getGem(@ins)
  end

end

Stone.new.start