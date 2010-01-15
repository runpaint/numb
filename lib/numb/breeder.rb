# coding: utf-8
class Integer
  def breeder?(b)
    a = self
    x = (a.σ - a).fdiv(b)
    abx = a + (b*x)
    (abx == a.σ) and (abx == b.σ * (x + 1))
  end
end
