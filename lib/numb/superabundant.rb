class Integer
  def superabundant?
    return true if self == 1
    sod_over_self = Rational(sum_of_divisors, self)
    (self - 1).downto(1).all?{|m| Rational(m.sum_of_divisors, m) < sod_over_self}
  end
end
