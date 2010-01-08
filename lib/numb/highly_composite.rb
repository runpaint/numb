class Integer
  def highly_composite?
    return false if self > 6 and not (abundant? or primorial_product?)
    return true if [1,4,36].include?(self)
    n_divisors = positive_divisors.size
    (self-1).downto(1).none? do |x|
      x.positive_divisors.size >= n_divisors
    end
  end
end
