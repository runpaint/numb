# coding: utf-8
class Integer
  def franel
    (0..self).map{|k| choose(k) ** 3 }.reduce(:+)
  end
end
