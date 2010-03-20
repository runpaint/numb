class Integer
  def highly_composite?
    return false if self > 6 and not (abundant? or primorial_product?)
    return true if [1,4,36].include?(self)
    n_divisors = number_of_divisors
    (self-1).downto(1).none? do |x|
      x.number_of_divisors >= n_divisors
    end
  end

  alias :julian? :highly_composite?
end
