class Integer
  def perfect?
    return false unless self > 0
    proper_divisors.inject(0) {|sum, div| sum + div} == self
  end

  def proper_divisors
    (1...self).select { |n| (self % n).zero? }
  end
end
