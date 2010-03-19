# coding: utf-8
class Integer
  def σ∞
    infinitary_divisors.reduce :+
  end

  alias :sum_of_infinitary_divisors :σ∞
  alias :isigma :σ∞
end
