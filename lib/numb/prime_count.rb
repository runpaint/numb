# coding: utf-8
class Integer
  def factorial
    (1..self).reduce(:*)
  end
  
def π
  return 0 if self < 2
  case self
    when 2 then 1
    when 3 then 2
    else
    -1 + (3..self).map{|j| ((j - 2).factorial - j * ((j - 2).factorial/j).floor).floor}.reduce(:+)
    end
  end
  alias :prime_pi :π
  alias :prime_count :π
end
