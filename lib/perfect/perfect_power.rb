class Integer
  def perfect_power?
    return false unless self > 0
    return true if self == 1
    divisors = positive_divisors
    (2..Math.log2(self)).any? { |pow| divisors.any? {|div| (div ** pow) == self} } 
  end
end
