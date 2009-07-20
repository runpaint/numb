class Integer

  def perfect?
    return false if self < 6 or self.odd? or self.to_s !~ /(6|8)$/
    return false if self != 6 and digital_root != 1  
    divisors = proper_positive_divisors
    return false unless (divisors.size + 1).even?
    divisors.reduce(:+) == self
  end

  def proper_positive_divisors
    return [] unless self > 1
    (2..Math.sqrt(self).floor).select { |n| (self % n).zero? }.
                              map {|n| [n, self/n]}.flatten << 1
  end

  def digital_root
    self == 0 ? 0 : 1 + ((self - 1) % 9)
  end
end
