# coding: utf-8
class Integer
  def mobius
   return if self < 1
   ω < Ω  ? 0 : (-1)**(Ω)
  end

  alias :möbius :mobius
  alias :μ :mobius

  def mertens
    (1..self).map(&:μ).reduce(:+)
  end
end
