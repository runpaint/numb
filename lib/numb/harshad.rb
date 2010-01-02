# coding: utf-8
class Integer
  def harshad?
    return false unless self >= 1
    (self %  digital_sum) == 0
  end
  alias :niven? :harshad?
end
