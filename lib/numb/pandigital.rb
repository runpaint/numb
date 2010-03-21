# coding: utf-8
class Integer
  def pandigital?
    (1..9).all?{|d| digits.include? d}
  end
end
