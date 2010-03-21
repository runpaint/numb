# coding: utf-8
class Integer
  def nsw
    case self
      when 0 then 1
      when 1 then 7
      else        6 * (self - 1).nsw - (self - 2).nsw
    end
  end
  memoize(:nsw)
  
  def nsw?
    x = self**2 + 1
    x.divides?(2) and (x/2).square?
  end
end
