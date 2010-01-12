# coding: utf-8
class Integer
  def knödel?(k)
    n = self
    return false unless n > k and composite?
    exp = n - k + 1
    (1...n).select{|j| j.coprime?(n)}.all? do |j|
      (j**exp - j).remainder(n).zero?
    end
  end
  alias :knodel? :knödel?
end
