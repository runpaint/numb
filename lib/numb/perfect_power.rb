# coding: utf-8
class Integer
  def perfect_power?
    return false unless positive?
    return true if self == 1
    divisors = self.divisors
    (2..Math.log2(self)).any? { |pow| divisors.any? {|div| (div ** pow) == self} } 
  end
end
