# coding: utf-8
class Integer
  def harshad?
    self >= 1 and (self % digital_sum).zero?
  end

  alias :niven? :harshad?
  alias :multidigital? :harshad?
end
