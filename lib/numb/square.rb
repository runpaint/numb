# coding: utf-8
class Integer
  def square?
    return false if self < 0
    Math.sqrt(self).integer?
  end
end
