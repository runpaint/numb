class Integer
  def perfect?
    return false unless self > 0
    self.to_s =~ /(6|8)$/ ? true : false
  end

  def proper_divisors
    (1...self).select { |n| (self % n).zero? }
  end
end
