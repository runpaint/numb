# coding: utf-8
class Integer
  def knuth
    return 1 if zero?
    n = self - 1
    1 + [2 * (n/2).knuth, 3 * (n/3).knuth].min
  end

  def knuth?
    in_sequence?(range: downto(0), seq: :knuth, cond: :>)
  end
end
