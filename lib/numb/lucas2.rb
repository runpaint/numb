# coding: utf-8
class Integer
  def lucas2(p, q)
    d = (p**2) - (4*q)
    raise ArgumentError unless d > 0
    d_root = d.sqrt
    (Rational(p + d_root, 2)**self + Rational(p - d_root, 2)**self).round
  end

  memoize :lucas2
end
