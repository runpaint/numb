class Integer
  def modulo_order(n)
    return 0 if n < 1
    return 1 if self == 2 and n == 1
    (1..n.totient).each{|e| return e if (self**e).modulo(n) == 1}
    0
  end
  alias :haupt_exponent :modulo_order
  alias :multiplicative_order :modulo_order
  # TODO: Add Rational#period for calculating the period of the decimal
  # expansion of the rational in terms the multiplicative order of 10
end
