# coding: utf-8
class Integer
  def entringer(k)
    return 1 if zero? and k.zero?
    return 0 if (self < k or k < 0)
    entringer(k - 1) + (self - 1).entringer(self - k)
  end
end

