# coding: utf-8
class Integer
  def perfect?
    return false if self < 6 or self.odd? or self.to_s !~ /(6|8)$/
    return false if self != 6 and digital_root != 1  
    divisors = proper_positive_divisors
    return false unless (divisors.size + 1).even?
    divisors.reduce(:+) == self
  end
end
