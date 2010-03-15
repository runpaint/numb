# coding: utf-8
class Integer
  def square?
    return false if self < 0
    sqrt.integer?
  end
end
