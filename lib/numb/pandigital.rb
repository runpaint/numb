# coding: utf-8
class Integer
  def pandigital?
    (0..9).all?{|d| digits.include? d}
  end
end
