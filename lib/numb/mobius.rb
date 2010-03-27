# coding: utf-8
class Integer
  def mobius
   return if self < 1
   ω < Ω  ? 0 : liouville
  end

  alias :möbius :mobius
  alias :μ :mobius

  # TODO: Consider Deléglise and Rivat's "Computing the Summation of the
  # Mőbius Function", Experimental Mathematics, Vol. 5 (1996), No. 4

  def mertens
    (1..self).map(&:μ).reduce(:+)
  end
end
