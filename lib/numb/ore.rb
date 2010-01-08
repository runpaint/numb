class Integer
  def ore?
    div = positive_divisors
    Rational(div.size, div.map{|d| Rational(1, d)}.reduce(:+)).denominator == 1
  end

  alias :harmonic_divisor? :ore?
end
