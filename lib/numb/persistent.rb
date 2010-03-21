# coding: utf-8
class Integer
  def persistent?(n)
    (1..n).all?{|x| (x * self).pandigital?}
  end
end
