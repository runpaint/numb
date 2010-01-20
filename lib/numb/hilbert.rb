# coding: utf-8
class Integer
  def hilbert?
    return false unless positive?
    ((self - 1) % 4) == 0
  end
end
