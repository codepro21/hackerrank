class Tree
  attr_accessor :ins

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      @ins << gets.to_i
    end
  end

  def getHeight(cycle)

    f = 0
    l = cycle/2

    if cycle%2 == 1
      f = 1
      l = cycle/2 + 1
    end

    height = 0

    for i in f..l
      height += 2**i
    end

    return height
  end

  def start
    inputs
    @ins.each do |n|
      puts getHeight(n)
    end
  end

end

Tree.new.start