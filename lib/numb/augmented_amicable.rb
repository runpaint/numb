# coding: utf-8
class Integer
  def augmented_amicable?(n)
    m = self
    [m.σ, n.σ].all?{|sigma| sigma == m + n - 1}
  end
end
