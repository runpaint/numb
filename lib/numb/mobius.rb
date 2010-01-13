# coding: utf-8
class Integer
  def mobius
    case
      when (self < 1)                 then nil
      when (square_free? and number_of_distinct_prime_factors.even?) then 1
      when (square_free? and number_of_distinct_prime_factors.odd?)  then -1
      when (not square_free?)         then 0
    end
  end

  alias :möbius :mobius
  alias :μ :mobius
end
