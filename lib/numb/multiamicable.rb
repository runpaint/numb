# coding: utf-8
class Integer
  def multiamicable?(m, a, b)
    return false unless m != self and m < self and a.positive? and b.positive?
    m.σ - m == a*self and σ - self == b*m
  end
end
