# coding: utf-8
class Integer

  def μ
    case
      when (self < 1)                 then nil
      when (square_free? and ω.even?) then 1
      when (square_free? and ω.odd?)  then -1
      when (not square_free?)         then 0
    end
  end

  alias :möbius :μ
  alias :mobius :μ
end
