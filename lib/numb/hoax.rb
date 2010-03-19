# coding: utf-8
class Integer
  def hoax?
    return false unless composite?
    sum_of_digits == prime_factors.uniq.map{|f| f.sum_of_digits}.reduce(:+)
  end
end
