class Integer
  def amicable?(other)
    return false if other == self 
    [self, other].map do |n| 
      n.proper_positive_divisors.reduce(:+)
    end == [other, self]
  end
end
