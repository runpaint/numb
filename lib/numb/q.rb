# coding: utf-8
class Integer
  def q
    return 1 if (n = self) <= 2
    (n - (n - 1).q).q + (n - (n - 2).q).q
  end

  memoize :q

  def q?
    (1..(self ** 2)).any?{|n| n.q == self} or nil
  end
end
