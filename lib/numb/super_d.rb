# coding: utf-8
class Integer
  def super_d?(d)
    (d * self**d).to_s.include?(d.to_s * d)
  end
end
