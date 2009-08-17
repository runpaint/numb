# coding: utf-8
class Integer
  def sphenic?
    (prime_factors.size == 3) &&
    (prime_factors.uniq.size == 3) && 
    (prime_factors.reduce(:*) == self)
  end
end
