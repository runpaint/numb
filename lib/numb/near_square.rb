# coding: utf-8
class Integer
  def near_square?(k)
    (self - k).square?
  end
end
