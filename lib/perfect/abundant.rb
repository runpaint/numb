class Integer
  def abundant?
    return false unless self > 0
    sum_of_divisors > (2 * self)
  end
end
