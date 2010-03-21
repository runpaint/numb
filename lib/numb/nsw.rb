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
    m = self
    (rhs = (m**2).succ).divides?(2) and 2 * ((rhs/2).isqrt**2) == rhs
  end
end
