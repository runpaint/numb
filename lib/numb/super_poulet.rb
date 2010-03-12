class Integer
  def super_poulet?
    poulet? and divisors.all?{|d|  ((2**d) - 2).divides?(d)}
  end
end
