# coding: utf-8
class Integer
  def σe
    # TODO: If squarefree, the sum of a number’s e-divisors is the number
    # itself. Do we gain anything significant by special-casing this?
    e_divisors.reduce(:+)
  end

  alias :sum_of_e_divisors :σe
end
