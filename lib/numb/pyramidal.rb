# coding: utf-8
class Integer
  def pyramidal(r)
    n = self
    (Rational(1, 6) * n * n.succ * (((r - 2) * n) + (5 - r))).to_i
  end
end
