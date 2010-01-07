class Integer
  def abundancy
    Rational(sum_of_divisors, self)
  end
end
