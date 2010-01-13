# coding: utf-8
class Integer
  def k_perfect?(k)
    σ == k * self
  end

  alias :multiply_perfect? :k_perfect?
end
