# coding: utf-8
class Integer
  def σe
    e_divisors.reduce(:+)
  end

  alias :sum_of_e_divisors :σe
end
