require 'prime'
class Integer
  def primorial?
    return true if self == 1
    pd = prime_division
    (pd.map{|b,e| e}.uniq == [1]) and (pd.map{|b,e| b} == Prime.first(pd.size))
  end

  def primorial_product?
    return true if primorial?
    return false if prime?
    positive_divisors.each_slice(2).
                      reject{|pair| pair == [1, self]}.
                      any?{|pair| pair.all?(&:primorial_product?)} 
  end

  def primorial
    return nil if self < 1
    return 1 if self == 1
    if prime?
      self * (self - 1).primorial
    else
      (self - 1).primorial
    end
  end
end
