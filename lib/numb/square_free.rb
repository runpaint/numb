# coding: utf-8
class Integer
  def square_free?
    divisors.reject{|d| d==1}.none? {|d| d.square?}
  end
end
