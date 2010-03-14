class Integer
  def cullen?
    return true if self == 1
    factors = (self - 1).divisors.sort
    factors.first(factors.size/2).any?{|n| n * 2**n + 1 == self}
  end
end
