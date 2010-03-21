# coding: utf-8
class Integer
  def pentatope
    (Rational(tetrahedral, 4) * (self + 3)).to_i
  end
end
