# coding: utf-8
class Integer
  def frugal?
    digits.size > prime_division.flatten.reject{|d|d==1}.join.to_i.digits.size
  end
end
