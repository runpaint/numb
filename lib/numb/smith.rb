# coding: utf-8
class Integer
  def smith?
    return false if prime?
    digital_sum == prime_division.map{|d,e| d.digital_sum * e}.reduce(:+)
  end
end
