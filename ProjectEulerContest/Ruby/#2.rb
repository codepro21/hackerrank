t = gets.to_i
nums = []

t.downto(1) do
  nums << gets.to_i
end

class Pibonacci
  attr_accessor :prev, :current

  def next
    @prev += @current
    temp = @current
    @current = @prev
    @prev = temp

    return @current
  end

  def eSum(n)
    @prev = 1
    @current = 2
    even_sum = 2

    while(self.next < n)
      even_sum += @current if @current%2 == 0
    end

    puts even_sum
  end
end

pib = Pibonacci.new

nums.each do |n|
  pib.eSum(n)
end