class Product
  attr_accessor :ins

  def inputs
    t = gets.to_i
    @ins = []

    t.downto(1) do
      temp = []
      temp << gets.split(' ')
      temp << gets

      @ins << temp
    end
  end

  def getProduct(n, k, num)
    pd = 0

    n = n.to_i
    k = k.to_i

    for i in 0..(n-k)
      ps = num[i..k+i-1]
      p = 1

      for j in 0..k-1
        p *= ps[j].to_i
      end

      pd = p if pd < p
    end

    return pd
  end

  def start
    inputs
    @ins.each do |a|
      puts getProduct(a[0][0], a[0][1], a[1])
    end
  end
end

Product.new.start