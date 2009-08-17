# coding: utf-8
class Integer
  def parasitic?(n=nil)
    return (1..9).any?{|x| parasitic?(x)} if n.nil?
    return true if (n == 1 && self == 1)
    return false unless self > 9
    raise ArgumentError unless (n > 0 && n < 10)
    (n*self) == [digits.last, digits[0..-2]].join.to_i
  end
end
