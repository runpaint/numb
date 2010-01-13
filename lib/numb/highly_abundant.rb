# coding: utf-8
class Integer
  def highly_abundant?
    return true if self == 1
    (self - 1).downto(1).all?{|m| σ > m.σ }
  end
end
