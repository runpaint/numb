# coding: utf-8
class Integer
  def lah(k)
    ((self-1).choose(k-1) * Rational(factorial, k.factorial)).to_i
  end
end
