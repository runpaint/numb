# coding: utf-8
class Integer
  def fermat?
    self > 2 and Math.log2(Math.log2(self - 1)).integer?
  end
end
