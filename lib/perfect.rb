class Integer

  def perfect?
    return false if self < 6 or self.odd? or self.to_s !~ /(6|8)$/
    return false if self != 6 and digital_root != 1  
    divisors = proper_positive_divisors
    return false unless (divisors.size + 1).even?
    divisors.reduce(:+) == self
  end

  def polite? 
    return true if self == 1
    politeness > 0
  end

  def impolite? 
    not polite?
  end

  def triangular?
    return false if self < 0
    root = Math.sqrt(8 * self + 1)
    root == root.floor
  end

  def square?
    return false if self < 0
    root = Math.sqrt(self)
    root == root.floor
  end

  def politeness
    positive_divisors.select{|d| d > 1}.select{|d| d.odd?}.size
  end

  def proper_positive_divisors
    positive_divisors.reject {|d| d == self }
  end

  def positive_divisors
    return [] unless self >= 0
    (1..Math.sqrt(self).floor).select { |n| (self % n).zero? }.
                              map {|n| [n, self/n]}.flatten.uniq
  end

  def digital_root
    self == 0 ? 0 : 1 + ((self - 1) % 9)
  end
end
